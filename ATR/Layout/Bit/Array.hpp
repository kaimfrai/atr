export module ATR:Layout.Bit.Array;

import :Layout.Bit.Access;
import :Layout.Bit.ElementReference;
import :Layout.Bit.Iterator;
import :Layout.Bit.Types;

import Meta.Arithmetic;
import Meta.Token;

import Std;

using ::Meta::IndexToken;
using ::Meta::Sequence;
using ::Meta::USize;

export namespace
	ATR::Bit
{
	template
		<	typename
				t_tArray
		>
	auto constexpr
	(	IteratorAt
	)	(	t_tArray
			&&	i_rArray
		,	USize
				i_nIndex
		)
	->	std::remove_reference_t<t_tArray>::iterator
	{
		using Array = std::remove_reference_t<t_tArray>;
		if	(i_nIndex > Array::Extent)
			::std::unreachable();

		auto const
			vTotalOffset
		=	i_nIndex
		*	static_cast<USize>(Array::Size)
		+	static_cast<USize>(Array::Offset)
		;

		auto const
			vByteOffset
		=	vTotalOffset
		/	BitsPerByte
		;

		auto const
			vBitOffset
		=	vTotalOffset
		%	BitsPerByte
		;

		return
		typename Array::iterator
		{	i_rArray.m_aUnderlyingArray + vByteOffset
		,	static_cast<Array::MaskType>(Array::ZeroOffsetMask << vBitOffset)
		};
	}

	template
		<	typename
				t_tArray
		,	ESize
				t_nSize
		,	USize
				t_nExtent
		,	EOffset
				t_nOffset
		>
	struct
		Array
	{
		static auto constexpr Size = t_nSize;
		static auto constexpr Extent = t_nExtent;
		static auto constexpr Offset = t_nOffset;

		static_assert
		(	t_nSize
		>	ESize{}
		,	"Cannot form a reference to BitFields of length 0!"
		);

		static_assert
		(	static_cast<USize>(t_nOffset)
		<	BitsPerByte
		,	"Bit::ArrayReference not properly aligned! Expected maximum offset below Bits per Byte!"
		);

		static auto constexpr
			BitCount
		=	static_cast<USize>(t_nSize)
		*	t_nExtent
		;

		static auto constexpr
			BufferSize
		=	BitFieldBufferSize
			(	t_nSize
			,	t_nOffset
			,	t_nExtent
			)
		;

		static EOffset constexpr
			MaximumOffset
		{	[]	<	USize
					...	t_npIndex
				>(	IndexToken<t_npIndex...>
				)
			{	return
				::std::max
				({	(	(	static_cast<USize>(t_nSize)
						*	t_npIndex
						+	static_cast<USize>(t_nOffset)
						)
					%	BitsPerByte
					)
					...
				});
			}(	// include offset of one-past-the-end for end() iterator value
				Sequence<t_nExtent + 1uz>
			)
		};
		using BitAccess = Access<t_nSize, MaximumOffset>;
		using MaskType = typename BitAccess::BufferFieldType;

		static auto constexpr
			ZeroOffsetMask
		=	SetOneBits
			(	static_cast<USize>(t_nSize)
			)
		;

		t_tArray
			m_aUnderlyingArray
		;

		using reference = ElementReference<::std::remove_pointer_t<decltype(+m_aUnderlyingArray)>, t_nSize, MaximumOffset>;
		using difference_type = SSize;
		using value_type = typename BitAccess::FieldType;
		using iterator = Iterator<::std::remove_pointer_t<decltype(+m_aUnderlyingArray)>, t_nSize, MaximumOffset>;

		auto constexpr
		(	operator[]
		)	(	USize
					i_nIndex
			)	&
		->	reference
		{	return *IteratorAt(*this, i_nIndex);	}

		auto constexpr
		(	operator[]
		)	(	USize
					i_nIndex
			)	const&
		->	value_type
		{	return *IteratorAt(*this, i_nIndex);	}

		auto constexpr
		(	operator[]
		)	(	USize
					i_nIndex
			)	&&
		->	value_type
		{	return *IteratorAt(::std::move(*this), i_nIndex);	}

		template
			<	typename
					t_tTarget
			>
		auto constexpr
		(	CastTo
		)	()	const
		->	t_tTarget
			requires
			(	BufferSize
			<=	sizeof(t_tTarget)
			)
		{
			auto const
				vField
			=	ReadFromBytes
				<	t_tTarget
				,	BufferSize
				>(	m_aUnderlyingArray
				)
			;
			return
			static_cast<t_tTarget>
			(	(	vField
				>>	static_cast<t_tTarget>(t_nOffset)
				)
			bitand
				static_cast<t_tTarget>
				(	SetOneBits(BitCount)
				)
			);
		}

		auto constexpr
		(	all
		)	()	const
		->	bool
			requires requires
			{
				typename UInt<BitCount>;
			}
		{
			using tField = UInt<BitCount>;
			auto const
				vField
			=	CastTo<tField>()
			;
			return vField == SetOneBits(BitCount);
		}

		auto constexpr
		(	any
		)	()	const
		->	bool
			requires requires
			{
				typename UInt<BitCount>;
			}
		{
			using tField = UInt<BitCount>;
			auto const
				vField
			=	CastTo<tField>()
			;
			return vField != tField{};
		}

		auto constexpr
		(	none
		)	()	const
		->	bool
			requires requires
			{
				typename UInt<BitCount>;
			}
		{
			using tField = UInt<BitCount>;
			auto const
				vField
			=	CastTo<tField>()
			;
			return vField == tField{};
		}
	};

	template
		<	ESize
				t_nSize
		,	USize
				t_nExtent
		,	EOffset
				t_nOffset
			=	EOffset{0}
		>
	struct
		ArrayReference
	:	Array
		<	::std::byte* const
		,	t_nSize
		,	t_nExtent
		,	t_nOffset
		>
	{
		friend auto constexpr
		(	begin
		)	(	ArrayReference
					i_vArray
			)
		->	decltype(auto)
		{	return IteratorAt(i_vArray, 0z);	}

		friend auto constexpr
		(	end
		)	(	ArrayReference
					i_vArray
			)
		->	decltype(auto)
		{	return IteratorAt(i_vArray, t_nExtent);	}
	};

	template
		<	ESize
				t_nSize
		,	USize
				t_nExtent
		,	EOffset
				t_nOffset
			=	EOffset{0}
		>
	struct
		ArrayConstReference
	:	Array
		<	::std::byte const* const
		,	t_nSize
		,	t_nExtent
		,	t_nOffset
		>
	{
		friend auto constexpr
		(	begin
		)	(	ArrayConstReference
					i_vArray
			)
		->	decltype(auto)
		{	return IteratorAt(i_vArray, 0z);	}

		friend auto constexpr
		(	end
		)	(	ArrayConstReference
					i_vArray
			)
		->	decltype(auto)
		{	return IteratorAt(i_vArray, t_nExtent);	}
	};

	template
		<	ESize
				t_nSize
		,	USize
				t_nExtent
		>
	struct
		ArrayValue
	:	Array
		<	BitFieldBuffer
			<	t_nSize
			,	EOffset{0}
			,	t_nExtent
			>
		,	t_nSize
		,	t_nExtent
		,	EOffset{0}
		>
	{
		friend auto constexpr
		(	begin
		)	(	ArrayValue
				&	i_rArray
			)
		->	decltype(auto)
		{	return IteratorAt(i_rArray, 0z);	}

		friend auto constexpr
		(	end
		)	(	ArrayValue
				&	i_rArray
			)
		->	decltype(auto)
		{	return IteratorAt(i_rArray, t_nExtent);	}
	};

	template
		<	ESize
				t_nSize
		,	USize
				t_nExtent
		,	EOffset
				t_nOffset
		>
	auto constexpr
	(	CopyArray
	)	(	::std::byte const
			*	i_aBuffer
		)
	->	ArrayValue<t_nSize, t_nExtent>
	{
		// optimization using bit shift of an integer type
		if	constexpr
			(	auto constexpr
				nBufferSize
			=	BitFieldBufferSize
				(	t_nSize
				,	t_nOffset
				,	t_nExtent
				)
			;	requires
				{	typename
					UInt
					<	nBufferSize
					*	BitsPerByte
					>;

				}
			)
		{
			auto const
				nInteger
			=	Access
				<	ESize{static_cast<USize>(t_nSize) * t_nExtent}
				,	t_nOffset
				>
			::	ReadField
				(	i_aBuffer
				)
			;
			auto const
				vAsBytes
			=	::std::bit_cast<Meta::Arithmetic::ByteArray<decltype(nInteger)>>
				(	nInteger
				)
			;

			return
			ReadFromBytes
			<	ArrayValue<t_nSize, t_nExtent>
			>(	begin(vAsBytes)
			);
		}
		else
		{
			ArrayConstReference
			<	t_nSize
			,	t_nExtent
			,	t_nOffset
			>	const
				rReference
			{	i_aBuffer
			};
			ArrayValue<t_nSize, t_nExtent>
				vResult
			{};
			::std::copy
			(	begin(rReference)
			,	end(rReference)
			,	begin(vResult)
			);
			return
				vResult
			;
		}
	}
}
