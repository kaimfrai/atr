import Meta.Lex;

using Meta::Type;
using Meta::TokenizeType;
using Meta::Token::Const;
using Meta::Token::Volatile;

using namespace Meta::Lex;

struct Class{};

template
	<	typename
		...	t_tpQualifier
	>
Meta::EraseTypeToken constexpr inline
	MemberToQualified
=	Type<CV<Member<CV<Base<int>, t_tpQualifier...>, Owner<Class>>>>
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

template
	<	typename
		...	t_tpQualifier
	>
Meta::EraseTypeToken constexpr inline
	QualifiedMember
=	Type<CV<Member<CV<Base<int>>, Owner<Class>>, t_tpQualifier...>>
;

static_assert
(	TokenizeType<int Class::*>
==	QualifiedMember<>
);

static_assert
(	TokenizeType<int Class::* const>
==	QualifiedMember<Const>
);

static_assert
(	TokenizeType<int Class::* volatile>
==	QualifiedMember<Volatile>
);

static_assert
(	TokenizeType<int Class::* const volatile>
==	QualifiedMember<Const, Volatile>
);
