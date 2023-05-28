export module ATR.Offset.Bool;

import ATR.Offset.Member;

import Meta.Bit.Index;
import Meta.Bit.Reference;
import Meta.Memory.Size.Cast;
import Meta.Memory.Size.PointerArithmetic;
import Meta.Memory.Size;

import Std;

using ::Meta::Bit::Reference;
using ::Meta::BitSize;
using ::Meta::ByteIndex;

export namespace
	ATR::Offset
{
	template
		<	BitSize
				t_vOffset
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	::std::byte
			(&	i_rObject
			)	[]
		,	Member
			<	t_vOffset
			,	bool
			>
		)
		noexcept
	->	decltype(auto)
	{
		auto constexpr
			vByteOffset
		=	IndexCast<ByteIndex>
			(	t_vOffset
			)
		;
		return
		Reference
		<	bool
		,	vByteOffset
			.	Remainder
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
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	::std::byte const
			(&	i_rObject
			)	[]
		,	Member
			<	t_vOffset
			,	bool const
			>
		)
		noexcept
	->	bool
	{	auto constexpr
			vByteOffset
		=	IndexCast<ByteIndex>
			(	t_vOffset
			)
		;
		return
			Reference
			<	bool const
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
