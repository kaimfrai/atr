export module Meta.Pack;

export import Meta.Index;
export import Meta.Concepts;

namespace
	Meta
{
// 	template
// 		<	SSize
// 				t_nRingIndex
// 		>
// 	struct
// 		RingIndex
// 	{
// 		template
// 			<	USize
// 					t_nIndex
// 			>
// 		friend auto constexpr
// 		(	operator %
// 		)	(	RingIndex
// 			,	IndexToken<t_nIndex>
// 			)
// 		{
// 			return
// 			Index<CongruentInteger(t_nRingIndex, t_nIndex)>
// 			;
// 		}
// 	};
//
// 	template
// 		<	typename
// 				t_tProto
// 		>
// 	concept
// 		ProtoRingIndex
// 	=	ProtoValuePack
// 		<	t_tProto
// 		,	RingIndex
// 		>
// 	;
//
// 	export template
// 		<	USize
// 				t_nIndex
// 		,	typename
// 				t_tItem
// 		>
// 	struct
// 		IndexedItem
// 	{
// 		t_tItem
// 			m_vItem
// 		;
//
// 		auto constexpr
// 		(	operator[]
// 		)	(	IndexToken<t_nIndex>
// 			)	&
// 		->	t_tItem&
// 		{	return m_vItem;	}
//
// 		auto constexpr
// 		(	operator[]
// 		)	(	IndexToken<t_nIndex>
// 			)	const&
// 		->	t_tItem const&
// 		{	return m_vItem;	}
//
// 		auto constexpr
// 		(	operator[]
// 		)	(	IndexToken<t_nIndex>
// 			)	&&
// 		->	t_tItem
// 		{	return static_cast<t_tItem&&>(m_vItem);	}
// 	};
//
// 	template
// 		<	USize
// 				t_nIndex
// 		,	ProtoVoid
// 				t_tItem
// 		>
// 	struct
// 		IndexedItem
// 		<	t_nIndex
// 		,	t_tItem
// 		>
// 	{
// 		auto constexpr
// 		(	operator[]
// 		)	(	IndexToken<t_nIndex>
// 			)	const
// 		->	void
// 		{}
// 	};
//
// 	template
// 		<	typename
// 				t_tProto
// 		>
// 	concept
// 		ProtoIndexedItem
// 	=	ProtoValueTypePair
// 		<	t_tProto
// 		,	IndexedItem
// 		>
// 	;
//
// 	export template
// 		<	ProtoIndexedItem
// 			...	t_tpIndexedItem
// 		>
// 	struct
// 		IndexedTuple
// 	:	t_tpIndexedItem
// 		...
// 	{
// 		using t_tpIndexedItem::operator[]...;
//
// 		auto constexpr
// 		(	operator[]
// 		)	(	ProtoRingIndex auto
// 					i_vRingIndex
// 			)	const
// 		->	decltype(auto)
// 		{	return
// 			operator[]
// 			(	i_vRingIndex
// 			%	Index<sizeof...(t_tpIndexedItem)>
// 			);
// 		}
// 	};
//
// 	///	TODO: Ideally, this helper should be an immediately invoked lambda. However, upon instantiation
// 	///	this crashes clang as of now.
// 	template
// 		<	typename
// 			...	t_tpItem
// 		,	USize
// 			...	t_npIndex
// 		>
// 	auto constexpr
// 	(	DeduceIndexedTuple
// 	)	(	IndexToken
// 			<	t_npIndex
// 				...
// 			>
// 		)
// 	->	IndexedTuple
// 		<	IndexedItem
// 			<	t_npIndex
// 			,	t_tpItem
// 			>
// 			...
// 		>
// 	{	return
// 		::std::declval
// 		<	IndexedTuple
// 			<	IndexedItem
// 				<	t_npIndex
// 				,	t_tpItem
// 				>
// 				...
// 			>
// 		>();
// 	}
//
// 	template
// 		<	typename
// 			...	t_tpItem
// 		>
// 	using
// 		MakeIndexedTuple
// 	=	decltype
// 		(	DeduceIndexedTuple<t_tpItem...>
// 			(	Sequence
// 				<	sizeof...(t_tpItem)
// 				>()
// 			)
// 		)
// 	;
//
// 	export template
// 		<	typename
// 			...	t_tpItem
// 		>
// 	struct
// 		Tuple
// 	:	MakeIndexedTuple
// 		<	t_tpItem
// 			...
// 		>
// 	{
// 		using MakeIndexedTuple<t_tpItem...>::operator[];
// 	};
}
