export module Meta.TupleSet;

export import Std;

export import Meta.Index;
export import Meta.Bit;
export import Meta.Type;
export import Meta.Concepts;

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
		<	ProtoSizedObject
				t_tItem
		>
	struct
		TupleSetItem
	{
		t_tItem
			m_vItem
			[[no_unique_address]]
		;
	};

	template
		<	ProtoSizedObject
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

		explicit constexpr
		(	TupleSet
		)	(	t_tpItem const
				&
				...	i_rpItem
			)
		:	TupleSetItem<t_tpItem>
			{	{ i_rpItem }
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

		template
			<	ProtoSizedObject
				...	t_tpMergeItem
			>
		auto constexpr
		(	Union
		)	(	TupleSet<t_tpMergeItem...> const
				&	i_rMergeSet
			)	const
		{
			USize constexpr
				nNotContainedCount
			=	(	0uz
				+	...
				+	not
					Contains(Type<t_tpMergeItem>)
				)
			;
			if	constexpr
				(	nNotContainedCount
				==	0uz
				)
				return *this;
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
					,	(	Contains(Type<t_tpMergeItem>)
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
					::Meta::TupleSet
					{		static_cast<TupleSetItem<t_tpItem> const*>
							(	this
							)
						->	m_vItem
						...
					,	i_rMergeSet
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
			<	USize
					t_nFilterField
			>
		requires
			(	::std::bit_width(t_nFilterField)
			<=	size()
			)
		auto constexpr
		(	Filter
		)	(	IndexToken<t_nFilterField>
			)	const
		{
			auto constexpr
				nRequiredItemCount
			=	CountOneBits(t_nFilterField)
			;
			if	constexpr
				(	nRequiredItemCount
				==	sizeof...(t_tpItem)
				)
				return *this;
			else
				return
				[	&
				]	<	USize
						...	t_npIndex
					>(	IndexToken<t_npIndex...>
					)
				{	return
					::Meta::TupleSet
					{	get
						<	GetIndexOfNthOneBit
							(	t_nFilterField
							,	t_npIndex
							)
						>()
						...
					};
				}(	Sequence<nRequiredItemCount>()
				);
		}
	};

	template
		<	ProtoSizedObject
			...	t_tpItem
		>
	(	TupleSet
	)	(	t_tpItem const
			&
			...
		)
	->	TupleSet<t_tpItem...>
	;
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
