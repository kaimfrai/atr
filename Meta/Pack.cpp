export module Meta.Pack;

export import Meta.Common;
export import Meta.Concepts;

export namespace
	Meta
{
	template
		<	USize
				t_nIndex
		>
	struct
		Index
	{};

	template
		<	typename
				t_tProto
		>
	concept
		ProtoIndex
	=	ProtoValuePack
		<	t_tProto
		,	Index
		>
	;

	template
		<	SSize
				t_nRingIndex
		>
	struct
		RingIndex
	{
		template
			<	USize
					t_nIndex
			>
		friend auto constexpr
		(	operator %
		)	(	RingIndex
			,	Index<t_nIndex>
			)
		->	ProtoIndex auto
		{
			bool constexpr
				bNegative
			=	(	t_nRingIndex
				<	0z
				)
			;

			USize constexpr
				nPositiveIndex
			=	(	bNegative
				?	(	static_cast<USize>
						(	-
							(	t_nRingIndex
							+	1z
							)
						)
					+	1uz
					)
				:	static_cast<USize>
					(	t_nRingIndex
					)
				)
			;
			USize constexpr
				nRemainder
			=	(	nPositiveIndex
				%	t_nIndex
				)
			;

			USize constexpr
				nTrueIndex
			=	(	(	bNegative
					and (	nRemainder
						!=	0uz
						)
					)
				?	(	t_nRingIndex
					-	nRemainder
					)
				:	nRemainder
				)
			;
			return
			Index<nTrueIndex>
			{};
		}
	};

	template
		<	typename
				t_tProto
		>
	concept
		ProtoRingIndex
	=	ProtoValuePack
		<	t_tProto
		,	RingIndex
		>
	;

	template
		<	USize
				t_nIndex
		,	typename
				t_tItem
		>
	struct
		IndexedItem
	{
		t_tItem
			m_vItem
		;

		auto constexpr
		(	operator[]
		)	(	Index<t_nIndex>
			)	&
		->	t_tItem&
		{	return m_vItem;	}

		auto constexpr
		(	operator[]
		)	(	Index<t_nIndex>
			)	const&
		->	t_tItem const&
		{	return m_vItem;	}

		auto constexpr
		(	operator[]
		)	(	Index<t_nIndex>
			)	&&
		->	t_tItem
		{	return std::move(m_vItem);	}
	};

	template
		<	USize
				t_nIndex
		,	ProtoVoid
				t_tItem
		>
	struct
		IndexedItem
		<	t_nIndex
		,	t_tItem
		>
	{
		auto constexpr
		(	operator[]
		)	(	Index<t_nIndex>
			)	const
		->	void
		{}
	};

	template
		<	typename
				t_tProto
		>
	concept
		ProtoIndexedItem
	=	ProtoValueTypePair
		<	t_tProto
		,	IndexedItem
		>
	;

	template
		<	ProtoIndexedItem
			...	t_tpIndexedItem
		>
	struct
		IndexedTuple
	:	t_tpIndexedItem
		...
	{
		using t_tpIndexedItem::operator[]...;

		auto constexpr
		(	operator[]
		)	(	ProtoRingIndex auto
					i_vRingIndex
			)	const
		->	decltype(auto)
		{	return
			operator[]
			(	i_vRingIndex
			%	Index<sizeof...(t_tpIndexedItem)>{}
			);
		}
	};
}

///	TODO: Ideally, this helper should be an immediately invoked lambda. However, upon instantiation
///	this crashes clang-14 as of now.
template
	<	std::size_t
		...	t_tpIndex
	,	typename
		...	t_tpItem
	>
auto constexpr
(	DeduceIndexedTuple
)	(	std::index_sequence
		<	t_tpIndex
			...
		>
	,	t_tpItem&&
		...
	)
->	Meta::IndexedTuple
	<	Meta::IndexedItem
		<	t_tpIndex
		,	t_tpItem
		>
		...
	>
{	return
	std::declval
	<	Meta::IndexedTuple
		<	Meta::IndexedItem
			<	t_tpIndex
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
	(	DeduceIndexedTuple
		(	std::make_index_sequence
			<	sizeof...(t_tpItem)
			>{}
		,	std::declval<t_tpItem>()
			...
		)
	)
;

export namespace
	Meta
{
	template
		<	typename
			...	t_tpItem
		>
	struct
		Tuple
	:	MakeIndexedTuple
		<	t_tpItem
			...
		>
	{
		using MakeIndexedTuple<t_tpItem...>::operator[];
	};
}
