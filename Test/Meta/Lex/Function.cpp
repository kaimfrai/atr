import Meta.Lex;

using Meta::Type;
using Meta::TokenizeType;
using Meta::Token::Const;
using Meta::Token::Volatile;
using Meta::Token::LRef;
using Meta::Token::RRef;
using Meta::Token::Noexcept;
using Meta::Token::Extent;

using namespace Meta::Lex;

template
	<	typename
		...	t_tpQualifier
	>
Meta::EraseTypeToken constexpr inline
	Qualified
=	Type
	<	Func
		<	Sig
			<	CV<Base<int>>
			,	Param
				<	CV
					<	Ptr
						<	CV<Base<int>>
						>
					>
				,	CV
					<	Ptr
						<	CV<Base<int>>
						>
					>
				,	Ref
					<	Array
						<	CV<Base<int>>
						,	Extent<0uz>
						>
					,	LRef
					>
				>
			>
		,	t_tpQualifier
			...
		>
	>
;

static_assert
(	TokenizeType<int(int*, int*, int(&)[])>
==	Qualified<>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[]) const>
==	Qualified<Const>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[]) volatile>
==	Qualified<Volatile>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[]) const volatile>
==	Qualified<Const, Volatile>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[]) &>
==	Qualified<LRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[]) const&>
==	Qualified<Const, LRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[]) volatile&>
==	Qualified<Volatile, LRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[]) const volatile&>
==	Qualified<Const, Volatile, LRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[]) &&>
==	Qualified<RRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[]) const&&>
==	Qualified<Const, RRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[]) volatile&&>
==	Qualified<Volatile, RRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[]) const volatile&&>
==	Qualified<Const, Volatile, RRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[]) noexcept>
==	Qualified<Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[]) const noexcept>
==	Qualified<Const, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[]) volatile noexcept>
==	Qualified<Volatile, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[]) const volatile noexcept>
==	Qualified<Const, Volatile, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[]) & noexcept>
==	Qualified<LRef, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[]) const& noexcept>
==	Qualified<Const, LRef, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[]) volatile& noexcept>
==	Qualified<Volatile, LRef, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[]) const volatile& noexcept>
==	Qualified<Const, Volatile, LRef, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[]) && noexcept>
==	Qualified<RRef, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[]) const&& noexcept>
==	Qualified<Const, RRef, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[]) volatile&& noexcept>
==	Qualified<Volatile, RRef, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[]) const volatile&& noexcept>
==	Qualified<Const, Volatile, RRef, Noexcept>
);

template
	<	typename
		...	t_tpQualifier
	>
Meta::EraseTypeToken constexpr inline
	EllipsisQualified
=	Type
	<	Func
		<	Sig
			<	CV<Base<int>>
			,	Param
				<	CV
					<	Ptr
						<	CV<Base<int>>
						>
					>
				,	CV
					<	Ptr
						<	CV<Base<int>>
						>
					>
				,	Ref
					<	Array
						<	CV<Base<int>>
						,	Extent<0uz>
						>
					,	LRef
					>
				>
			,	Meta::Token::Ellipsis
			>
		,	t_tpQualifier
			...
		>
	>
;

static_assert
(	TokenizeType<int(int*, int*, int(&)[], ...)>
==	EllipsisQualified<>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], ...) const>
==	EllipsisQualified<Const>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], ...) volatile>
==	EllipsisQualified<Volatile>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], ...) const volatile>
==	EllipsisQualified<Const, Volatile>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], ...) &>
==	EllipsisQualified<LRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], ...) const&>
==	EllipsisQualified<Const, LRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], ...) volatile&>
==	EllipsisQualified<Volatile, LRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], ...) const volatile&>
==	EllipsisQualified<Const, Volatile, LRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], ...) &&>
==	EllipsisQualified<RRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], ...) const&&>
==	EllipsisQualified<Const, RRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], ...) volatile&&>
==	EllipsisQualified<Volatile, RRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], ...) const volatile&&>
==	EllipsisQualified<Const, Volatile, RRef>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], ...) noexcept>
==	EllipsisQualified<Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], ...) const noexcept>
==	EllipsisQualified<Const, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], ...) volatile noexcept>
==	EllipsisQualified<Volatile, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], ...) const volatile noexcept>
==	EllipsisQualified<Const, Volatile, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], ...) & noexcept>
==	EllipsisQualified<LRef, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], ...) const& noexcept>
==	EllipsisQualified<Const, LRef, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], ...) volatile& noexcept>
==	EllipsisQualified<Volatile, LRef, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], ...) const volatile& noexcept>
==	EllipsisQualified<Const, Volatile, LRef, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], ...) && noexcept>
==	EllipsisQualified<RRef, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], ...) const&& noexcept>
==	EllipsisQualified<Const, RRef, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], ...) volatile&& noexcept>
==	EllipsisQualified<Volatile, RRef, Noexcept>
);

static_assert
(	TokenizeType<int(int*, int*, int(&)[], ...) const volatile&& noexcept>
==	EllipsisQualified<Const, Volatile, RRef, Noexcept>
);
