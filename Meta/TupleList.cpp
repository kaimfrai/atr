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
		<	Meta::ProtoStateless
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
			<	Meta::ProtoStateless
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
		<	Meta::ProtoStateless
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
		<	ProtoStateless
				t_tKey
		,	ProtoStateless
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
		<	ProtoStateless
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
		<	typename//ProtoConstraint<IsTypePack_Of<KeyItem>>
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
		)	(	CopyConstructibleValue<typename t_tpKeyItem::ItemType> const
				&
				...	i_rpItem
			)
		requires
			(	sizeof...(t_tpKeyItem)
			>	0uz
			)
		:	t_tpKeyItem
			{	i_rpItem
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
}

namespace
	Meta
{
	///	FIXME: Ideally, this helper should be an immediately invoked lambda. However, upon instantiation
	///	this crashes clang as of now.
	template
		<	typename
			...	t_tpItem
		,	USize
			...	t_npIndex
		>
	static auto constexpr
	(	DeduceIndexedTuple
	)	(	IndexToken
			<	t_npIndex
				...
			>
		)
	->	KeyTuple
		<	KeyItem
			<	IndexToken<t_npIndex>
			,	t_tpItem
			>
			...
		>
	{	return
		::std::declval
		<	KeyTuple
			<	KeyItem
				<	IndexToken<t_npIndex>
				,	t_tpItem
				>
				...
			>
		>();
	}

	template
		<	typename
			...	t_tpItem
		>
	using
		MakeIndexedTuple
	=	decltype
		(	DeduceIndexedTuple<t_tpItem...>
			(	Sequence
				<	sizeof...(t_tpItem)
				>()
			)
		)
	;
}

export namespace
	Meta
{
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
	:	MakeIndexedTuple
		<	t_tpItem
			...
		>
	{
		using MakeIndexedTuple<t_tpItem...>::MakeIndexedTuple;

		static EraseTypeToken constexpr
			EraseTypeArray
			[]
		{	Meta::Type
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
