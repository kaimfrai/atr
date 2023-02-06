export module ATR.Offset.Mutable;

import ATR.Offset.Member;

import Meta.Token.Specifier;

import Std;

using ::Meta::Specifier::Mut;

export namespace
	ATR::Offset
{
	template
		<	auto
				t_nOffset
		,	typename
				t_tData
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	::std::byte const
			*	i_aObject
		,	Member<t_nOffset, Mut<t_tData>>
		)
		noexcept
	->	decltype(auto)
	{	return
			// the underlying data member is defined mutable
			// if the offset points to that data member this is well defined
			// if not all bets are off regardless
			const_cast<::std::byte*>
			(	i_aObject
			)
		->*	Member
			<	t_nOffset
			,	t_tData
			>{}
		;
	}
}
