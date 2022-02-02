export module ATR.ArgumentDependency;

export import ATR.Dependency;
export import ATR.ID;
export import Meta.Template;
export import Meta.TypeInfo;
export import PackTemplate.Instance;

export import Std;

export namespace
	ATR
{
	/// wraps around an object and provides member access via dependency maps
	template
		<	Meta::ProtoValue
				t_tArgument
		,	PackTemplate::TypeInstanceOf<Meta::KeyTuple>
				t_tDependencyMap
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
		t_tDependencyMap
			DependencyMap
		{};

		template
			<	typename
				...	t_tpArgument
			>
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	ProtoID auto
					i_vFuncID
			,	t_tpArgument
				&&
				...	i_rpArgument
			)
		->	decltype(auto)
		{	return
			::std::invoke
			(	DependencyMap
				[	i_vFuncID
				]
			,	Argument
			,	::std::forward
				<	t_tpArgument
				>(	i_rpArgument
				)
				...
			);
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
	auto constexpr
		MakeArgumentDependencyInfo
		(	Meta::ProtoClass auto
			...	i_vpDependency
		)
	->	Meta::TypeInstance auto
	{	return
		MakeDependencyInfo
		(	Meta::Template
			<	ArgumentDependency
			>()
		,	Meta::Info
			<	t_tArgument
			>()
		,	i_vpDependency
			...
		);
	}
}