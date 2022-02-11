export module ATR.Dependency;

export import ATR.ID;
export import ATR.Erase;
export import Meta.Type;
export import Meta.TupleList;

export namespace
	ATR
{
	/// wraps around an object and provides member access via dependency maps
	template
		<	Meta::ProtoValue
				t_tArgument
		,	typename
			...	t_tpItem
		>
	struct
		BoundDependency
	{
		using
			ArgumentType
		=	t_tArgument
		;
		[[no_unique_address]]
		t_tArgument
			Argument
		;

		[[no_unique_address]]
		Meta::TupleList
		<	t_tpItem
			...
		>	DependencyMap
		{};

		static auto constexpr
			ItemSequence
		=	Meta::Sequence<sizeof...(t_tpItem)>
		;

		constexpr
		(	BoundDependency
		)	(	t_tArgument
					i_vArgument
			,	Meta::TupleList
				<	t_tpItem
					...
				>	i_vDependencyMap
				=	{}
			)
		:	Argument
			{	i_vArgument
			}
		,	DependencyMap
			{	i_vDependencyMap
			}
		{}

		template
			<	Meta::USize
					t_nIndex
			,	typename
				...	t_tpArgument
			>
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	Meta::IndexToken<t_nIndex>
					i_vIndex
			,	t_tpArgument
				&&
				...	i_rpArgument
			)
		->	decltype(auto)
		{
			if	constexpr
				(	::std::is_invocable_v
					<	decltype(DependencyMap[i_vIndex])
					,	decltype(Argument)
					,	t_tpArgument
						...
					>
				)
				return
				::std::invoke
				(	DependencyMap
					[	i_vIndex
					]
				,	Argument
				,	::std::forward
					<	t_tpArgument
					>(	i_rpArgument
					)
					...
				);
			else
				return
				::std::invoke
				(	DependencyMap
					[	i_vIndex
					]
				,	::std::forward
					<	t_tpArgument
					>(	i_rpArgument
					)
					...
				);
		}
	};

	template
		<	typename
				t_tArgument
		,	typename
			...	t_tpItem
		>
	(	BoundDependency
	)	(	t_tArgument
		,	Meta::TupleList
			<	t_tpItem
				...
			>
		)
	->	BoundDependency
		<	t_tArgument
		,	t_tpItem
			...
		>
	;

	template
		<	Meta::ProtoValue
				t_tArgument
		,	typename
			...	t_tpItem
		>
	struct
		Dependency
	{
		using
			ArgumentType
		=	t_tArgument
		;

		using
			BoundType
		=	BoundDependency
			<	t_tArgument
			,	t_tpItem
				...
			>
		;

		[[no_unique_address]]
		Meta::TupleList
		<	t_tpItem
			...
		>	DependencyMap
		{};

		constexpr
		(	Dependency
		)	(	t_tArgument
			,	t_tpItem const
				&
				...	i_rpDependency
			)
		requires
			ProtoID<t_tArgument>
		:	DependencyMap
			{	i_rpDependency
				...
			}
		{}

		explicit constexpr
		(	Dependency
		)	(	Meta::TypeToken<t_tArgument>
			,	t_tpItem const
				&
				...	i_rpDependency
			)
		:	DependencyMap
			{	i_rpDependency
				...
			}
		{}

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	ArgumentType
					i_vArgument
				=	{}
			)	const
		->	BoundType
		{	return
			BoundType
			{	i_vArgument
			,	DependencyMap
			};
		}
	};

	template
		<	ProtoID
				t_tArgument
		,	typename
			...	t_tpItem
		>
	(	Dependency
	)	(	t_tArgument
		,	t_tpItem const&
			...
		)
	->	Dependency
		<	t_tArgument
		,	t_tpItem
			...
		>
	;

	template
		<	typename
				t_tArgument
		,	typename
			...	t_tpItem
		>
	(	Dependency
	)	(	Meta::TypeToken<t_tArgument>
		,	t_tpItem const&
			...
		)
	->	Dependency
		<	t_tArgument
		,	t_tpItem
			...
		>
	;

	template
		<	StringLiteral
				t_vFunctionName
		>
	using
		FunctionName
	=	BoundDependency
		<	ID_T<t_vFunctionName>
		>
	;

	template
		<	typename
			...	t_tpDependency
		>
	using
		DeduceDependencies
	=	BoundDependency
		<	void const
			*
		,	t_tpDependency
			...
		>
	;
}
