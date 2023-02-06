export module ATR.Offset.FieldArray;

import ATR.Offset.Member;

import Meta.Memory.Size;
import Meta.Memory.Size.Cast;
import Meta.Memory.Size.PointerArithmetic;
import Meta.Bit.Array;
import Meta.Bit.Field;
import Meta.Size;

import Std;

using ::Meta::Bit::ArrayReference;
using ::Meta::Bit::ArrayConstReference;
using ::Meta::Bit::Field;
using ::Meta::BitSize;
using ::Meta::ByteSize;
using ::Meta::USize;

export namespace
	ATR::Offset
{
	template
		<	BitSize
				t_nOffset
		,	BitSize
				t_nWidth
		,	USize
				t_nExtent
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	::std::byte
			*	i_aObject
		,	Member
			<	t_nOffset
			,	Field<t_nWidth>
					[	t_nExtent
					]
			>
		)
		noexcept
	->	decltype(auto)
	{
		auto constexpr
			vByteOffset
		=	SizeCast<ByteSize>
			(	t_nOffset
			)
		;
		return
		ArrayReference
		<	t_nWidth
		,	t_nExtent
		,	vByteOffset.Remainder
		>{	::std::launder
			(	i_aObject
			+	vByteOffset.Quotient
			)
		};
	}

	template
		<	BitSize
				t_nOffset
		,	BitSize
				t_nWidth
		,	USize
				t_nExtent
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	::std::byte const
			*	i_aObject
		,	Member
			<	t_nOffset
			,	Field<t_nWidth> const
					[	t_nExtent
					]
			>
		)
		noexcept
	->	decltype(auto)
	{
		auto constexpr
			vByteOffset
		=	SizeCast<ByteSize>
			(	t_nOffset
			)
		;
		return
		CopyArray
		(	ArrayConstReference
			<	t_nWidth
			,	t_nExtent
			,	vByteOffset.Remainder
			>{	i_aObject
			+	vByteOffset.Quotient
			}
		);
	}
}
