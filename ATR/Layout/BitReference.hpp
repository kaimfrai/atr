export module ATR:Layout.BitReference;

import Meta.Arithmetic;

import Std;

using ::Meta::Arithmetic::ReadFromBytes;
using ::Meta::Arithmetic::WriteToBytes;
using ::Meta::BitsPerByte;
using ::Meta::UInt;
using ::Meta::USize;

static_assert
(	::std::endian::native
==	::std::endian::little
,	"Big Endian not yet supported!"
);

export namespace
	ATR
{
	template
		<	USize
				t_nOffset
		,	USize
				t_nSize
		>
	struct
		BitReference final
	{
		static_assert
		(	t_nOffset
		<	BitsPerByte
		,	"BitReference not properly aligned! Expected offset below Bits per Byte!"
		);

		static_assert
		(	t_nSize
		>	0uz
		,	"BitReference cannot reference a bit field of length 0!"
		);

		static_assert
		(	requires
			{	typename
				::Meta::UInt
				<	t_nSize
				>;
			}
		,	"Exceeded supported amount of bits per bitfield!"
		);

		::std::byte
		*	m_aUnderlyingArray
		;

		static auto constexpr
			BufferByteSize
		=	(	t_nOffset
			+	t_nSize
			+	(BitsPerByte - 1uz)
			)
		/	BitsPerByte
		;

		static auto constexpr
			LowerBitCount
		=	::std::min(BufferByteSize, sizeof(USize))
		*	BitsPerByte
		;

		using LowerFieldType = UInt<LowerBitCount>;

		static auto constexpr
			UpperBitCount
		=	(	t_nOffset + t_nSize
			>	LowerBitCount
			)
		?	(	t_nOffset + t_nSize
			-	LowerBitCount
			)
		:	0uz
		;

		using UpperFieldType = UInt<UpperBitCount>;

		static auto constexpr
			LowerBitMask
		=	static_cast
			<	LowerFieldType
			>(	(	(1uz << t_nSize)
				-	1uz
				)
			<<	t_nOffset
			)
		;

		static auto constexpr
			UpperBitMask
		=	static_cast
			<	UpperFieldType
			>(	(1uz << UpperBitCount)
			-	1uz
			)
		;

		static auto constexpr
		(	ReadField
		)	(	::std::byte const
				*	i_aBuffer
			)
		->	decltype(auto)
		{
			auto
				vLowerField
			=	ReadFromBytes
				<	LowerFieldType
				,	LowerBitCount / BitsPerByte
				>(	i_aBuffer
				)
			;

			vLowerField &= LowerBitMask;
			vLowerField >>= t_nOffset;

			if	constexpr
				(	UpperBitCount
				>	0uz
				)
			{
				auto
					vUpperField
				=	static_cast<UInt<t_nSize>>
					(	ReadFromBytes
						<	UpperFieldType
						,	UpperBitCount / BitsPerByte
						>
						(	i_aBuffer + sizeof(LowerFieldType)
						)
					bitand
						UpperBitMask
					)
				;
				vUpperField <<= t_nSize - UpperBitCount;
				return
					static_cast<UInt<t_nSize>>(vLowerField)
				bitor
					vUpperField
				;
			}
			else
			if	constexpr
				(	t_nSize
				==	1uz
				)
				return static_cast<bool>(vLowerField);
			else
				return static_cast<UInt<t_nSize>>(vLowerField);
		}

		using FieldType = decltype(ReadField(nullptr));

		static auto constexpr
		(	WriteField
		)	(	FieldType
					i_vValue
			,	::std::byte
				*	i_aBuffer
			)
		->	void
		{
			auto
				vLowerField
			=	ReadFromBytes
				<	LowerFieldType
				,	LowerBitCount / BitsPerByte
				>(	i_aBuffer
				)
			;

			(	vLowerField
			&=	static_cast<LowerFieldType>(compl LowerBitMask)
			);

			(	vLowerField
			|=	(	i_vValue
				<<	t_nOffset
				)
			bitand
				LowerBitMask
			);

			WriteToBytes
			<	LowerFieldType
			,	LowerBitCount / BitsPerByte
			>(	vLowerField
			,	i_aBuffer
			);

			if	constexpr
				(	UpperBitCount
				>	0uz
				)
			{
				auto
					vUpperField
				=	ReadFromBytes
					<	UpperFieldType
					,	UpperBitCount / BitsPerByte
					>
					(	i_aBuffer
					)
				;
				vUpperField &= static_cast<UpperFieldType>(compl UpperBitMask);

				(	vUpperField
				|=	(	i_vValue
					>>	(t_nSize - UpperBitCount)
					)
				bitand
					UpperBitMask
				);

				WriteToBytes
				<	UpperFieldType
				,	UpperBitCount / BitsPerByte
				>(	vUpperField
				,	i_aBuffer + sizeof(LowerFieldType)
				);
			}
		}

		[[nodiscard]]
		explicit(false) constexpr
		(	operator FieldType
		)	()	const
		{	return
			ReadField
			(	m_aUnderlyingArray
			);
		}

		auto constexpr
		(	operator =
		)	(	FieldType
					i_vValue
			)	&
		->	BitReference&
		{
			WriteField(i_vValue, m_aUnderlyingArray);
			return *this;
		}

		auto constexpr
		(	operator =
		)	(	FieldType
					i_vValue
			)	&&
		->	BitReference&&
		{
			return
			::std::move
			(	*this
			=	i_vValue
			);
		}
	};
}
