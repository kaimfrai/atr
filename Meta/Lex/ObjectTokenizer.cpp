export module Meta.Lex.ObjectTokenizer;

import Meta.Lex.Array.Bounded;
import Meta.Lex.Array.BoundedConst;
import Meta.Lex.Array.BoundedConstVolatile;
import Meta.Lex.Array.BoundedVolatile;
import Meta.Lex.Array.Unbounded;
import Meta.Lex.Array.UnboundedConst;
import Meta.Lex.Array.UnboundedConstVolatile;
import Meta.Lex.Array.UnboundedVolatile;
import Meta.Lex.CV.Const;
import Meta.Lex.CV.ConstVolatile;
import Meta.Lex.CV.Mutable;
import Meta.Lex.CV.MutableVolatile;
import Meta.Lex.CV.Tokenizer;
import Meta.Lex.CV.Volatile;
import Meta.Lex.Member.Tokenizer;
import Meta.Lex.Pointer.Tokenizer;
import Meta.Lex.Match;

export namespace
	Meta::Lex
{
	using
		ObjectTokenizer
	=	Match
		<	CV::Tokenizer<>
		,	CV::Const
		,	CV::ConstVolatile
		,	CV::Mutable
		,	CV::MutableVolatile
		,	CV::Volatile
		,	Array::Bounded<>
		,	Array::BoundedConst
		,	Array::BoundedConstVolatile
		,	Array::BoundedVolatile
		,	Array::Unbounded<>
		,	Array::UnboundedConst
		,	Array::UnboundedConstVolatile
		,	Array::UnboundedVolatile
		,	Member::Tokenizer
		,	Pointer::Tokenizer
		>
	;
}
