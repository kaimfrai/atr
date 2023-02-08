export module Meta.Lex.Match;

import Meta.Token.Type;

export namespace
	Meta::Lex
{
	template
		<	typename
			...	t_tpTokenizer
		>
	struct
		Match
	:	t_tpTokenizer
		...
	{
		using
			t_tpTokenizer
		::	operator ()
			...
		;
	};
}

export namespace
	Meta
{
	template
		<	typename
				t_tEntity
		,	typename
			...	t_tpTokenizer
		>
	using
		Match_To
	=	decltype
		(	Lex::Match
			<	t_tpTokenizer
				...
			>
		::	operator ()
			(	Type
				<	t_tEntity
				>
			)
		)
	;
}
