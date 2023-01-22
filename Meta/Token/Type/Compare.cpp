export module Meta.Token.Type.Compare;

import Meta.Token.Type;

import Std;

export namespace
	Meta::Token
{
	[[nodiscard]]
	auto constexpr
	(	operator <=>
	)	(	TypeID
				i_vLeft
		,	TypeID
				i_vRight
		)
		noexcept
	->	::std::partial_ordering
	{	return
			(	i_vLeft
			==	i_vRight
			)
		?	::std::partial_ordering::equivalent
		:	::std::partial_ordering::unordered
		;
	}
}
