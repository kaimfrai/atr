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
		,	typename
			...
		>
	struct
		BoundDependency
	{
		static_assert
		(	Meta::ProtoNone
			<	BoundDependency
			>
		,	"Unexpected specialization!"
		);
	};

	template
		<	Meta::ProtoValue
				t_tArgument
		,	ProtoID
			...	t_tpID
		,	typename
			...	t_tpItem
		>
	struct
		BoundDependency
		<	t_tArgument
		,	Meta::KeyItem
			<	t_tpID
			,	t_tpItem
			>
			...
		>
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
		Meta::KeyTuple
		<	Meta::KeyItem
			<	t_tpID
			,	t_tpItem
			>
			...
		>	DependencyMap
		{};

		constexpr
		(	BoundDependency
		)	(	t_tArgument
					i_vArgument
			,	Meta::KeyTuple
				<	Meta::KeyItem
					<	t_tpID
					,	t_tpItem
					>
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
	(	BoundDependency
	)	(	t_tArgument
		,	Meta::KeyTuple
			<	Meta::KeyItem
				<	t_tpKey
				,	t_tpItem
				>
				...
			>
		)
	->	BoundDependency
		<	t_tArgument
		,	Meta::KeyItem
			<	t_tpKey
			,	t_tpItem
			>
			...
		>
	;

	template
		<	Meta::ProtoValue
		,	typename
			...
		>
	struct
		Dependency
	{
		static_assert
		(	Meta::ProtoNone
			<	Dependency
			>
		,	"Unexpected specialization!"
		);
	};

	template
		<	Meta::ProtoValue
				t_tArgument
		,	ProtoID
			...	t_tpID
		,	typename
			...	t_tpItem
		>
	struct
		Dependency
		<	t_tArgument
		,	Meta::KeyItem
			<	t_tpID
			,	t_tpItem
			>
			...
		>
	{
		using
			ArgumentType
		=	t_tArgument
		;

		using
			BoundType
		=	BoundDependency
			<	t_tArgument
			,	Meta::KeyItem
				<	t_tpID
				,	t_tpItem
				>
				...
			>
		;

		[[no_unique_address]]
		Meta::KeyTuple
		<	Meta::KeyItem
			<	t_tpID
			,	t_tpItem
			>
			...
		>	DependencyMap
		{};

		explicit constexpr
		(	Dependency
		)	(	Meta::TypeToken<t_tArgument>
			,	Meta::KeyItem<t_tpID, t_tpItem> const
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
		<	typename
				t_tArgument
		,	typename
			...	t_tpKey
		,	typename
			...	t_tpItem
		>
	(	Dependency
	)	(	Meta::TypeToken<t_tArgument>
		,	Meta::KeyItem
			<	t_tpKey
			,	t_tpItem
			>
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
}
