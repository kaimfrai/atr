export module ATR.Layout.Bit.Access;

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

import Std;

using namespace ::Meta::Literals;

export namespace
	ATR::Bit
{
	template
		<	::Meta::BitSize
				t_nSize
		,	::Meta::Bit::Index<1_byte>
				t_nMaxOffset
		>
	struct
		Access final
	{
		using
			FieldType
		=	::Meta::Bit::Field
			<	t_nSize
			>
		;

		static ::Meta::ByteSize constexpr
			BufferByteSize
		=	t_nSize
		+	t_nMaxOffset
		;

		static_assert
		(	BufferByteSize
		<=	::Meta::Memory::SizeOf<::Meta::UIntMax>
		,	"Bit Buffers greater than UIntMax not yet supported!"
		);

		using
			BufferFieldType
		=	::Meta::Bit::Field
			<	BufferByteSize
			>
		;

		using
			OffsetType
		=	::Meta::Bit::Index
			<	BufferByteSize
			-	t_nSize
			+	1_bit
			>
		;

		[[nodiscard]]
		static auto constexpr
		(	OffsetMask
		)	(	::Meta::Bit::Index<1_byte>
					i_nOffset
			)
			noexcept
		->	BufferFieldType
		{	return
				compl
				FieldType
				{}
			<<	static_cast<OffsetType>
				(	i_nOffset
				)
			;
		}

		[[nodiscard]]
		static auto constexpr
		(	MaskOffset
		)	(	BufferFieldType
					i_nMask
			)
			noexcept
		->	OffsetType
		{	return
			static_cast<OffsetType>
			(	IndexLowestOne
				(	i_nMask
				)
			);
		}

	private:
		[[nodiscard]]
		static auto constexpr
		(	ReadField
		)	(	::std::byte const
				*	i_aBuffer
			,	OffsetType
					i_nOffset
			,	BufferFieldType
					i_nMask
			)
			noexcept
		->	FieldType
		{
			auto
				vBufferField
			{	ReadObject<BufferFieldType>
				(	Meta::Byte::InSpan
					{	i_aBuffer
					,	t_nSize
					+	i_nOffset
					}
				)
			};

			vBufferField &= i_nMask;
			vBufferField >>= i_nOffset;

			return
			static_cast<FieldType>
			(	vBufferField
			);
		}

	public:
		[[nodiscard]]
		static auto constexpr
		(	ReadField
		)	(	::std::byte const
				*	i_aBuffer
			,	::Meta::Bit::Index<1_byte>
					i_nOffset
			)
			noexcept
		->	FieldType
		{	return
			ReadField
			(	i_aBuffer
			,	static_cast<OffsetType>(i_nOffset)
			,	OffsetMask(i_nOffset)
			);
		}

		[[nodiscard]]
		static auto constexpr
		(	ReadField
		)	(	::std::byte const
				*	i_aBuffer
			,	BufferFieldType
					i_nMask
			)
			noexcept
		->	FieldType
		{	return
			ReadField
			(	i_aBuffer
			,	MaskOffset
				(	i_nMask
				)
			,	i_nMask
			);
		}

	private:
		static auto constexpr
		(	WriteField
		)	(	FieldType
					i_vValue
			,	::std::byte
				*	i_aBuffer
			,	OffsetType
					i_nOffset
			,	BufferFieldType
					i_nMask
			)
			noexcept
		->	void
		{
			::Meta::Byte::OutSpan
				vBuffer
			{	i_aBuffer
			,	t_nSize
			+	i_nOffset
			};

			auto const
				vBufferField
			=	ReadObject<BufferFieldType>
				(	::Meta::Byte::InSpan
					{	vBuffer
					}
				)
			bitand
				compl
				i_nMask
			;

			auto const
				vSetMask
			=	i_vValue
			<<	i_nOffset
			;

			(	vBuffer
			=	::Meta::Byte::Buffer
				{	vBufferField
				bitor
					vSetMask
				}
			);
		}

	public:
		static auto constexpr
		(	WriteField
		)	(	FieldType
					i_vValue
			,	::std::byte
				*	i_aBuffer
			,	::Meta::Bit::Index<1_byte>
					i_nOffset
			)
			noexcept
		->	void
		{	return
			WriteField
			(	i_vValue
			,	i_aBuffer
			,	static_cast<OffsetType>
				(	i_nOffset
				)
			,	OffsetMask
				(	i_nOffset
				)
			);
		}

		static auto constexpr
		(	WriteField
		)	(	FieldType
					i_vValue
			,	::std::byte
				*	i_aBuffer
			,	BufferFieldType
					i_nMask
			)
			noexcept
		->	void
		{	return
			WriteField
			(	i_vValue
			,	i_aBuffer
			,	MaskOffset
				(	i_nMask
				)
			,	i_nMask
			);
		}
	};
}