export module ATR.Dependency;

export import ATR.ID;
export import ATR.Erase;
export import Pack.Sort;
export import Pack.Type;
export import Meta.Template;
export import Meta.TypeInfo;
export import Meta.TupleList;
export import PackTemplate.Instance;

export namespace
	ATR
{
	/// wraps around an object and provides member access via dependency maps
	template
		<	Meta::ProtoValue
				t_tArgument
		,	PackTemplate::TypeInstanceOf<Meta::KeyItem>
			...	t_tpDependency
		>
	struct
		Dependency
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
		Meta::KeyTuple<t_tpDependency...>
			DependencyMap
		{};

		constexpr
		(	Dependency
		)	(	t_tArgument
					i_vArgument
			,	Meta::KeyTuple<t_tpDependency...>
					i_vDependencyMap
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
		{
			if	constexpr
				(	::std::is_invocable_v
					<	decltype(DependencyMap[i_vFuncID])
					,	decltype(Argument)
					,	t_tpArgument
						...
					>
				)
				return
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
			else
				return
				::std::invoke
				(	DependencyMap
					[	i_vFuncID
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
			...	t_tpKey
		,	typename
			...	t_tpItem
		>
	(	Dependency
	)	(	t_tArgument
		,	Meta::KeyTuple
			<	Meta::KeyItem
				<	t_tpKey
				,	t_tpItem
				>
			>	const
			&
			...
		)
	->	Dependency
		<	t_tArgument
		,	Meta::KeyItem
			<	t_tpKey
			,	t_tpItem
			>
			...
		>
	;

	/// all dependencies will be sorted by their key
	/// this ensures that equivalent dependencies yields the same type
	template
		<	Meta::USize
			...	t_npIndex
		,	ProtoID
			...	t_tpKey
		,	typename
			...	t_tpItem
		>
	auto constexpr
	(	MakeSortedDependencyMap
	)	(	Meta::KeyTuple
			<	Meta::KeyItem
				<	Meta::Token::Index<t_npIndex>
				,	Meta::KeyItem<t_tpKey, t_tpItem>
				>
				...
			>	const
			&	i_rUnsorted
		)
	->	decltype(auto)
	{	auto constexpr
			vSortPermutation
		=	Meta::SortPermutation
			(	Meta::Value<StringView[sizeof...(t_tpKey)]>
				{	t_tpKey::StringView
					...
				}
			)
		;

		return
		Meta::KeyTuple
		{	UnwrapValue
			(	i_rUnsorted
				[	Meta::Index
					<	vSortPermutation
						[	t_npIndex
						]
					>
				]
			)
			...
		};
	}

	auto constexpr
	(	MakeSortedDependencyMap
	)	(	Meta::KeyTuple<>
				i_vEmpty
		)
	->	Meta::KeyTuple<>
	{	return i_vEmpty;	}

	template
		<	typename
				t_tArgument
		,	ProtoID
			...	t_tpKey
		,	typename
			...	t_tpItem
		>
	auto constexpr
	(	MakeArgumentDependency
	)	(	t_tArgument&&
				i_rArgument
		,	Meta::KeyItem<t_tpKey, t_tpItem>
			...	i_vpDependency
		)
	->	decltype(auto)
	{	return
		Dependency
		{	ForwardErased
			(	Meta::Type<t_tArgument>
			,	::std::forward<t_tArgument>(i_rArgument)
			)
		,	MakeSortedDependencyMap
			(	Meta::MakeIndexedTuple
				(	::std::move(i_vpDependency)
					...
				)
			)
		};
	}

	template
		<	StringLiteral
				t_vFunctionName
		,	ProtoID
			...	t_tpKey
		,	typename
			...	t_tpItem
		>
	auto constexpr
	(	MakeStaticDependencyInfo
	)	(	Meta::KeyItem<t_tpKey, t_tpItem>
			...	i_vpDependency
		)
	->	decltype(auto)
	{	return
		Meta::Type
		<	decltype
			(	Dependency
				{	ID_V<t_vFunctionName>
				,	MakeSortedDependencyMap
					(	Meta::TupleList
						{	i_vpDependency
							...
						}
					)
				}
			)
		>;
	}

	template
		<	typename
				t_tDependency
		>
	concept
		DependencyInstance
	=	Std::TypePackInstanceOf
		<	t_tDependency
		,	Dependency
		>
	;

	template
		<	StringLiteral
				t_vFunctionName
		>
	using
		FunctionName
	=	Dependency
		<	ID_T<t_vFunctionName>
		>
	;
}
