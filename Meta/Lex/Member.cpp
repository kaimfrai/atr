export module Meta.Lex.Member;

import Meta.Lex.CV;
import Meta.Lex.Function;

import Meta.Token.Owner;
import Meta.Token.Type;

export namespace
	Meta::Lex
{
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
		+	Owner<t_tOwner>
		)
	{};

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
	=	CV
		<	Member
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
	auto constexpr
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
