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
				t_tTokenizer
		>
	using
		Match_To
	=	decltype
		(	t_tTokenizer
		::	operator ()
			(	Type
				<	t_tEntity
				>
			)
		)
	;
}
