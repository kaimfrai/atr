export module Meta.TupleList;

export import Std;

export import Meta.Index;
export import Meta.Concept;
export import Meta.Constraint;
export import Meta.Predicate;

export namespace
	Meta
{
	template
		<	USize
				t_nIndex
		,	ProtoSizedObject
				t_tItem
		>
	struct
		TupleListItem
	{
		t_tItem
			m_vItem
			[[no_unique_address]]
		;

		auto constexpr
		(	operator[]
		)	(	IndexToken<t_nIndex>
			)	&
		->	t_tItem&
		{	return m_vItem;	}

		auto constexpr
		(	operator[]
		)	(	IndexToken<t_nIndex>
			)	const&
		->	t_tItem const&
		{	return m_vItem;	}

		auto constexpr
		(	operator[]
		)	(	IndexToken<t_nIndex>
			)	&&
		->	t_tItem&&
		{	return ::std::move(m_vItem);	}
	};

	template
		<	USize
				t_nIndex
		,	ProtoConstraint<IsStateless>
				t_tItem
		>
	struct
		TupleListItem
		<	t_nIndex
		,	t_tItem
		>
	{
		static t_tItem constexpr
			Item
		{};

		auto constexpr
		(	operator[]
		)	(	IndexToken<t_nIndex>
			)	const&
		->	t_tItem const&
		{	return Item;	}

		auto constexpr
		(	operator[]
		)	(	IndexToken<t_nIndex>
			)	&&
		->	t_tItem
		{	return t_tItem{};	}
	};

	template
		<	ProtoConstraint<IsValueTypePair_Of<TupleListItem>>
			...	t_tpIndexedItem
		>
	struct
		IndexedTuple
	:	t_tpIndexedItem
		...
	{
		using t_tpIndexedItem::operator[]...;

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
	};
}

namespace
	Meta
{
	///	FIXME: Ideally, this helper should be an immediately invoked lambda. However, upon instantiation
	///	this crashes clang as of now.
	template
		<	ProtoSizedObject
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
	->	IndexedTuple
		<	TupleListItem
			<	t_npIndex
			,	t_tpItem
			>
			...
		>
	{	return
		::std::declval
		<	IndexedTuple
			<	TupleListItem
				<	t_npIndex
				,	t_tpItem
				>
				...
			>
		>();
	}

	template
		<	ProtoSizedObject
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
	template
		<	ProtoSizedObject
			...	t_tpItem
		>
	struct
		TupleList
	:	MakeIndexedTuple
		<	t_tpItem
			...
		>
	{
		using MakeIndexedTuple<t_tpItem...>::operator[];
	};
}

namespace
	std
{
	template
		<	::Meta::ProtoSizedObject
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
		,	::Meta::ProtoSizedObject
			...	t_tpItem
		>
	struct
		tuple_element
		<	t_nIndex
		,	::Meta::TupleSet
			<	t_tpItem
				...
			>
		>
	:	::std::remove_pointer
		<	decltype
			(	::std::declval
				<	::Meta::TupleSet
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
