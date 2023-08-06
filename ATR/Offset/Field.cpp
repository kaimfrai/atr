export module ATR.Offset.Field;

import ATR.Offset.Member;

import Meta.Bit.Field;
import Meta.Bit.Index;
import Meta.Bit.Reference;
import Meta.Memory.Size.Cast;
import Meta.Memory.Size.PointerArithmetic;
import Meta.Memory.Size;

import Std;

using ::Meta::Bit::Field;
using ::Meta::Bit::Reference;
using ::Meta::BitSize;
using ::Meta::ByteIndex;

export namespace
	ATR::Offset
{
	template
		<	BitSize
				t_vOffset
		,	BitSize
				t_vWidth
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator->*
	)	(	::std::byte
			(&	i_rObject
			)	[]
		,	Member
			<	t_vOffset
			,	Field<t_vWidth>
			>
		)
		noexcept
	->	decltype(auto)
	{
		auto static constexpr
			vByteOffset
		=	IndexCast<ByteIndex>
			(	t_vOffset
			)
		;
		return
		Reference
		<	Field<t_vWidth>
		,	vByteOffset.Remainder
		>{	::std::launder
			(	i_rObject
			+	vByteOffset
				.	Quotient
			)
		};
	}

	template
		<	BitSize
				t_vOffset
		,	BitSize
				t_vWidth
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator->*
	)	(	::std::byte const
			(&	i_rObject
			)	[]
		,	Member
			<	t_vOffset
			,	Field<t_vWidth>
			>
		)
		noexcept
	->	decltype(auto)
	{
		auto static constexpr
			vByteOffset
		=	IndexCast<ByteIndex>
			(	t_vOffset
			)
		;
		return
			Reference
			<	Field<t_vWidth> const
			,	vByteOffset
				.	Remainder
			>
		::	Read
			(	i_rObject
			+	vByteOffset
				.	Quotient
			)
		;
	}
}
