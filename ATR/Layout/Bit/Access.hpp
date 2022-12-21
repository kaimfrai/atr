export module ATR:Layout.Bit.Access;

import :Layout.Bit.Types;

import Meta.Size;
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
	template
		<	ESize
				t_nSize
		,	EOffset
				t_nMaxOffset
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
		=	BitFieldBufferSize
			(	t_nSize
			,	t_nMaxOffset
			)
		;

		static_assert
		(	BufferByteSize
		<=	sizeof(USize)
		,	"Bit Buffers greater than USize not yet supported!"
		);

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

		static auto constexpr
		(	BitOffset
		)	(	BufferFieldType
					i_nMask
			)
		->	BufferFieldType
		{
			if	constexpr
				(	t_nSize
				==	ESize{1}
				)
			{
				return 0uz;
			}
			else
			{
				if	(i_nMask == 0)
					::std::unreachable();

				return static_cast<BufferFieldType>(::std::countr_zero(i_nMask));
			}
		}

		static auto constexpr
		(	RealBufferSize
		)	(	BufferFieldType
					i_nMask
			)
		->	USize
		{	return
			BitFieldBufferSize
			(	t_nSize
			,	static_cast<EOffset>(BitOffset(i_nMask))
			);
		}

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
				,	RealBufferSize(i_nMask)
				)
			;

			vBufferField &= i_nMask;
			vBufferField >>= BitOffset(i_nMask);

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
					,	RealBufferSize(i_nMask)
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
					<<	BitOffset(i_nMask)
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
			,	RealBufferSize(i_nMask)
			);
		}
	};
}
