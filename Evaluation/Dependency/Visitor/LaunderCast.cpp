export module Evaluation.Dependency.Visitor.LaunderCast;

import Std;

export namespace
	Visitor
{
	template
		<	typename
				t_tObject
		>
	[[nodiscard]]
	auto constexpr inline
	(	LaunderCast
	)	(	void
			*	i_aObject
		)
		noexcept
	->	t_tObject*
	{	return
		::std::launder
		(	::std::bit_cast<t_tObject*>
			(	i_aObject
			)
		);
	}
}
