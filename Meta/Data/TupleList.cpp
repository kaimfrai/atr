export module Meta.Data.TupleList;

import Meta.Data.Aggregate;

import Meta.Token.Index;
import Meta.Token.Sequence;
import Meta.Token.Type;
import Meta.Size;

import Std;

export namespace
	Meta
{
	template
		<	USize
				t_nIndex
		,	typename
				t_tItem
		>
	struct
		KeyItem
	{
		using ItemType = t_tItem;

		[[no_unique_address]]
		Aggregate<t_tItem>
			Item
		;

		auto constexpr
		(	operator[]
		)	(	IndexToken<t_nIndex>
			)	&
		->	Aggregate<t_tItem>&
		{	return Item;	}

		auto constexpr
		(	operator[]
		)	(	IndexToken<t_nIndex>
			)	const&
		->	Aggregate<t_tItem> const&
		{	return Item;	}

		auto constexpr
		(	operator[]
		)	(	IndexToken<t_nIndex>
			)	&&
		->	Aggregate<t_tItem>
		{	return ::std::move(Item);	}
	};

	template
		<	typename
			...	t_tpKeyItem
		>
	struct
		KeyTuple
	:	t_tpKeyItem
		...
	{
		using t_tpKeyItem::operator[]...;

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
			(	static_cast<t_tpKeyItem const&>
				(	i_rTuple
				)
			.	Item
			.	get()
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
	)	(	Aggregate<t_tpKeyItem>
			...
		)
	->	KeyTuple
		<	t_tpKeyItem
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
				<	t_npIndex
				,	::std::remove_cvref_t<t_tpItem>
				>
				...
			>
		{	return
			KeyTuple
			<	KeyItem
				<	t_npIndex
				,	::std::remove_cvref_t<t_tpItem>
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
		using IndexedTuple = DeduceIndexedTuple<t_tpItem...>;

		static EraseTypeToken constexpr
			EraseTypeArray
			[]
		{	Type
			<	t_tpItem
			>
			...
		};

		constexpr
		(	operator EraseTypeToken const*
		)	()	const
		{	return +EraseTypeArray;	}
	};

	template
		<	typename
			...	t_tpItem
		>
	(	TupleList
	)	(	Aggregate<t_tpItem>
			...
		)
	->	TupleList
		<	t_tpItem
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
