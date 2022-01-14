export module Function.ArgumentDependency;

export import Function.Dependency;
export import ID.Func;
export import ID.Data;
export import Meta.Template;
export import Meta.TypeInfo;
export import PackTemplate.Instance;
export import Stateless.Map;
export import Std.Concepts;

export import Std;

export namespace
	Function
{
	/// wraps around an object and provides member access via dependency maps
	template
		<	Std::Object
				t_tArgument
		,	PackTemplate::TypeInstanceOf
			<	Stateless::Map
			>	t_tDataDependencyMap
		,	PackTemplate::TypeInstanceOf
			<	Stateless::Map
			>	t_tFuncDependencyMap
		>
	struct
		ArgumentDependency
	{
		using
			ArgumentType
		=	t_tArgument
		;

		t_tArgument
			Argument
		;

		[[no_unique_address]]
		t_tDataDependencyMap
			DataDependencyMap
		{};

		[[no_unique_address]]
		t_tFuncDependencyMap
			FuncDependencyMap
		{};

		/// access data of the object
		[[nodiscard]]
		constexpr
		auto
			operator[]
			(	ID::DataInstance auto
					i_vDataID
			)
		noexcept
		->	decltype(auto)
		{	return
				std::invoke
				(	DataDependencyMap
					[	i_vDataID
					]
				,	Argument
				)
			;
		}

		/// call functions of the object
		template
			<	typename
				...	t_tpArgument
			>
		[[nodiscard]]
		constexpr
		auto
			operator()
			(	ID::FuncInstance auto
					i_vFuncID
			,	t_tpArgument
				&&
				...	i_rpArgument
			)
		->	decltype(auto)
		{	return
				std::invoke
				(	FuncDependencyMap
					[	i_vFuncID
					]
				,	Argument
				,	std::forward
					<	t_tpArgument
					>(	i_rpArgument
					)
					...
				)
			;
		}
	};

	/// instances of ArgumentDependency
	template
		<	typename
				t_tDependency
		>
	concept
		ArgumentDependencyInstance
	=	Std::TypePackInstanceOf
		<	t_tDependency
		,	ArgumentDependency
		>
	;

	template
		<	typename
				t_tArgument
		>
	constexpr
	Meta::TypeInstance auto
		MakeArgumentDependencyInfo
		(	Stateless::MapItemInstance auto
			...	i_vpDependency
		)
	{
		return
			MakeDependencyInfo
			(	Meta::Template
				<	ArgumentDependency
				>()
			,	Meta::Info
				<	t_tArgument
				>()
			,	i_vpDependency
				...
			)
		;
	}
}
