import Meta.Lex.Reference;
import Meta.Lex.Tokenizer;
import Meta.Lex.CV;
import Meta.Token.LRef;
import Meta.Token.RRef;
import Meta.Token.Type;
import Meta.Token.TypeID;
import Meta.Token.Const;
import Meta.Token.Volatile;

using Meta::Type;
using Meta::Token::Const;
using Meta::Token::Volatile;
using Meta::Token::LRef;
using Meta::Token::RRef;

using namespace Meta::Lex;

template
	<	typename
			t_tEntity
	>
auto constexpr
	TokenizeType
=	::Meta::Type
	<	::Meta::TokenizeEntity
		<	t_tEntity
		>
	>
;

template
	<	typename
		...	t_tpQualifier
	>
::Meta::TypeID constexpr
	LRefToQualified
=	Type
	<	MatchLRef
		<	MatchCVType<int, t_tpQualifier...>
		>
	>
;

static_assert
(	TokenizeType<int&>
==	LRefToQualified<>
);

static_assert
(	TokenizeType<int const&>
==	LRefToQualified<Const>
);

static_assert
(	TokenizeType<int volatile&>
==	LRefToQualified<Volatile>
);

static_assert
(	TokenizeType<int const volatile&>
==	LRefToQualified<Const, Volatile>
);

template
	<	typename
		...	t_tpQualifier
	>
::Meta::TypeID constexpr
	RRefToQualified
=	Type
	<	MatchRRef
		<	MatchCVType<int, t_tpQualifier...>
		>
	>
;

static_assert
(	TokenizeType<int&&>
==	RRefToQualified<>
);

static_assert
(	TokenizeType<int const&&>
==	RRefToQualified<Const>
);

static_assert
(	TokenizeType<int volatile&&>
==	RRefToQualified<Volatile>
);

static_assert
(	TokenizeType<int const volatile&&>
==	RRefToQualified<Const, Volatile>
);
