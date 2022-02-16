export module Meta.TupleList;

export import Std;

export import Meta.Index;
export import Meta.Concept;
export import Meta.Constraint;
export import Meta.Predicate;
export import Meta.Value;

export namespace
	Meta
{
	/// base class for map items which provides ordering on the key
	template
		<	ProtoConstraint<IsStateless>
				t_tKey
		>
	struct
		Key
	{
		static t_tKey constexpr
			KeyValue
		{};

		/// provide ordering according to key
		template
			<	ProtoConstraint<IsStateless>
					t_tRightKey
			>
		[[nodiscard]]
		friend auto constexpr
		(	operator<=>
		)	(	Key const&
			,	Key<t_tRightKey> const&
			)
		->	decltype
			(	t_tKey{}
			<=>	t_tRightKey{}
			)
		{	return
				t_tKey{}
			<=>	t_tRightKey{}
			;
		}
	};

	template
		<	ProtoConstraint<IsStateless>
				t_tKey
		,	typename
				t_tItem
		>
	struct
		KeyItem
	:	Key<t_tKey>
	{
		using ItemType = t_tItem;

		Value<t_tItem>
			Item
			[[no_unique_address]]
		;

		constexpr
		(	KeyItem
		)	()
		=	default;

		constexpr
		(	KeyItem
		)	(	t_tItem const
				&	i_rItem
			)
		:	Item
			{	i_rItem
			}
		{}

		auto constexpr
		(	operator[]
		)	(	t_tKey
			)	&
		->	Value<t_tItem>&
		{	return Item;	}

		auto constexpr
		(	operator[]
		)	(	t_tKey
			)	const&
		->	Value<t_tItem> const&
		{	return Item;	}

		auto constexpr
		(	operator[]
		)	(	t_tKey
			)	&&
		->	Value<t_tItem>
		{	return ::std::move(Item);	}
	};

	template
		<	ProtoConstraint<IsStateless>
				t_tKey
		,	ProtoConstraint<IsStateless>
				t_tItem
		>
	struct
		KeyItem
		<	t_tKey
		,	t_tItem
		>
	:	Key<t_tKey>
	{
		using ItemType = t_tItem;

		static Value<t_tItem> constexpr
			Item
		;

		constexpr
		(	KeyItem
		)	()
		=	default;

		constexpr
		(	KeyItem
		)	(	t_tItem
			)
		{}

		auto constexpr
		(	operator[]
		)	(	t_tKey
			)	const
		->	Value<t_tItem>
		{	return {};	}
	};

	template
		<	ProtoConstraint<IsStateless>
				t_tKey
		,	typename
				t_tItem
		>
	auto constexpr
	(	MakeKeyItem
	)	(	t_tItem&&
				i_rItem
		)
	->	KeyItem
		<	t_tKey
		,	t_tItem
		>
	{	return { ::std::forward<t_tItem>(i_rItem) };	}

	template
		<	ProtoConstraint<IsTypePack_Of<KeyItem>>
			...	t_tpKeyItem
		>
	struct
		KeyTuple
	:	t_tpKeyItem
		...
	{
		using t_tpKeyItem::operator[]...;

		constexpr
		(	KeyTuple
		)	()
		=	default;

		explicit constexpr
		(	KeyTuple
		)	(	t_tpKeyItem const
				&
				...	i_rpKeyItem
			)
		:	t_tpKeyItem
			{	i_rpKeyItem
			}
			...
		{}

		template
			<	USize
					t_nIndex
			>
		auto constexpr
		(	get
		)	()	&
		->	decltype(auto)
		{	return operator[](Index<t_nIndex>);	}

		template
			<	USize
					t_nIndex
			>
		auto constexpr
		(	get
		)	()	const&
		->	decltype(auto)
		{	return operator[](Index<t_nIndex>);	}

		template
			<	USize
					t_nIndex
			>
		auto constexpr
		(	get
		)	()	&&
		->	decltype(auto)
		{	return
			::std::move(*this)
			[	Index<t_nIndex>
			];
		}

		friend auto constexpr
		(	Invoke
		)	(	auto&&
					i_rInvocable
			,	KeyTuple const
				&	i_rTuple
			)
		->	decltype(auto)
		{	return
				static_cast<decltype(i_rInvocable)>
				(	i_rInvocable
				)
			(	UnwrapValue
				(	static_cast<t_tpKeyItem const&>
					(	i_rTuple
					)
				.	Item
				)
				...
			);
		}
	};

	template
		<>
	struct
		KeyTuple
		<>
	{
		friend auto constexpr
		(	Invoke
		)	(	auto&&
					i_rInvocable
			,	KeyTuple
			)
		->	decltype(auto)
		{	return
			static_cast<decltype(i_rInvocable)>
			(	i_rInvocable
			)();
		}
	};

	template
		<	typename
			...	t_tpKeyItem
		>
	(	KeyTuple
	)	(	t_tpKeyItem const&
			...
		)
	->	KeyTuple
		<	UnwrapType<t_tpKeyItem>
			...
		>
	;

	template
		<	typename
			...	t_tpItem
		>
	auto constexpr
	(	MakeIndexedTuple
	)	(	t_tpItem&&
			...	i_rpItem
		)
	->	decltype(auto)
	{	return
		[&]	<	USize
				...	t_npIndex
			>(	IndexToken<t_npIndex...>
			)
		->	KeyTuple
			<	KeyItem
				<	IndexToken<t_npIndex>
				,	UnwrapType<t_tpItem>
				>
				...
			>
		{	return
			KeyTuple
			<	KeyItem
				<	IndexToken<t_npIndex>
				,	UnwrapType<t_tpItem>
				>
				...
			>{	::std::forward<t_tpItem>
				(	i_rpItem
				)
				...
			};
		}(	Sequence<sizeof...(t_tpItem)>
		);
	}

	template
		<	typename
			...	t_tpItem
		>
	using
		DeduceIndexedTuple
	=	decltype
		(	MakeIndexedTuple
			(	::std::declval<t_tpItem>()
				...
			)
		)
	;

	struct
		ErasedTuple
	{
		EraseTypeToken const
		*	ErasedTypes
		;
		USize const
			Size
		;
	};

	auto constexpr
	(	operator==
	)	(	ErasedTuple
				i_vLeft
		,	ErasedTuple
				i_vRight
		)
	->	bool
	{	return
		::std::equal
		(	i_vLeft.ErasedTypes
		,	i_vLeft.ErasedTypes + i_vLeft.Size
		,	i_vRight.ErasedTypes
		,	i_vRight.ErasedTypes + i_vRight.Size
		);
	}

	template
		<	typename
			...	t_tpItem
		>
	struct
		TupleList
	:	DeduceIndexedTuple
		<	t_tpItem
			...
		>
	{
		using DeduceIndexedTuple<t_tpItem...>::DeduceIndexedTuple;

		static EraseTypeToken constexpr
			EraseTypeArray
			[]
		{	Type
			<	t_tpItem
			>
			...
		};

		constexpr
		(	operator ErasedTuple
		)	()	const
		{	return
			ErasedTuple
			{	+EraseTypeArray
			,	sizeof...(t_tpItem)
			};
		}
	};

	template
		<	typename
			...	t_tpItem
		>
	(	TupleList
	)	(	t_tpItem const&
			...
		)
	->	TupleList
		<	UnwrapType
			<	t_tpItem
			>
			...
		>
	;
		///	wraps around a pack of types
	///	defines value-based operations
	template
		<	typename
			...	t_tpElement
		>
	struct
		[[nodiscard]]
		TypePack
	:	TupleList
		<	TypeToken
			<	t_tpElement
			>
			...
		>
	{};
}

export namespace
	std
{
	template
		<	typename
			...	t_tpItem
		>
	struct
		tuple_size
		<	::Meta::TupleList
			<	t_tpItem
				...
			>
		>
	:	::std::integral_constant
		<	::std::size_t
		,	sizeof...(t_tpItem)
		>
	{};

	template
		<	::std::size_t
				t_nIndex
		,	typename
			...	t_tpItem
		>
	struct
		tuple_element
		<	t_nIndex
		,	::Meta::TupleList
			<	t_tpItem
				...
			>
		>
	:	::std::type_identity
		<	decltype
			(	::std::declval
				<	::Meta::TupleList
					<	t_tpItem
						...
					>
				>()
				[	::Meta::Index<t_nIndex>
				]
			)
		>
	{};
}
