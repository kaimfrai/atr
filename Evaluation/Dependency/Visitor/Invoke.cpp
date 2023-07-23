export module Evaluation.Dependency.Visitor.Invoke;

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
	(	Invoke
	)	(	t_tObject
			&&	i_rObject
		,	auto
			&	o_rResult
		,	::std::invocable<t_tObject> auto const
			&	i_fOverload
		)
		noexcept
	->	bool
	{	(	o_rResult
		=	i_fOverload
			(	::std::forward<t_tObject>
				(	i_rObject
				)
			)
		);
		return
			true
		;
	}
}
