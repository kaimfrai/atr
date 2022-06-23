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
			,	EOffset
					i_nOffset
				=	t_nMaxOffset
			)
		->	FieldType
		{
			auto
				vBufferField
			=	ReadFromBytes
				<	BufferFieldType
				,	BufferByteSize
				>(	i_aBuffer
				)
			;

			vBufferField >>= static_cast<BufferFieldType>(i_nOffset);
			vBufferField &= BitFieldMask;

			return CastToField(vBufferField);
		}

		static auto constexpr
		(	WriteField
		)	(	FieldType
					i_vValue
			,	::std::byte
				*	i_aBuffer
			,	EOffset
					i_nOffset
				=	t_nMaxOffset
			)
		->	void
		{
			auto
				vBufferField
			=	// safe offset bits at the back
				::std::rotr
				(	ReadFromBytes
					<	BufferFieldType
					,	BufferByteSize
					>(	i_aBuffer
					)
				,	::std::to_underlying(i_nOffset)
				)
			;

			(	vBufferField
			&=	static_cast<BufferFieldType>(compl BitFieldMask)
			);

			(	vBufferField
			|=	i_vValue
			bitand
				BitFieldMask
			);

			WriteToBytes
			<	BufferFieldType
			,	BufferByteSize
			>(	// bring offset bits back to the front
				::std::rotl
				(	vBufferField
				,	::std::to_underlying(i_nOffset)
				)
			,	i_aBuffer
			);
		}
	};
}
