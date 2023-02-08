export module Meta.Lex.Array;

import Meta.Lex.CV;

import Meta.Token.Extent;
import Meta.Size;

using ::Meta::USize;

template
	<	typename
			t_tElement
	,	USize
			t_nExtent
	>
struct
	Array
:	decltype
	(	t_tElement{}
	+	Meta::Extent
		<	t_nExtent
		>
	)
{};

export namespace
	Meta::Lex
{
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
	=	//	matching all const objects should include arrays, therefore
		//	qualifiers are outside of the array and not attached to the element
		MatchCV
		<	::Array
			<	t_tElement
			,	t_nExtent
			>
		,	t_tpQualifier
			...
		>
	;

	template
		<	typename
				t_tElement
		,	typename
			...	t_tpQualifier
		,	USize
				t_nExtent
		>
	[[nodiscard]]
	auto constexpr
	(	MakeArray
	)	(	MatchCV<t_tElement>
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
