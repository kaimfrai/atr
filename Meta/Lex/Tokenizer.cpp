export module Meta.Lex.Tokenizer;

import Meta.Lex.FreeFunctionTokenizer;
import Meta.Lex.FreeEllipsisFunctionTokenizer;
import Meta.Lex.OwnedFunctionTokenizer;
import Meta.Lex.OwnedEllipsisFunctionTokenizer;
import Meta.Lex.ReferenceTokenizer;
import Meta.Lex.ObjectTokenizer;
import Meta.Lex.Match;
import Meta.Token.Type;

export namespace
	Meta::Lex
{
	using
		SingleTokenizer
	=	Match
		<	FreeFunctionTokenizer
		,	FreeEllipsisFunctionTokenizer
		,	OwnedFunctionTokenizer
		,	OwnedEllipsisFunctionTokenizer
		,	ReferenceTokenizer
		,	ObjectTokenizer
		>
	;

	struct
		Tokenizer
	{
		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_tEntity
				>	i_vType
			)
			noexcept
		->	decltype(auto)
		{	return
			SingleTokenizer
			{}(	i_vType
			,	Tokenizer
				{}
			);
		}
	};
}

export namespace
	Meta
{
	Lex::Tokenizer const extern
		Tokenize
	;

	template
		<	typename
				t_tEntity
		>
	using
		TokenizeEntity
	=	decltype
		(	Tokenize
			(	Type<t_tEntity>
			)
		)
	;

	template
		<	typename
				t_tEntity
		>
	TokenizeEntity<t_tEntity> constexpr inline
		TokenizeType
	{};
}
