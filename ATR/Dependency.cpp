export module ATR.Dependency;

export import ATR.ID;
export import ATR.Erase;
export import Meta.Type;
export import Meta.TupleList;
export import Std.TemplateConcepts;

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
		Meta::TypeToken
		<	t_tArgument
		>	ArgumentToken
		{};

		[[no_unique_address]]
		Meta::KeyTuple
		<	Meta::KeyItem
			<	t_tpID
			,	t_tpItem
			>
			...
		>	DependencyMap
		{};

		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	ArgumentType
					i_vArgument
				=	{}
			)	const
		->	decltype(auto)
		{	return
			BoundDependency
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
		,	Meta::KeyTuple
			<	Meta::KeyItem
				<	t_tpKey
				,	t_tpItem
				>
				...
			>
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
	)	(	Meta::TypeToken<t_tArgument>
				i_vArgumentType
		,	Meta::KeyItem<t_tpKey, t_tpItem>
			...	i_vpDependency
		)
	->	decltype(auto)
	{	return
		Dependency
		{	i_vArgumentType
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
		Dependency
		{	Meta::Type<ID_T<t_vFunctionName>>
		,	MakeSortedDependencyMap
			(	Meta::TupleList
				{	i_vpDependency
					...
				}
			)
		};
	}

	template
		<	typename
				t_tDependency
		>
	concept
		ProtoBoundDependency
	=	Std::TypePackInstanceOf
		<	t_tDependency
		,	BoundDependency
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
