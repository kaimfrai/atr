export module Evaluation.Archetype.Product;

import ATR.Dependency;

import Std;

export namespace
	ATR
{
	/// Computes the product of all dependent members
	template
		<	typename
			...	t_tpDependency
		>
	[[nodiscard]]
	auto constexpr inline
	(	FunctionBody
	)	(	GlobalDependency<"Product">
		,	Dependency
			<	::std::byte const(&)[]
			,	t_tpDependency
				...
			>
				i_vArgument
		)
		noexcept
	->	float
	{	return
		(	...
		*	t_tpDependency
			::	operator()
			(	i_vArgument
				.	Argument
			)
		);
	}
}


