export module Evaluation.Archetype.Product;

import ATR.Dependency;

import Std;

export namespace
	ATR
{
	/// Computes the product of all dependent members
	template
		<	auto
			...	t_vpDependency
		>
	[[nodiscard]]
	auto constexpr inline
	(	FunctionBody
	)	(	GlobalDependency<"Product">
		,	Dependency
			<	::std::byte const(&)[]
			,	t_vpDependency
				...
			>
				i_vArgument
		)
		noexcept
	->	float
	{	return
		(	...
		*	t_vpDependency
			(	i_vArgument
				.	Argument
			)
		);
	}
}


