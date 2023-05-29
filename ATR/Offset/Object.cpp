export module ATR.Offset.Object;

import ATR.Offset.Member;

import Meta.Memory.PointerCast;
import Meta.Memory.Size.PointerArithmetic;
import Meta.Memory.Size;
import Meta.Memory.Constraint;

import Std;

using ::Meta::BitSize;
using ::Meta::Memory::PointerCast;
using ::Meta::Memory::Constraint_Of;

using namespace ::Meta::Literals;

export namespace
	ATR::Offset
{
	template
		<	typename
				t_tData
		>
	requires
		(	not
			Constraint_Of
			<	t_tData
			>
			.	IsAligned
				()
		)
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	::std::byte const
			(&
			)	[]
		,	Member<0_bit, t_tData const>
		)
		noexcept
	->	t_tData
	{	return
			t_tData
			{}
		;
	}

	template
		<	BitSize
				t_vOffset
		,	typename
				t_tData
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	::std::byte
			(&	i_rObject
			)	[]
		,	Member<t_vOffset, t_tData>
		)
		noexcept
	->	t_tData&
	{	return
		*
		//	we don't know where the byte pointer came from
		//	so we need to launder it
		::std::launder
		(	PointerCast<t_tData>
			(	i_rObject
			+	t_vOffset
			)
		);
	}

	template
		<	BitSize
				t_vOffset
		,	typename
				t_tData
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	::std::byte const
			(&	i_rObject
			)	[]
		,	Member<t_vOffset, t_tData const>
		)
		noexcept
	->	t_tData const&
	{	return
		*
		//	we don't know where the byte pointer came from
		//	so we need to launder it
		::std::launder
		(	PointerCast<t_tData const>
			(	i_rObject
			+	t_vOffset
			)
		);
	}
}
