export module Function.StaticDependency;

export import Function.Dependency;
export import ID.Func;
export import ID.Data;
export import Meta.Template;
export import Meta.TypeInfo;
export import PackTemplate.Instance;
export import <Stateless/Map.hpp>;

export import Std;

export namespace
	Function
{
	template
		<	ID::FuncInstance
				t_tFunctionName
		,	PackTemplate::TypeInstanceOf
			<	Stateless::Map
			>	t_tDataDependencyMap
		,	PackTemplate::TypeInstanceOf
			<	Stateless::Map
			>	t_tFuncDependencyMap
		>
	struct
		StaticDependency
	{
		using
			FunctionName
		=	t_tFunctionName
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
				,	std::forward
					<	t_tpArgument
					>(	i_rpArgument
					)
					...
				)
			;
		}
	};

	template
		<	ID::StringLiteral
				t_vFunctionName
		>
	using
		FunctionName
	=	StaticDependency
		<	ID::FuncT
			<	t_vFunctionName
			>
		,	Stateless::Map
			<>
		,	Stateless::Map
			<>
		>
	;

	template
		<	typename
				t_tDependency
		>
	concept
		StaticDependencyInstance
	=	Std::TypePackInstanceOf
		<	t_tDependency
		,	StaticDependency
		>
	;

	template
		<	typename
				t_tDependency
		,	ID::StringLiteral
				t_vFunctionName
		>
	concept
		NamedStaticDependencyInstance
	=	StaticDependencyInstance
		<	t_tDependency
		>
	and	Std::SameAs
		<	typename
			t_tDependency
			::	FunctionName
		,	ID::FuncT
			<	t_vFunctionName
			>
		>
	;

	template
		<	ID::StringLiteral
				t_vFunctionName
		>
	constexpr
	Meta::TypeInstance auto
		MakeStaticDependencyInfo
		(	Stateless::MapItemInstance auto
			...	i_vpDependency
		)
	{	return
			MakeDependencyInfo
			(	Meta::Template
				<	StaticDependency
				>()
			,	Meta::Info
				<	ID::FuncT
					<	t_vFunctionName
					>
				>()
			,	i_vpDependency
				...
			)
		;
	}
}
