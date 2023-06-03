export module Meta.Lex.Member;

import Meta.Lex.CV;
import Meta.Lex.Function;

import Meta.Token.Owner;
import Meta.Token.Type;

template
	<	typename
			t_tMember
	,	typename
			t_tOwner
	>
struct
	Member
:	decltype
	(	t_tMember{}
	+	::Meta::Owner<t_tOwner>
	)
{};

export namespace
	Meta::Lex
{
	template
		<	typename
				t_tMember
		,	typename
				t_tOwner
		,	typename
			...	t_tpQualifier
		>
	using
		MatchCVMember
	=	MatchCV
		<	::Member
			<	t_tMember
			,	t_tOwner
			>
		,	t_tpQualifier
			...
		>
	;

	template
		<	typename
				t_tMember
		,	typename
				t_tOwner
		,	typename
			...	t_tpQualifier
		>
	[[nodiscard]]
	auto constexpr inline
	(	MakeMember
	)	(	t_tMember
		,	Token::Owner<t_tOwner>
		,	t_tpQualifier
			...
		)
		noexcept
	->	MatchCVMember
		<	t_tMember
		,	t_tOwner
		,	t_tpQualifier
			...
		>
	{	return {};	}
}
