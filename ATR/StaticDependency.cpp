export module ATR.StaticDependency;

export import ATR.Dependency;
export import ATR.ID;
export import Meta.Template;
export import Meta.TypeInfo;
export import PackTemplate.Instance;
export import Meta.TupleList;

export import Std;

export namespace
	ATR
{
	template
		<	ProtoID
				t_tFunctionName
		,	PackTemplate::TypeInstanceOf<Meta::KeyTuple>
				t_tDataDependencyMap
		,	PackTemplate::TypeInstanceOf<Meta::KeyTuple>
				t_tFuncDependencyMap
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
			(	ProtoID auto
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
			(	ProtoID auto
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
		<	StringLiteral
				t_vFunctionName
		>
	using
		FunctionName
	=	StaticDependency
		<	ID_T<t_vFunctionName>
		,	Meta::KeyTuple<>
		,	Meta::KeyTuple<>
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
		,	StringLiteral
				t_vFunctionName
		>
	concept
		NamedStaticDependencyInstance
	=	StaticDependencyInstance
		<	t_tDependency
		>
	and	::std::same_as
		<	typename
			t_tDependency
			::	FunctionName
		,	ID_T<t_vFunctionName>
		>
	;

	template
		<	StringLiteral
				t_vFunctionName
		>
	constexpr
	Meta::TypeInstance auto
		MakeStaticDependencyInfo
		(	Meta::ProtoClass auto
			...	i_vpDependency
		)
	{	return
			MakeDependencyInfo
			(	Meta::Template
				<	StaticDependency
				>()
			,	Meta::Info
				<	ID_T
					<	t_vFunctionName
					>
				>()
			,	i_vpDependency
				...
			)
		;
	}
}
