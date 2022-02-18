import Meta.Lex;

using Meta::Type;
using Meta::TokenizeType;
using Meta::Token::Const;
using Meta::Token::Volatile;
using Meta::Token::LRef;
using Meta::Token::RRef;

using namespace Meta::Lex;

template
	<	typename
		...	t_tpQualifier
	>
::Meta::EraseTypeToken constexpr inline
	LRefToQualified
=	Type<Ref<MatchCV<int, t_tpQualifier...>, LRef>>
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
::Meta::EraseTypeToken constexpr inline
	RRefToQualified
=	Type<Ref<MatchCV<int, t_tpQualifier...>, RRef>>
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
