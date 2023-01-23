export module Meta.Lex.Reference;

import Meta.Lex.CV;

import Meta.Token.LRef;
import Meta.Token.RRef;
import Meta.Token.Type;

template
	<	typename
			t_tEntity
	,	typename
			t_tReference
	>
struct
	Ref
:	decltype
	(	t_tEntity{}
	+	t_tReference{}
	)
{};

export namespace
	Meta::Lex
{
	template
		<	typename
				t_tEntity
		,	typename
				t_tCategory
		>
	[[nodiscard]]
	auto constexpr
	(	MakeRef
	)	(	t_tEntity
		,	t_tCategory
		)
		noexcept
	->	::Ref
		<	t_tEntity
		,	t_tCategory
		>
	{	return {};	}

	template
		<	typename
				t_tEntity
		,	typename
				t_tCategory
		>
	using
		Ref
	=	::Ref
		<	t_tEntity
		,	t_tCategory
		>
	;

	template
		<	typename
				t_tEntity
		>
	using
		MatchLRef
	=	::Ref
		<	t_tEntity
		,	Token::LRef
		>
	;

	template
		<	typename
				t_tEntity
		>
	using
		MatchRRef
	=	::Ref
		<	t_tEntity
		,	Token::RRef
		>
	;
}
