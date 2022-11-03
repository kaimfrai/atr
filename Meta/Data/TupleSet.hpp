export module Meta.Data:TupleSet;

export import :Aggregate;

export import Meta.Token;
export import Meta.Arithmetic;

import std;

using ::Meta::Arithmetic::CountOneBits;
using ::Meta::Arithmetic::GetIndexOfNthOneBit;

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
		[[no_unique_address]]
		Aggregate<t_tItem>
			Item
		;
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

		template
			<	USize
					t_nIndex
			>
		auto constexpr
		(	operator []
		)	(	IndexToken<t_nIndex>
			)	&
		->	auto&
		{
			auto constexpr
				fIgnoreOther
			=	SelectByIndex
				(	ZeroSequence<t_nIndex>
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
			->	Item
			;
		}

		template
			<	USize
					t_nIndex
			>
		auto constexpr
		(	operator []
		)	(	IndexToken<t_nIndex>
			)	const&
		->	auto const&
		{
			SelectByIndex constexpr
				fIgnoreOther
			{	ZeroSequence<t_nIndex>
			};
			return
				fIgnoreOther
				(	static_cast
					<	TupleSetItem<t_tpItem> const
						*
					>(	this
					)
					...
				)
			->	Item
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
			<	typename
				...	t_tpRight
			>
		auto constexpr
		(	Union
		)	(	TupleSet<t_tpRight...> const
				&	i_rRight
			)	const&
		{
			USize constexpr
				nNotContainedCount
			=	(	0uz
				+	...
				+	not
					Contains(Type<t_tpRight>)
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
					,	(	Contains(Type<t_tpRight>)
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
					{	static_cast<TupleSetItem<t_tpItem> const*>
						(	this
						)
					->	Item
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
				}(	Sequence<nNotContainedCount>
				);
			}
		}

		template
			<	USize
					t_nFilterField
			>
		requires
			(	::std::bit_width(t_nFilterField)
			<=	sizeof...(t_tpItem)
			)
		auto constexpr
		(	Filter
		)	(	IndexToken<t_nFilterField>
			)	const&
		{
			USize constexpr
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
					{	(*this)
						[	Index
							<	GetIndexOfNthOneBit
								(	t_nFilterField
								,	t_npIndex
								)
							>
						]
						...
					};
				}(	Sequence<nRequiredItemCount>
				);
		}
	};

	template
		<	typename
			...	t_tpItem
		>
	(	TupleSet
	)	(	Aggregate<t_tpItem>
			...
		)
	->	TupleSet<t_tpItem...>
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
				{	::Meta::ZeroSequence<t_nIndex>
				}(	::std::declval
					<	t_tpItem*
					>()
					...
				)
			)
		>
	{};
}
