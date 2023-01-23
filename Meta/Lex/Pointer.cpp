export module Meta.Lex.Pointer;

import Meta.Lex.CV;
import Meta.Lex.Array;
import Meta.Lex.Function;

import Meta.Token.Pointer;
import Meta.Token.Type;

template
	<	typename
			t_tEntity
	>
struct
	Ptr
:	decltype
	(	t_tEntity{}
	+	::Meta::Pointer
	)
{};

export namespace
	Meta::Lex
{
	template
		<	typename
				t_tEntity
		>
	using
		Ptr
	=	::Ptr
		<	t_tEntity
		>
	;

	template
		<	typename
				t_tEntity
		,	typename
			...	t_tpQualifier
		>
	using
		MatchCVPointer
	=	CV
		<	::Ptr<t_tEntity>
		,	t_tpQualifier
			...
		>
	;

	template
		<	typename
				t_tEntity
		,	typename
			...	t_tpQualifier
		>
	[[nodiscard]]
	auto constexpr
	(	MakePtr
	)	(	t_tEntity
		,	t_tpQualifier
			...
		)
		noexcept
	->	MatchCVPointer
		<	t_tEntity
		,	t_tpQualifier
			...
		>
	{	return {};	}
}
