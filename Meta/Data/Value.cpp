export module Meta.Data.Value;

import Meta.Data.Aggregate;
import Meta.Data.Aggregate.Array;

import Meta.Lex.Tokenizer;
import Meta.Lex.Reference;
import Meta.Lex.Function;
import Meta.Lex.CV;
import Meta.Lex.Array;
import Meta.Token.Array;
import Meta.Token.Type;
import Meta.Size;

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
		<	Lex::MatchCVType
			<	void
			,	t_tpQualifier
				...
			>
		>
	:	Aggregate
		<	typename
				Lex::MatchCVType
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
		<	Lex::MatchFunction
			<	t_tSignature
			,	t_tpQualifier
				...
			>
		>
	:	Aggregate
		<	typename
				Lex::MatchFunction
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
		<	Lex::MatchCV
			<	t_tData
			,	t_tQualifier
				...
			>
		>
	:	Aggregate
		<	typename
				Lex::MatchCV
				<	t_tData
				,	t_tQualifier
					...
				>
			::	Entity
		>
	{
		using ValueType = typename Lex::MatchCV<t_tData, t_tQualifier...>::Entity;

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
		<	Lex::MatchRef
			<	t_tData
			,	t_tCategory
			>
		>
	:	Aggregate
		<	typename
				Lex::MatchRef
				<	t_tData
				,	t_tCategory
				>
			::	Entity
		>
	{
		using ValueType = typename Lex::MatchRef<t_tData, t_tCategory>::Entity;

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
		using
			ArrayType
		=	typename
				Lex::MatchCVArray
				<	t_tElement
				,	t_nExtent
				,	t_tpQualifier
					...
				>
			::	Entity
		;

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
		:	Aggregate
			<	ArrayType
			>{	Data::MakeArrayAggregate<ArrayType>
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
