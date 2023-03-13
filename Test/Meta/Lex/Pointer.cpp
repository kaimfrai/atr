import Meta.Lex.CV;
import Meta.Lex.Tokenizer;
import Meta.Lex.Pointer;
import Meta.Token.Specifier;
import Meta.Token.Type;
import Meta.Token.TypeID;
import Meta.Token.Const;
import Meta.Token.Mutable;
import Meta.Token.Volatile;

using Meta::Specifier::Mut;
using Meta::Type;
using Meta::Token::Const;
using Meta::Token::Volatile;
using Meta::Token::Mutable;

using namespace Meta::Lex;

template
	<	typename
			t_tEntity
	>
auto constexpr inline
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
::Meta::TypeID constexpr inline
	PointerToQualified
=	Type
	<	MatchCVPointer
		<	MatchCVType<int, t_tpQualifier...>
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
::Meta::TypeID constexpr inline
	QualifiedPointer
=	Type
	<	MatchCVPointer
		<	MatchCVType<int, Const, Volatile>
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
