import Meta.Lex;

using Meta::Specifier::Mut;
using Meta::Type;
using Meta::TokenizeType;
using Meta::Token::Const;
using Meta::Token::Volatile;
using Meta::Token::Mutable;

using namespace Meta::Lex;

template
	<	typename
		...	t_tpQualifier
	>
Meta::EraseTypeToken constexpr inline
	Qualified
=	Type<MatchCV<int, t_tpQualifier...>>
;

static_assert
(	TokenizeType<int>
==	Qualified<>
);

static_assert
(	TokenizeType<int const>
==	Qualified<Const>
);

static_assert
(	TokenizeType<int volatile>
==	Qualified<Volatile>
);

static_assert
(	TokenizeType<int const volatile>
==	Qualified<Const, Volatile>
);

static_assert
(	TokenizeType<Mut<int>>
==	Qualified<Mutable>
);

static_assert
(	TokenizeType<Mut<int volatile>>
==	Qualified<Mutable, Volatile>
);
