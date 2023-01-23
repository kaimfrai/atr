import Meta.Lex.Base;
import Meta.Lex.CV;
import Meta.Lex.Tokenizer;
import Meta.Lex.Array;
import Meta.Size;
import Meta.Token.Specifier;
import Meta.Token.Type;
import Meta.Token.Const;
import Meta.Token.Mutable;
import Meta.Token.Volatile;
import Meta.Token.Extent;

using Meta::Specifier::Mut;
using Meta::Type;
using Meta::Token::Const;
using Meta::Token::Volatile;
using Meta::Token::Mutable;
using Meta::Token::Extent;

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
	<	Meta::USize
			t_nExtent
	,	typename
		...	t_tpQualifier
	>
Meta::TypeID constexpr inline
	ArrayToQualified
=	Type
	<	MatchCVArray
		<	Base<int>
		,	t_nExtent
		,	t_tpQualifier
			...
		>
	>
;

static_assert
(	TokenizeType<int[]>
==	ArrayToQualified<0uz>
);

static_assert
(	TokenizeType<int const[]>
==	ArrayToQualified<0uz, Const>
);

static_assert
(	TokenizeType<int volatile[]>
==	ArrayToQualified<0uz, Volatile>
);

static_assert
(	TokenizeType<int const volatile[]>
==	ArrayToQualified<0uz, Const, Volatile>
);

static_assert
(	TokenizeType<int[42]>
==	ArrayToQualified<42uz>
);

static_assert
(	TokenizeType<int const[42]>
==	ArrayToQualified<42uz, Const>
);

static_assert
(	TokenizeType<int volatile[42]>
==	ArrayToQualified<42uz, Volatile>
);

static_assert
(	TokenizeType<int const volatile[42]>
==	ArrayToQualified<42uz, Const, Volatile>
);

static_assert
(	TokenizeType<Mut<int[42]>>
==	ArrayToQualified<42uz, Mutable>
);

static_assert
(	TokenizeType<Mut<int volatile[42]>>
==	ArrayToQualified<42uz, Mutable, Volatile>
);
