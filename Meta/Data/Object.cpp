export module Meta.Data.Object;

export import Meta.Lex;
import Meta.Token.Specifier;
import Meta.Token.CV;

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
		<	Lex::MatchCV
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
		<	Lex::Func
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
		<	Lex::CV
			<	t_tData
			,	t_tpQualifier
				...
			>
		>
	{
		[[no_unique_address]]
		typename
			Lex::CV
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
		<	Lex::CV
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
			Lex::CV
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
		<	Lex::CV
			<	t_tData
			,	Token::Const
			,	t_tpQualifier
				...
			>
		>
	{
		[[no_unique_address]]
		typename
			Lex::CV
			<	t_tData
			,	//	remove const
				t_tpQualifier
				...
			>
		::	Entity
			Data
		;

		auto constexpr
		(	operator =
		)	(	Object const&
			)	&
		=	delete;

		auto constexpr
		(	operator =
		)	(	Object&&
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
		<	Lex::Ref
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
		>
	struct
		Object
		<	Lex::MatchCVArray
			<	Lex::CV<t_tData>
			,	0uz
			>
		>
	{};

	template
		<	typename
				t_tData
		>
	struct
		Object
		<	Lex::MatchCVArray
			<	Lex::CV<t_tData>
			,	0uz
			,	Token::Const
			>
		>
	{};

	template
		<	typename
				t_tData
		>
	struct
		Object
		<	Lex::MatchCVArray
			<	Lex::CV<t_tData>
			,	0uz
			,	Token::Volatile
			>
		>
	{};
	template
		<	typename
				t_tData
		>
	struct
		Object
		<	Lex::MatchCVArray
			<	Lex::CV<t_tData>
			,	0uz
			,	Token::Const
			,	Token::Volatile
			>
		>
	{};
}
