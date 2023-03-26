export module ATR.Offset.Object;

import ATR.Offset.Member;

import Meta.Memory.Size;
import Meta.Memory.Size.PointerArithmetic;
import Meta.Memory.PointerCast;

import Std;

using ::Meta::BitSize;
using ::Meta::Memory::PointerCast;

export namespace
	ATR::Offset
{
	template
		<	BitSize
				t_nOffset
		,	typename
				t_tData
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	::std::byte
			(&	i_rObject
			)	[]
		,	Member<t_nOffset, t_tData>
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
			+	t_nOffset
			)
		);
	}

	template
		<	BitSize
				t_nOffset
		,	typename
				t_tData
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	::std::byte const
			(&	i_rObject
			)	[]
		,	Member<t_nOffset, t_tData const>
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
			+	t_nOffset
			)
		);
	}
}
