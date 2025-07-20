export module Meta.Bit.Access;

import Meta.Byte.OutSpan;
import Meta.Memory.Size;
import Meta.Memory.Size.Compare;
import Meta.Memory.Size.Arithmetic;
import Meta.Arithmetic.Integer;
import Meta.Bit.Field;
import Meta.Bit.Field.Arithmetic;
import Meta.Bit.Field.LowestOne;
import Meta.Bit.Field.Shift;
import Meta.Byte.InSpan;
import Meta.Byte.Buffer;
import Meta.Bit.Index;

import std;

export namespace
	Meta::Bit
{
	template
		<	BitSize
				t_vSize
		,	ByteIndex
				t_vMaxOffset
		>
	struct
		Access final
	{
		using
			FieldType
		=	Field
			<	t_vSize
			>
		;

		ByteSize static constexpr inline
			BufferByteSize
		=	t_vSize
		+	t_vMaxOffset
		;

		static_assert
		(	BufferByteSize
		<=	Memory::SizeOf<UIntMax>
		,	"Bit Buffers greater than UIntMax not yet supported!"
		);

		using
			BufferFieldType
		=	Field
			<	BufferByteSize
			>
		;

		using
			OffsetType
		=	Index
			<	BufferByteSize
			-	t_vSize
			+	1_bit
			>
		;

		[[nodiscard]]
		auto static constexpr inline
		(	OffsetMask
		)	(	ByteIndex
					i_vOffset
			)
			noexcept
		->	BufferFieldType
		{	return
				compl
				FieldType
				{}
			<<	static_cast<OffsetType>
				(	i_vOffset
				)
			;
		}

		[[nodiscard]]
		auto static constexpr inline
		(	MaskOffset
		)	(	BufferFieldType
					i_vMask
			)
			noexcept
		->	OffsetType
		{	return
			static_cast<OffsetType>
			(	IndexLowestOne
				(	i_vMask
				)
			);
		}

	private:
		[[nodiscard]]
		auto static constexpr inline
		(	ReadField
		)	(	::std::byte const
				*	i_aBuffer
			,	OffsetType
					i_vOffset
			,	BufferFieldType
					i_vMask
			)
			noexcept
		->	FieldType
		{
			auto
				vBufferField
			{	ReadObject<BufferFieldType>
				(	Byte::InSpan
					{	i_aBuffer
					,	t_vSize
					+	i_vOffset
					}
				)
			};

			vBufferField &= i_vMask;
			vBufferField >>= i_vOffset;

			return
			static_cast<FieldType>
			(	vBufferField
			);
		}

	public:
		[[nodiscard]]
		auto static constexpr inline
		(	ReadField
		)	(	::std::byte const
				*	i_aBuffer
			,	ByteIndex
					i_vOffset
			)
			noexcept
		->	FieldType
		{	return
			ReadField
			(	i_aBuffer
			,	static_cast<OffsetType>(i_vOffset)
			,	OffsetMask(i_vOffset)
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	ReadField
		)	(	::std::byte const
				*	i_aBuffer
			,	BufferFieldType
					i_vMask
			)
			noexcept
		->	FieldType
		{	return
			ReadField
			(	i_aBuffer
			,	MaskOffset
				(	i_vMask
				)
			,	i_vMask
			);
		}

	private:
		auto static constexpr inline
		(	WriteField
		)	(	FieldType
					i_vValue
			,	::std::byte
				*	i_aBuffer
			,	OffsetType
					i_vOffset
			,	BufferFieldType
					i_vMask
			)
			noexcept
		->	void
		{
			Byte::OutSpan
				vBuffer
			{	i_aBuffer
			,	t_vSize
			+	i_vOffset
			};

			auto const
				vBufferField
			=	ReadObject<BufferFieldType>
				(	Byte::InSpan
					{	vBuffer
					}
				)
			bitand
				compl
				i_vMask
			;

			auto const
				vSetMask
			=	i_vValue
			<<	i_vOffset
			;

			(	vBuffer
			=	Byte::Buffer
				{	vBufferField
				bitor
					vSetMask
				}
			);
		}

	public:
		auto static constexpr inline
		(	WriteField
		)	(	FieldType
					i_vValue
			,	::std::byte
				*	i_aBuffer
			,	ByteIndex
					i_vOffset
			)
			noexcept
		->	void
		{	return
			WriteField
			(	i_vValue
			,	i_aBuffer
			,	static_cast<OffsetType>
				(	i_vOffset
				)
			,	OffsetMask
				(	i_vOffset
				)
			);
		}

		auto static constexpr inline
		(	WriteField
		)	(	FieldType
					i_vValue
			,	::std::byte
				*	i_aBuffer
			,	BufferFieldType
					i_vMask
			)
			noexcept
		->	void
		{	return
			WriteField
			(	i_vValue
			,	i_aBuffer
			,	MaskOffset
				(	i_vMask
				)
			,	i_vMask
			);
		}
	};
}
