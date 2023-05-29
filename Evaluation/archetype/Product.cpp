export module Evaluation.Archetype.Product;

import Evaluation.Shared.DataTypes;

import ATR.Dependency;
import ATR.Literals;

import Std;

export namespace
	ATR
{
	/// computes the product of all dependent members and a constant
	template
		<	typename
			...	t_tpDependency
		>
	auto inline
	(	FunctionBody
	)	(	Dependency<ID<"Product">>
		,	Dependency
			<	::std::byte const(&)[]
			,	t_tpDependency
				...
			>
				i_vArgument
		)
		noexcept
	->	Float
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

