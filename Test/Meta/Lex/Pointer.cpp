import Meta.Lex;
import Meta.Token.Specifier;
import Meta.Token.Type;
import Meta.Token.CV;

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
::Meta::EraseTypeToken constexpr inline
	PointerToQualified
=	Type
	<	MatchCVPointer
		<	MatchCV<int, t_tpQualifier...>
		>
	>
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
=	Type
	<	MatchCVPointer
		<	MatchCV<int, Const, Volatile>
		,	t_tpQualifier
			...
		>
	>
;

static_assert
(	TokenizeType<int const volatile*>
==	QualifiedPointer<>
);

static_assert
(	TokenizeType<int const volatile* const>
==	QualifiedPointer<Const>
);

static_assert
(	TokenizeType<int const volatile* volatile>
==	QualifiedPointer<Volatile>
);

static_assert
(	TokenizeType<int const volatile* const volatile>
==	QualifiedPointer<Const, Volatile>
);

static_assert
(	TokenizeType<Mut<int const volatile*>>
==	QualifiedPointer<Mutable>
);

static_assert
(	TokenizeType<Mut<int const volatile* volatile>>
==	QualifiedPointer<Mutable, Volatile>
);
