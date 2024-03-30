export module Evaluation.Archetype.Product;

import ATR.Dependency;

export namespace
	ATR
{
	/// Computes the product of all dependent members
	template
		<	typename
				t_tErasure
		,	auto
			...	t_vpDependency
		>
	[[nodiscard]]
	auto constexpr inline
	(	FunctionBody
	)	(	GlobalDependency<"Product">
		,	Dependency
			<	t_tErasure
			,	t_vpDependency
				...
			>
				i_vArgument
		)
		noexcept
	->	decltype(auto)
	{	return
		(	...
		*	t_vpDependency
			(	i_vArgument
			)
		);
	}
}


