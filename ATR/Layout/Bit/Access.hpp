export module ATR:Layout.Bit.Access;

import Meta.Arithmetic;

import Std;

using ::Meta::Arithmetic::ReadFromBytes;
using ::Meta::Arithmetic::WriteToBytes;
using ::Meta::Arithmetic::BitWidth;
using ::Meta::Arithmetic::SetOneBits;
using ::Meta::BitsPerByte;
using ::Meta::UInt;
using ::Meta::UIntMax;
using ::Meta::USize;

static_assert
(	::std::endian::native
==	::std::endian::little
,	"Big Endian not yet supported for Bit::Access!"
);

export namespace
	ATR::Bit
{
	enum class
		EOffset
	:	UInt
		<	BitWidth
			(	BitsPerByte
			-	1uz
			)
		>
	{};

	enum class
		ESize
	:	UInt
		<	BitWidth
			(	BitsPerByte
			*	sizeof(UIntMax)
			)
		>
	{};

	template
		<	ESize
				t_nSize
		,	EOffset
				t_nMaxOffset
			=	static_cast<EOffset>
				(	BitsPerByte
				-	1uz
				)
		>
	struct
		Access final
	{
		static_assert
		(	static_cast<USize>(t_nMaxOffset)
		<	BitsPerByte
		,	"Bit::Access not properly aligned! Expected maximum offset below Bits per Byte!"
		);

		static_assert
		(	static_cast<USize>(t_nSize)
		>	0uz
		,	"Bit::Access cannot access a bit field of length 0!"
		);

		static auto constexpr
			BufferByteSize
		=	(	static_cast<USize>(t_nMaxOffset)
			+	static_cast<USize>(t_nSize)
			+	(BitsPerByte - 1uz)
			)
		/	BitsPerByte
		;

		static auto constexpr
			BufferBitSize
		=	BufferByteSize
		*	BitsPerByte
		;

		static_assert
		(	requires
			{	typename
				::Meta::UInt
				<	BufferBitSize
				>;
			}
		,	"Exceeded supported amount of bits per bit buffer!"
		);

		using BufferFieldType = UInt<BufferBitSize>;

		static auto constexpr
			BitFieldMask
		=	static_cast
			<	BufferFieldType
			>(	SetOneBits(static_cast<USize>(t_nSize))
			)
		;

		[[nodiscard]]
		static auto constexpr
		(	CastToField
		)	(	BufferFieldType
					i_vBufferField
			)
		->	decltype(auto)
		{
			if	constexpr
				(	static_cast<USize>(t_nSize)
				==	1uz
				)
				return
				static_cast<bool>
				(	i_vBufferField
				);
			else
				return
				static_cast
				<	UInt<static_cast<USize>(t_nSize)>
				>(	i_vBufferField
				);
		}

		using FieldType = decltype(CastToField(0));

		[[nodiscard]]
		static auto constexpr
		(	ReadField
		)	(	::std::byte const
				*	i_aBuffer
			,	BufferFieldType
					i_nMask
				=	BitFieldMask
			)
		->	FieldType
		{
			if	(i_nMask == 0)
				::std::unreachable();

			auto
				vBufferField
			=	ReadFromBytes
				<	BufferFieldType
				,	BufferByteSize
				>(	i_aBuffer
				)
			;

			vBufferField &= i_nMask;

			if	constexpr
				(	t_nSize
				>	ESize{1}
				)
			{
				// not necessary for 1 bit as it is casted to bool
				vBufferField >>= ::std::countr_zero(i_nMask);
			}

			return CastToField(vBufferField);
		}

		static auto constexpr
		(	WriteField
		)	(	FieldType
					i_vValue
			,	::std::byte
				*	i_aBuffer
			,	BufferFieldType
					i_nMask
				=	BitFieldMask
			)
		->	void
		{
			if	(i_nMask == 0)
				::std::unreachable();

			auto const
				vBufferField
			=	static_cast<BufferFieldType>
				(	ReadFromBytes
					<	BufferFieldType
					,	BufferByteSize
					>(	i_aBuffer
					)
				bitand
					static_cast<BufferFieldType>
					(	compl i_nMask
					)
				)
			;

			auto const
				vSetMask
			{	(t_nSize == ESize{1})
			?	// optimization for bool
				static_cast<BufferFieldType>
				(	i_vValue * i_nMask
				)
			:	static_cast<BufferFieldType>
				(	static_cast<BufferFieldType>
					(	static_cast<BufferFieldType>(i_vValue)
					<<	::std::countr_zero(i_nMask)
					)
				bitand
					i_nMask
				)
			};

			WriteToBytes
			<	BufferFieldType
			,	BufferByteSize
			>(	vBufferField
			bitor
				vSetMask
			,	i_aBuffer
			);
		}
	};
}
