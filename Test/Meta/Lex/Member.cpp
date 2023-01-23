import Meta.Lex.Member;
import Meta.Lex.Tokenizer;
import Meta.Lex.CV;
import Meta.Token.Specifier;
import Meta.Token.Type;
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

struct Class{};

template
	<	typename
		...	t_tpQualifier
	>
Meta::TypeID constexpr inline
	MemberToQualified
=	Type<MatchCVMember<MatchCV<int, t_tpQualifier...>, Class>>
;

static_assert
(	TokenizeType<int Class::*>
==	MemberToQualified<>
);

static_assert
(	TokenizeType<int const Class::*>
==	MemberToQualified<Const>
);

static_assert
(	TokenizeType<int volatile Class::*>
==	MemberToQualified<Volatile>
);

static_assert
(	TokenizeType<int const volatile Class::*>
==	MemberToQualified<Const, Volatile>
);

static_assert
(	TokenizeType<Mut<int> Class::*>
==	MemberToQualified<Mutable>
);

static_assert
(	TokenizeType<Mut<int volatile> Class::*>
==	MemberToQualified<Mutable, Volatile>
);

template
	<	typename
		...	t_tpQualifier
	>
Meta::TypeID constexpr inline
	QualifiedMember
=	Type<CV<Member<MatchCV<int, Const, Volatile>, Class>, t_tpQualifier...>>
;

static_assert
(	TokenizeType<int const volatile Class::*>
==	QualifiedMember<>
);

static_assert
(	TokenizeType<int const volatile Class::* const>
==	QualifiedMember<Const>
);

static_assert
(	TokenizeType<int const volatile Class::* volatile>
==	QualifiedMember<Volatile>
);

static_assert
(	TokenizeType<int const volatile Class::* const volatile>
==	QualifiedMember<Const, Volatile>
);


static_assert
(	TokenizeType<Mut<int const volatile Class::*>>
==	QualifiedMember<Mutable>
);

static_assert
(	TokenizeType<Mut<int const volatile Class::* volatile>>
==	QualifiedMember<Mutable, Volatile>
);
