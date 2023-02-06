export module Evaluation.Archetype.Product;

import Evaluation.Shared.DataTypes;
import ATR.DependencyIDMap;
import Meta.Token.Index;

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
	(	Body
	)	(	FunctionName<"Product">
		,	DeduceDependencies<t_tpDependency...>
				i_vArgument
		)
		noexcept
	->	Float
	{	return
		[	&i_vArgument
		]	<	::std::size_t
				...	t_npIndex
			>(	::std::index_sequence
				<	t_npIndex
					...
				>
			)
		{	return
			(	...
			*	i_vArgument
				(	::Meta::Index<t_npIndex>
				)
			);
		}(	i_vArgument
		.	ItemSequence
		);
	}
}


