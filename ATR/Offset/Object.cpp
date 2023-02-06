export module ATR.Offset.Object;

import ATR.Offset.Member;
import ATR.Erase;

import Meta.Memory.Size;
import Meta.Memory.Size.PointerArithmetic;

import Std;

using ::Meta::BitSize;

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
			*	i_aObject
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
			(	i_aObject
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
			*	i_aObject
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
			(	i_aObject
			+	t_nOffset
			)
		);
	}
}
