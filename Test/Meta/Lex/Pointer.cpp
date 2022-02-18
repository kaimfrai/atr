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
::Meta::EraseTypeToken constexpr inline
	PointerToQualified
=	Type<CV<Ptr<CV<Base<int>, t_tpQualifier...>>>>
;

static_assert
(	TokenizeType<int*>
==	PointerToQualified<>
);

static_assert
(	TokenizeType<int const*>
==	PointerToQualified<Const>
);

static_assert
(	TokenizeType<int volatile*>
==	PointerToQualified<Volatile>
);

static_assert
(	TokenizeType<int const volatile*>
==	PointerToQualified<Const, Volatile>
);

template
	<	typename
		...	t_tpQualifier
	>
::Meta::EraseTypeToken constexpr inline
	QualifiedPointer
=	Type<CV<Ptr<CV<Base<int>>>, t_tpQualifier...>>
;

static_assert
(	TokenizeType<int*>
==	QualifiedPointer<>
);

static_assert
(	TokenizeType<int* const>
==	QualifiedPointer<Const>
);

static_assert
(	TokenizeType<int* volatile>
==	QualifiedPointer<Volatile>
);

static_assert
(	TokenizeType<int* const volatile>
==	QualifiedPointer<Const, Volatile>
);
