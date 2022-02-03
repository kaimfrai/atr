export module Evaluation.Archetype.Product;

export import Evaluation.Shared.DataTypes;
export import ATR.ConstantIDMap;

export namespace
	ATR
{
	template
		<	typename
			...	t_tpDependency
		>
	using
		DeduceDependencies
	=	Dependency
		<	void const
			*
		,	t_tpDependency
			...
		>
	;

	/// computes the product of all dependent members and a constant
	template
		<	typename
			...	t_tpDependency
		>
	auto inline
		Body
		(	FunctionName<"Product">
		,	DeduceDependencies
			<	t_tpDependency
				...
			>	i_vArgument
		)
		noexcept
	->	Float
	{	return
		(	...
		*	i_vArgument
			(	t_tpDependency
			::	KeyValue
			)
		);
	}

	template
		<	typename
				t_tObject
		,	FuncIDMap
			...	t_vpFuncDependencies
		>
	constexpr
	auto
		MakeProductAddress
		()
	{
		return
			DependencyAddress
			{	StaticDependencyInfo<"Product">
			,	ArgumentDependencyInfo
				<	t_tObject const
					&
				,	t_vpFuncDependencies
					...
				>
			}
		;
	}
}


