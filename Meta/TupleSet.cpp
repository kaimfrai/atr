export module Meta.TupleSet;

export import Std;

export import Meta.Index;
export import Meta.Type;
export import Meta.Concept;
export import Meta.Bit;
export import Meta.Value;

import Meta.Ignore;

namespace
	Meta
{
	template
		<	USize
			...	t_npFront
		>
	struct
		SelectByIndex
	{
		explicit constexpr
		(	SelectByIndex
		)	(	IndexToken<t_npFront...>
			)
		{}

		template
			<	typename
					t_tSelection
			>
		auto constexpr
		(	operator()
		)	(	ValueToType<t_npFront, void const*>
				...
			,	t_tSelection
				*	i_aSeĺection
			,	...
			)	const
		->	t_tSelection*
		{	return i_aSeĺection;	}
	};

	template
		<	USize
			...	t_npFront
		>
	(	SelectByIndex
	)	(	IndexToken<t_npFront...>
		)
	->	SelectByIndex<t_npFront...>
	;
}

export namespace
	Meta
{
	template
		<	ProtoAll
				t_tItem
		>
	struct
		TupleSetItem
	{
		Value<t_tItem>
			m_vItem
			[[no_unique_address]]
		;

		constexpr
		(	TupleSetItem
		)	()
		=	default
		;

		template
			<	ProtoArgument
				...	t_tpArgument
			>
		constexpr
		(	TupleSetItem
		)	(	t_tpArgument
				&&
				...	i_rpArgument
			)
		requires
			::std::constructible_from
			<	Value<t_tItem>
			,	t_tpArgument
				...
			>
		:	m_vItem
			{	::std::forward
				<	t_tpArgument
				>(	i_rpArgument
				)...
			}
		{}
	};

	template
		<	ProtoAll
			...	t_tpItem
		>
	struct
		TupleSet
	:	TupleSetItem
		<	t_tpItem
		>
		...
	{
		static auto constexpr
		(	size
		)	()
		->	USize
		{	return sizeof...(t_tpItem);	}

		static auto constexpr
		(	Contains
		)	(	EraseTypeToken
					i_vType
			)
		->	bool
		{	return (... or (i_vType == Type<t_tpItem>));	}

		constexpr
		(	TupleSet
		)	()
		=	default;

		explicit constexpr
		(	TupleSet
		)	(	CopyConstructibleValue<t_tpItem> const
				&
				...	i_rpItem
			)
		requires
			(	sizeof...(t_tpItem)
			>	0uz
			)
		:	TupleSetItem<t_tpItem>
			{	i_rpItem
			}
			...
		{}

		template
			<	USize
					t_nIndex
			>
		auto constexpr
		(	operator []
		)	(	IndexToken<t_nIndex>
					i_vIndex
			)	&
		->	auto&
		{
			auto constexpr
				fIgnoreOther
			=	SelectByIndex
				(	ValueSequence
					(	i_vIndex
					)
				)
			;
			return
				fIgnoreOther
				(	static_cast
					<	TupleSetItem<t_tpItem>
						*
					>(	this
					)
					...
				)
			->	m_vItem
			;
		}

		template
			<	USize
					t_nIndex
			>
		auto constexpr
		(	operator []
		)	(	IndexToken<t_nIndex>
					i_vIndex
			)	const&
		->	auto const&
		{
			auto constexpr
				fIgnoreOther
			=	SelectByIndex
				(	ValueSequence
					(	i_vIndex
					)
				)
			;
			return
				fIgnoreOther
				(	static_cast
					<	TupleSetItem<t_tpItem> const
						*
					>(	this
					)
					...
				)
			->	m_vItem
			;
		}

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

		static auto constexpr
		(	IndexOf
		)	(	EraseTypeToken
					i_vType
			)
		{
			USize
				nIndex
			=	0uz
			;
			bool
				bFound
			=	false
			;

			(void)
			(	...
			or	(	bFound = (i_vType == Type<t_tpItem>)
				,	nIndex += not bFound
				,	bFound
				)
			);

			return
				nIndex
			;
		}
	};

	template
		<	ProtoAll
			...	t_tpItem
		>
	(	TupleSet
	)	(	Value<t_tpItem> const
			&
			...
		)
	->	TupleSet<t_tpItem...>
	;

	template
		<	ProtoCopyConstructibleAsValue
			...	t_tpLeft
		,	ProtoCopyConstructibleAsValue
			...	t_tpRight
		>
	auto constexpr
	(	SetUnion
	)	(	TupleSet<t_tpLeft...> const
			&	i_rLeft
		,	TupleSet<t_tpRight...> const
			&	i_rRight
		)
	{
		USize constexpr
			nNotContainedCount
		=	(	0uz
			+	...
			+	not
				TupleSet<t_tpLeft...>
			::	Contains(Type<t_tpRight>)
			)
		;
		if	constexpr
			(	nNotContainedCount
			==	0uz
			)
			return i_rLeft;
		else
		{
			auto constexpr
				vNotContainedIndices
			=[]
			{	::std::array<USize, nNotContainedCount>
					vIndexBuffer
				{};

				USize
					nArrayIndex
				=	0uz
				;
				USize
					nElementIndex
				=	0uz
				;
				(void)
				(	...
				,	(	TupleSet<t_tpLeft...>
					::	Contains(Type<t_tpRight>)
					?	nElementIndex++
					:	vIndexBuffer[nArrayIndex++] = nElementIndex++
					)
				);

				return vIndexBuffer;
			}();

			return
			[	&
			]	<	USize
					...	t_npIndex
				>(	IndexToken<t_npIndex...>
				)
			{	return
				TupleSet
				{	static_cast<TupleSetItem<t_tpLeft> const&>
					(	i_rLeft
					)
				.	m_vItem
					...
				,	i_rRight
					[	Index
						<	vNotContainedIndices
							[	t_npIndex
							]
						>
					]
					...
				};
			}(	Sequence(Index<nNotContainedCount>)
			);
		}
	}

	template
		<	ProtoCopyConstructibleAsValue
			...	t_tpItem
		,	USize
				t_nFilterField
		>
	requires
		(	::std::bit_width(t_nFilterField)
		<=	sizeof...(t_tpItem)
		)
	auto constexpr
	(	Filter
	)	(	TupleSet<t_tpItem...> const
			&	i_rTuple
		,	IndexToken<t_nFilterField>
		)
	{
		auto constexpr
			nRequiredItemCount
		=	CountOneBits(t_nFilterField)
		;
		if	constexpr
			(	nRequiredItemCount
			==	sizeof...(t_tpItem)
			)
			return i_rTuple;
		else
			return
			[	&
			]	<	USize
					...	t_npIndex
				>(	IndexToken<t_npIndex...>
				)
			{	return
				TupleSet
				{	i_rTuple
					[	Index
						<	GetIndexOfNthOneBit
							(	t_nFilterField
							,	t_npIndex
							)
						>
					]
					...
				};
			}(	Sequence<nRequiredItemCount>()
			);
	}
}

namespace
	std
{
	template
		<	::Meta::ProtoValue
			...	t_tpItem
		>
	struct
		tuple_size
		<	::Meta::TupleSet
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
		,	::Meta::ProtoValue
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
			(	::Meta::SelectByIndex
				{	::Meta::ValueSequence<t_nIndex>()
				}(	::std::declval
					<	t_tpItem*
					>()
					...
				)
			)
		>
	{};
}
