export module ATR.FuncDependencyItem;

export import ATR.ID;
export import Stateless.Map;
export import Stateless.Type;
export import Std.FunctionTraits;

export namespace
	ATR
{
	/// maps a FuncID to a function pointer
	template
		<	ProtoID
				t_tFuncID
		,	typename
				t_tLazyFunction
		>
	struct
		FuncDependencyItem
	:	Stateless::MapToLazy
		<	t_tFuncID
		,	t_tLazyFunction
		>
	{
		constexpr
			FuncDependencyItem
			()
		=	default
		;

		constexpr
		explicit
			FuncDependencyItem
			(	t_tFuncID
			,	t_tLazyFunction
			)
		{}
	};

	template
		<	ProtoID
				t_tFuncID
		,	typename
				t_tLazyFunction
		>
	(	FuncDependencyItem
	)	(	t_tFuncID
		,	t_tLazyFunction
		)
	->	FuncDependencyItem
		<	t_tFuncID
		,	t_tLazyFunction
		>
	;

	/// map items that take a FuncID
	template
		<	typename
				t_tMapItem
		>
	concept
		FuncDependencyMapItemInstance
	=	Stateless::MapItemInstance
		<	t_tMapItem
		>
	and	Std::TypePackInstanceOf
		<	t_tMapItem
		,	FuncDependencyItem
		>
	;
}
