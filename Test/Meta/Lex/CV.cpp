import Meta.Lex;

using Meta::Type;
using Meta::TokenizeType;
using Meta::Token::Const;
using Meta::Token::Volatile;

using namespace Meta::Lex;

template
	<	typename
		...	t_tpQualifier
	>
Meta::EraseTypeToken constexpr inline
	Qualified
=	Type<CV<Base<int>, t_tpQualifier...>>
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
