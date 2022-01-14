export module Function.FuncDependencyItem;

export import ID.Func;
export import Stateless.Map;
export import Stateless.Type;
export import Std.FunctionTraits;

export namespace
	Function
{
	/// maps a FuncID to a function pointer
	template
		<	ID::FuncInstance
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
	and	ID::FuncInstance
		<	typename
			Std::FunctionTraits
			<	&
				t_tMapItem
				::	operator()
			>::	ArgumentType
			::	Single
		>
	;
}
