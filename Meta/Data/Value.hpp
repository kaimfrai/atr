export module Meta.Data:Value;

export import :Aggregate;

export import Meta.Lex;
export import Meta.Token;

import Std;

export namespace
	Meta
{
	template
		<	typename
				t_tValue
		>
	struct
		Value
	:	Value
		<	TokenizeEntity<t_tValue>
		>
	{
		using
			Value
			<	TokenizeEntity<t_tValue>
			>
		::	Value
		;
	};

	template
		<	typename
			...	t_tpQualifier
		>
	struct
		Value
		<	Lex::MatchCV
			<	void
			,	t_tpQualifier
				...
			>
		>
	:	Aggregate
		<	typename
				Lex::MatchCV
				<	void
				,	t_tpQualifier
					...
				>
			::	Entity
		>
	{};

	template
		<	typename
				t_tSignature
		,	typename
			...	t_tpQualifier
		>
	struct
		Value
		<	Lex::Func
			<	t_tSignature
			,	t_tpQualifier
				...
			>
		>
	:	Aggregate
		<	typename
				Lex::Func
				<	t_tSignature
				,	t_tpQualifier
					...
				>
			::	Entity
		>
	{};

	template
		<	typename
				t_tData
		,	typename
			...	t_tQualifier
		>
	struct
		Value
		<	Lex::CV
			<	t_tData
			,	t_tQualifier
				...
			>
		>
	:	Aggregate
		<	typename
				Lex::CV
				<	t_tData
				,	t_tQualifier
					...
				>
			::	Entity
		>
	{
		using ValueType = typename Lex::CV<t_tData, t_tQualifier...>::Entity;

		constexpr
		(	Value
		)	()
		=	default;

		constexpr
		(	Value
		)	(	ValueType const
				&	i_rValue
			)
		:	Aggregate<ValueType>
			{	i_rValue
			}
		{}

		constexpr
		(	Value
		)	(	ValueType
				&&	i_rValue
			)
		:	Aggregate<ValueType>
			{	::std::move
				(	i_rValue
				)
			}
		{}
	};

	template
		<	typename
				t_tData
		,	typename
				t_tCategory
		>
	struct
		Value
		<	Lex::Ref
			<	t_tData
			,	t_tCategory
			>
		>
	:	Aggregate
		<	typename
				Lex::Ref
				<	t_tData
				,	t_tCategory
				>
			::	Entity
		>
	{
		using ValueType = typename Lex::Ref<t_tData, t_tCategory>::Entity;

		constexpr
		(	Value
		)	()
		=	default;

		constexpr
		(	Value
		)	(	ValueType
					i_rValue
			)
		:	Aggregate<ValueType>
			{	::std::addressof(i_rValue)
			}
		{}
	};

	template
		<	typename
				t_tElement
		,	typename
			...	t_tpQualifier
		>
	struct
		Value
		<	Lex::MatchCVArray
			<	t_tElement
			,	0uz
			,	t_tpQualifier
				...
			>
		>
	:	Aggregate
		<	typename
				Lex::MatchCVArray
				<	t_tElement
				,	0uz
				,	t_tpQualifier
					...
				>
			::	Entity
		>
	{
		using ElementType = typename t_tElement::Entity;

		constexpr
		(	Value
		)	()
		=	default
		;

		constexpr
		(	Value
		)	(	ElementType const*
			)
		:	Aggregate<ElementType[]>
			{}
		{}

		constexpr
		(	Value
		)	(	::std::initializer_list<ElementType const>
			)
		:	Aggregate<ElementType[]>
			{}
		{}
	};

	template
		<	typename
				t_tElement
		,	USize
				t_nExtent
		,	typename
			...	t_tpQualifier
		>
	struct
		Value
		<	Lex::MatchCVArray
			<	t_tElement
			,	t_nExtent
			,	t_tpQualifier
				...
			>
		>
	:	Aggregate
		<	typename
				Lex::MatchCVArray
				<	t_tElement
				,	t_nExtent
				,	t_tpQualifier
					...
				>
			::	Entity
		>
	{
		using ElementType = typename t_tElement::Entity;

		constexpr
		(	Value
		)	()
		=	default
		;

		constexpr
		(	Value
		)	(	ElementType const
				*	i_aValue
			)
		:	Aggregate<ElementType[t_nExtent]>
			{	Data::MakeArrayAggregate<t_nExtent>
				(	i_aValue
				)
			}
		{}

		constexpr
		(	Value
		)	(	::std::initializer_list<ElementType const>
					i_vList
			)
		:	Value
			{	::std::data(i_vList)
			}
		{}
	};

	template
		<	typename
				t_tValue
		>
	(	Value
	)	(	t_tValue
		)
	->	Value
		<	t_tValue
		>
	;

	template
		<	typename
			...	t_tpValue
		>
	(	Value
	)	(	t_tpValue
			...
		)
	->	Value
		<	::std::common_type_t
			<	t_tpValue
				...
			>	[	sizeof...(t_tpValue)
				]
		>
	;

	template
		<	typename
				t_tValue
		,	USize
				t_nExtent
		>
	using
		ArrayValue
	=	Value
		<	TypeEntity
			<	ArrayType
				<	t_tValue
				,	t_nExtent
				>
			>
		>
	;
}
