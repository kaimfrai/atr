export module Meta.Data.Object;

import Meta.Lex.Tokenizer;
import Meta.Lex.Reference;
import Meta.Lex.Function;
import Meta.Lex.CV;
import Meta.Lex.Array;
import Meta.Token.Const;
import Meta.Token.Mutable;

export namespace
	Meta::Data
{
	template
		<	typename
				t_tUntokenized
		>
	struct
		Object
	:	Object
		<	Meta::TokenizeEntity<t_tUntokenized>
		>
	{};

	template
		<	typename
			...	t_tpQualifier
		>
	struct
		Object
		<	Lex::MatchCVType
			<	void
			,	t_tpQualifier
				...
			>
		>
	{};

	template
		<	typename
				t_tSignature
		,	typename
			...	t_tpQualifier
		>
	struct
		Object
		<	Lex::MatchFunction
			<	t_tSignature
			,	t_tpQualifier
				...
			>
		>
	{};

	template
		<	typename
				t_tData
		,	typename
			...	t_tpQualifier
		>
	struct
		Object
		<	Lex::MatchCV
			<	t_tData
			,	t_tpQualifier
				...
			>
		>
	{
		[[no_unique_address]]
		typename
			Lex::MatchCV
			<	t_tData
			,	t_tpQualifier
				...
			>
		::	Entity
			Data
		;
	};

	template
		<	typename
				t_tData
		,	typename
			...	t_tpQualifier
		>
	struct
		Object
		<	Lex::MatchCV
			<	t_tData
			,	Token::Mutable
			,	t_tpQualifier
				...
			>
		>
	{
		[[no_unique_address]]
		mutable
		typename
			Lex::MatchCV
			<	t_tData
			,	t_tpQualifier
				...
			>
		::	Entity
			Data
		;
	};

	template
		<	typename
				t_tData
		,	typename
			...	t_tpQualifier
		>
	struct
		Object
		<	Lex::MatchCV
			<	t_tData
			,	Token::Const
			,	t_tpQualifier
				...
			>
		>
	{
		[[no_unique_address]]
		typename
			Lex::MatchCV
			<	t_tData
			,	//	remove const
				t_tpQualifier
				...
			>
		::	Entity
			Data
		;

		auto constexpr
		(	operator=
		)	(	Object const&
			)	&
		=	delete;
	};

	template
		<	typename
				t_tData
		,	typename
				t_tCategory
		>
	struct
		Object
		<	Lex::MatchRef
			<	t_tData
			,	t_tCategory
			>
		>
	{
		typename t_tData::Entity
		*	Data
		;
	};

	template
		<	typename
				t_tData
		,	typename
			...	t_tpQualifier
		>
	struct
		Object
		<	Lex::MatchCVArray
			<	t_tData
			,	0uz
			,	t_tpQualifier
				...
			>
		>
	{};

	template
		<	typename
				t_tData
		,	typename
			...	t_tpQualifier
		>
	struct
		Object
		<	Lex::MatchCVArray
			<	t_tData
			,	0uz
			,	Token::Const
			,	t_tpQualifier
				...
			>
		>
	{};
}
