export module Evaluation.Archetype:Product;

export import ATR;
export import Evaluation.Shared;
import Meta.Functional.Fold.Multiply;
import Meta.Functional.Fold;
import Meta.Functional.Key;

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
		i_vArgument.ItemSequence.TransformReduce
		(	[	&i_vArgument
			]	(	auto
						i_vIndex
				)
			{	return
				i_vArgument
				(	i_vIndex
				);
			}
		,	Meta::Fold<&Meta::Functional::Key::operator*>
			{}
		);
	}
}


