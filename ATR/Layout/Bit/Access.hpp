export module ATR:Layout.Bit.Access;

import :Layout.Bit.Types;

import Meta.Size;
import Meta.Byte.ReadBuffer;
import Meta.Byte.WriteBuffer;
import Meta.Bit.ByteSize;
import Meta.Bit.SetOnes;
import Meta.Bit.Count;
import Meta.Arithmetic.Integer;
import Meta.Byte.Count;

import Std;

using ::Meta::UInt;
using ::Meta::UIntMax;
using ::Meta::USize;
using ::Meta::Bits;
using ::Meta::Bytes;
using ::Meta::Byte::SizeOf;

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
		<	::Meta::Bit::ByteSize.get()
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
		<=	SizeOf<USize>
		,	"Bit Buffers greater than USize not yet supported!"
		);

		static Bits constexpr
			BufferBitSize
		=	BufferByteSize
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
			>(	Meta::Bit::SetOnes(Meta::Bits{static_cast<USize>(t_nSize)}).Value
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
				<	UInt<Bits{static_cast<USize>(t_nSize)}>
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
		->	Bytes
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

			BufferFieldType
				vBufferField
			=	::Meta::Byte::ReadBuffer
				<	::Meta::Byte::SizeOf<BufferFieldType>
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
				(	static_cast<BufferFieldType>
					(	::Meta::Byte::ReadBuffer
						<	::Meta::Byte::SizeOf<BufferFieldType>
						,	BufferByteSize
						>(	i_aBuffer
						,	RealBufferSize(i_nMask)
						)
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

			::Meta::Byte::WriteBuffer
			<	::Meta::Byte::SizeOf<BufferFieldType>
			,	BufferByteSize
			>(	static_cast<BufferFieldType>
				(	vBufferField
				bitor
					vSetMask
				)
			,	i_aBuffer
			,	RealBufferSize(i_nMask)
			);
		}
	};
}
