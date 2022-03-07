export module Evaluation.Archetype.Product;

export import Evaluation.Shared;
export import ATR;

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
		[&]	<	Meta::USize
				...	t_npIndex
			>(	Meta::IndexToken<t_npIndex...>
			)
		->	Float
		{	return
			(	...
			*	i_vArgument
				(	Meta::Index<t_npIndex>
				)
			);
		}(	i_vArgument.ItemSequence
		);
	}
}


