export module ATR:Layout.Bit.Array;

import :Layout.Bit.Access;
import :Layout.Bit.ElementReference;
import :Layout.Bit.Iterator;
import :Layout.Bit.Types;

import Meta.Size;
import Meta.Token;
import Meta.Bit.ByteSize;
import Meta.Byte.Buffer;
import Meta.Bit.SetOnes;
import Meta.Bit.Count;

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
		/	::Meta::Bit::ByteSize.get()
		;

		auto const
			vBitOffset
		=	vTotalOffset
		%	::Meta::Bit::ByteSize.get()
		;

		return
		typename Array::iterator
		{	&i_rArray.m_aUnderlyingArray[0uz] + vByteOffset
		,	static_cast<Array::MaskType>(Array::ZeroOffsetMask.Value << vBitOffset)
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
		<	::Meta::Bit::ByteSize.get()
		,	"Bit::ArrayReference not properly aligned! Expected maximum offset below Bits per Byte!"
		);

		static Bits constexpr
			BitCount
		{	static_cast<USize>(t_nSize)
		*	t_nExtent
		};

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
		{	// include offset of one-past-the-end for end() iterator value
			Meta::InjectSequence<t_nExtent + 1uz>
			(	[]	(	USize
							i_nIndex
					)
				{	return
					(	(	static_cast<USize>(t_nSize)
						*	i_nIndex
						+	static_cast<USize>(t_nOffset)
						)
					%	::Meta::Bit::ByteSize.get()
					);
				}
			,	[]	(	auto
						...	i_nOffset
					)
				{	return
					::std::max
					({	i_nOffset
						...
					});
				}
			)
		};
		using BitAccess = Access<t_nSize, MaximumOffset>;
		using MaskType = typename BitAccess::BufferFieldType;

		static auto constexpr
			ZeroOffsetMask
		=	Meta::Bit::SetOnes
			(	Meta::Bits{static_cast<USize>(t_nSize)}
			)
		;

		t_tArray
			m_aUnderlyingArray
		;

		using reference = ElementReference<::std::remove_reference_t<decltype(m_aUnderlyingArray[0uz])>, t_nSize, MaximumOffset>;
		using difference_type = SSize;
		using value_type = typename BitAccess::FieldType;
		using iterator = Iterator<::std::remove_reference_t<decltype(m_aUnderlyingArray[0uz])>, t_nSize, MaximumOffset>;

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
			<=	SizeOf<t_tTarget>
			)
		{
			t_tTarget const
				vField
			=	::Meta::Byte::ReadBuffer
				<	SizeOf<t_tTarget>
				,	BufferSize
				>(	m_aUnderlyingArray.begin()
				)
			;
			return
			static_cast<t_tTarget>
			(	(	vField
				>>	static_cast<t_tTarget>(t_nOffset)
				)
			bitand
				static_cast<t_tTarget>
				(	Meta::Bit::SetOnes(BitCount).Value
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
			return vField == Meta::Bit::SetOnes(BitCount).Value;
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
			;	nBufferSize
			<=	SizeOf<UIntMax>
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
			=	::Meta::Byte::AsBuffer
				(	nInteger
				)
			;

			return
			::Meta::Byte::ReadBuffer
			<	::Meta::Bits{static_cast<USize>(t_nSize)} * t_nExtent
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
