export module Meta.TupleSet;

export import Std.Array;

export import Meta.Index;
export import Meta.Type;

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
		<	typename
				t_tItem
		>
	struct
		TupleSetItem
	{
		t_tItem
			m_vItem
		;

		static auto constexpr
		(	Contains
		)	(	TypeToken<t_tItem>
			)
		->	bool
		{	return true;	}
	};

	template
		<	typename
			...	t_tpItem
		>
	struct
		TupleSet
	:	TupleSetItem
		<	t_tpItem
		>
		...
	{
		using TupleSetItem<t_tpItem>::Contains...;

		static auto constexpr
		(	size
		)	()
		->	USize
		{	return sizeof...(t_tpItem);	}

		template
			<	typename
					t_tEntity
			>
		static auto constexpr
		(	Contains
		)	(	TypeToken<t_tEntity>
			)
		->	bool
		{	return false;	}

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

		auto constexpr
		(	operator []
		)	(	ProtoIndex auto
					i_vIndex
			)	&
		->	auto&
		{
			auto constexpr
				fIgnoreOther
			=	SelectByIndex
				(	Sequence
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

		auto constexpr
		(	operator []
		)	(	ProtoIndex auto
					i_vIndex
			)	const&
		->	auto const&
		{
			using namespace Literals;
			auto constexpr
				fIgnoreOther
			=	SelectByIndex
				(	Sequence
					(	i_vIndex
					)
				=	0_idx
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

		template
			<	typename
					t_tEntity
			>
		static auto constexpr
		(	IndexOf
		)	(	TypeToken<t_tEntity>
					i_vItem
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
			or	(	bFound = (i_vItem == Type<t_tpItem>)
				,	nIndex += not bFound
				,	bFound
				)
			);

			return
				nIndex
			;
		}

		template
			<	typename
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
	};

	template
		<	typename
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
		<	typename
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
		,	typename
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
				(	::Meta::Sequence<t_nIndex>()
				=	::Meta::Index<0uz>
				)(	::std::declval
					<	t_tpItem*
					>()
					...
				)
			)
		>
	{};
}
