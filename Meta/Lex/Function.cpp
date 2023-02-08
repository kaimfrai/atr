export module Meta.Lex.Function;

import Meta.Token.Type;
import Meta.Token.Ellipsis;
import Meta.Token.Noexcept;

using ::Meta::TypeToken;

template
	<	typename
		...	t_tpParam
	>
struct
	Param
{
	template
		<	typename
				t_tResult
		>
	[[nodiscard]]
	friend auto constexpr
	(	operator +
	)	(	TypeToken<t_tResult>
		,	Param
		)
		noexcept
	->	TypeToken
		<	auto
				(	typename t_tpParam::Entity
					...
				)
			->	t_tResult
		>
	{	return {}; }
};

template
	<	typename
			t_tResult
	,	typename
			t_tParam
	,	typename
		...	t_tpEllipsis
	>
struct
	Sig
:	decltype
	((	(	t_tResult{}
		+	t_tParam{}
		)
	+	...
	+	t_tpEllipsis
		{}
	))
{
	static_assert
	(	(	(	sizeof...(t_tpEllipsis)
			<=	1uz
			)
		and	...
		and	(	t_tpEllipsis{}
			==	::Meta::Ellipsis
			)
		)
	,	"Invalid Ellipsis token sequence!"
	);
};

template
	<	typename
			t_tSig
	,	typename
		...	t_tpQualifier
	>
struct
	Func
:	decltype
	((	t_tSig{}
	+	...
	+	t_tpQualifier{}
	))
{};

export namespace
	Meta::Lex
{
	template
		<	typename
			...	t_tpParam
		>
	[[nodiscard]]
	auto constexpr
	(	MakeParam
	)	(	t_tpParam
			...
		)
		noexcept
	->	::Param
		<	t_tpParam
			...
		>
	{	return {};	}

	template
		<	typename
				t_tResult
		,	typename
				t_tParam
		,	typename
			...	t_tpEllipsis
		>
	[[nodiscard]]
	auto constexpr
	(	MakeSig
	)	(	t_tResult
		,	t_tParam
		,	t_tpEllipsis
			...
		)
		noexcept
	->	::Sig
		<	t_tResult
		,	t_tParam
		,	t_tpEllipsis
			...
		>
	{	return {};	}


	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	using
		MatchSignature
	=	::Sig
		<	t_tResult
		,	::Param
			<	t_tpParameter
				...
			>
		>
	;

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	using
		MatchTypeSignature
	=	MatchSignature
		<	TypeToken<t_tResult>
		,	TypeToken<t_tpParameter>
			...
		>
	;

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	using
		MatchEllipsisSignature
	=	::Sig
		<	t_tResult
		,	::Param
			<	t_tpParameter
				...
			>
		,	Token::Ellipsis
		>
	;

	template
		<	typename
				t_tSignature
		,	typename
			...	t_tpQualifier
		>
	[[nodiscard]]
	auto constexpr
	(	MakeFunc
	)	(	t_tSignature
		,	t_tpQualifier
			...
		)
		noexcept
	->	::Func
		<	t_tSignature
		,	t_tpQualifier
			...
		>
	{	return {};	}

	template
		<	typename
				t_tSig
		,	typename
			...	t_tpQualifier
		>
	using
		MatchFunction
	=	::Func
		<	t_tSig
		,	t_tpQualifier
			...
		>
	;

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	using
		MatchFreeFunction
	=	::Func
		<	MatchSignature
			<	t_tResult
			,	t_tpParameter
				...
			>
		>
	;

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	using
		MatchFreeEllipsisFunction
	=	::Func
		<	MatchEllipsisSignature
			<	t_tResult
			,	t_tpParameter
				...
			>
		>
	;

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	using
		MatchFreeNoexceptFunction
	=	::Func
		<	MatchSignature
			<	t_tResult
			,	t_tpParameter
				...
			>
		,	Token::Noexcept
		>
	;

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	using
		MatchFreeNoexceptEllipsisFunction
	=	::Func
		<	MatchEllipsisSignature
			<	t_tResult
			,	t_tpParameter
				...
			>
		,	Token::Noexcept
		>
	;
}
