export module Meta.Lex.Array;

import Meta.Lex.CV;

import Meta.Token.Extent;
import Meta.Token.Type;
import Meta.Size;

template
	<	typename
			t_tElement
	,	typename
			t_tExtent
	>
struct
	Array
:	decltype
	(	t_tElement{}
	+	t_tExtent{}
	)
{};

export namespace
	Meta::Lex
{
	template
		<	typename
				t_tElement
		,	typename
				t_tExtent
		>
	using
		Array
	=	::Array
		<	t_tElement
		,	t_tExtent
		>
	;

	template
		<	typename
				t_tElement
		,	USize
				t_nExtent
		,	typename
			...	t_tpQualifier
		>
	using
		MatchCVArray
	=	CV
		<	::Array
			<	t_tElement
			,	Token::Extent<t_nExtent>
			>
		,	t_tpQualifier
			...
		>
	;

	template
		<	typename
				t_tElement
		,	USize
				t_nExtent
		,	typename
			...	t_tpQualifier
		>
	[[nodiscard]]
	auto constexpr
	(	MakeArray
	)	(	CV<t_tElement>
		,	Token::Extent<t_nExtent>
		,	t_tpQualifier
			...
		)
		noexcept
	->	MatchCVArray
		<	t_tElement
		,	t_nExtent
		,	t_tpQualifier
			...
		>
	{	return {};	}
}
