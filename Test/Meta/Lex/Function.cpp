import Meta.Lex.Function;
import Meta.Lex.Tokenizer;
import Meta.Lex.Pointer;
import Meta.Lex.Reference;
import Meta.Lex.Base;
import Meta.Lex.CV;
import Meta.Lex.Array;
import Meta.Token.LRef;
import Meta.Token.RRef;
import Meta.Token.Noexcept;
import Meta.Token.Type;
import Meta.Token.Const;
import Meta.Token.Volatile;
import Meta.Token.Extent;

using Meta::Type;
using Meta::Token::Const;
using Meta::Token::Volatile;
using Meta::Token::LRef;
using Meta::Token::RRef;
using Meta::Token::Noexcept;
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
	<	typename
		...	t_tpQualifier
	>
Meta::TypeID constexpr inline
	Qualified
=	Type
	<	Func
		<	MatchSignature
			<	MatchCV<int>
			,	MatchCVPointer<MatchCV<int>>
			,	MatchCVPointer<MatchCV<int>>
			,	MatchLRef
				<	MatchCVArray
					<	Base<int>
					,	0uz
					>
				>
			,	MatchLRef
				<	MatchFreeNoexceptFunction
					<	MatchCV<int>
					,	MatchCVPointer<MatchCV<int>>
					>
				>
			>
		,	t_tpQualifier
			...
		>
	>
;

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*) noexcept)>
==	Qualified<>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*) noexcept) const>
==	Qualified<Const>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*) noexcept) volatile>
==	Qualified<Volatile>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*) noexcept) const volatile>
==	Qualified<Const, Volatile>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*) noexcept) &>
==	Qualified<LRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*) noexcept) const&>
==	Qualified<Const, LRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*) noexcept) volatile&>
==	Qualified<Volatile, LRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*) noexcept) const volatile&>
==	Qualified<Const, Volatile, LRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*) noexcept) &&>
==	Qualified<RRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*) noexcept) const&&>
==	Qualified<Const, RRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*) noexcept) volatile&&>
==	Qualified<Volatile, RRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*) noexcept) const volatile&&>
==	Qualified<Const, Volatile, RRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*) noexcept) noexcept>
==	Qualified<Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*) noexcept) const noexcept>
==	Qualified<Const, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*) noexcept) volatile noexcept>
==	Qualified<Volatile, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*) noexcept) const volatile noexcept>
==	Qualified<Const, Volatile, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*) noexcept) & noexcept>
==	Qualified<LRef, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*) noexcept) const& noexcept>
==	Qualified<Const, LRef, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*) noexcept) volatile& noexcept>
==	Qualified<Volatile, LRef, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*) noexcept) const volatile& noexcept>
==	Qualified<Const, Volatile, LRef, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*) noexcept) && noexcept>
==	Qualified<RRef, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*) noexcept) const&& noexcept>
==	Qualified<Const, RRef, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*) noexcept) volatile&& noexcept>
==	Qualified<Volatile, RRef, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*) noexcept) const volatile&& noexcept>
==	Qualified<Const, Volatile, RRef, Noexcept>
);

template
	<	typename
		...	t_tpQualifier
	>
Meta::TypeID constexpr inline
	EllipsisQualified
=	Type
	<	Func
		<	MatchEllipsisSignature
			<	MatchCV<int>
			,	MatchCVPointer<MatchCV<int>>
			,	MatchCVPointer<MatchCV<int>>
			,	Ref
				<	MatchCVArray
					<	Base<int>
					,	0uz
					>
				,	LRef
				>
			,	Ref
				<	MatchFreeNoexceptEllipsisFunction
					<	MatchCV<int>
					,	MatchCVPointer<MatchCV<int>>
					>
				,	LRef
				>
			>
		,	t_tpQualifier
			...
		>
	>
;

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*...) noexcept, ...)>
==	EllipsisQualified<>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*...) noexcept, ...) const>
==	EllipsisQualified<Const>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*...) noexcept, ...) volatile>
==	EllipsisQualified<Volatile>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*...) noexcept, ...) const volatile>
==	EllipsisQualified<Const, Volatile>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*...) noexcept, ...) &>
==	EllipsisQualified<LRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*...) noexcept, ...) const&>
==	EllipsisQualified<Const, LRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*...) noexcept, ...) volatile&>
==	EllipsisQualified<Volatile, LRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*...) noexcept, ...) const volatile&>
==	EllipsisQualified<Const, Volatile, LRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*...) noexcept, ...) &&>
==	EllipsisQualified<RRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*...) noexcept, ...) const&&>
==	EllipsisQualified<Const, RRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*...) noexcept, ...) volatile&&>
==	EllipsisQualified<Volatile, RRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*...) noexcept, ...) const volatile&&>
==	EllipsisQualified<Const, Volatile, RRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*...) noexcept, ...) noexcept>
==	EllipsisQualified<Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*...) noexcept, ...) const noexcept>
==	EllipsisQualified<Const, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*...) noexcept, ...) volatile noexcept>
==	EllipsisQualified<Volatile, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*...) noexcept, ...) const volatile noexcept>
==	EllipsisQualified<Const, Volatile, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*...) noexcept, ...) & noexcept>
==	EllipsisQualified<LRef, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*...) noexcept, ...) const& noexcept>
==	EllipsisQualified<Const, LRef, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*...) noexcept, ...) volatile& noexcept>
==	EllipsisQualified<Volatile, LRef, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*...) noexcept, ...) const volatile& noexcept>
==	EllipsisQualified<Const, Volatile, LRef, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*...) noexcept, ...) && noexcept>
==	EllipsisQualified<RRef, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*...) noexcept, ...) const&& noexcept>
==	EllipsisQualified<Const, RRef, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*...) noexcept, ...) volatile&& noexcept>
==	EllipsisQualified<Volatile, RRef, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], int(&)(int*...) noexcept, ...) const volatile&& noexcept>
==	EllipsisQualified<Const, Volatile, RRef, Noexcept>
);
