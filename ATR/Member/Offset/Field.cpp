export module ATR.Offset.Field;

import ATR.Offset.Member;

import Meta.Memory.Size;
import Meta.Memory.Size.Cast;
import Meta.Memory.Size.PointerArithmetic;
import Meta.Bit.Index;
import Meta.Bit.Reference;
import Meta.Bit.Field;

import Std;

using ::Meta::Bit::Reference;
using ::Meta::Bit::Field;
using ::Meta::BitSize;
using ::Meta::ByteIndex;

export namespace
	ATR::Offset
{
	template
		<	BitSize
				t_nOffset
		,	BitSize
				t_nWidth
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	::std::byte
			*	i_aObject
		,	Member
			<	t_nOffset
			,	Field<t_nWidth>
			>
		)
		noexcept
	->	decltype(auto)
	{
		auto constexpr
			vByteOffset
		=	IndexCast<ByteIndex>
			(	t_nOffset
			)
		;
		return
		Reference
		<	t_nWidth
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
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	::std::byte const
			*	i_aObject
		,	Member
			<	t_nOffset
			,	Field<t_nWidth> const
			>
		)
		noexcept
	->	decltype(auto)
	{	auto constexpr
			vByteOffset
		=	IndexCast<ByteIndex>
			(	t_nOffset
			)
		;
		return
			Reference
			<	t_nWidth
			,	vByteOffset.Remainder
			>
		::	Read
			(	i_aObject
			+	vByteOffset.Quotient
			)
		;
	}
}
