export module Meta.Trait.Match.Member;

import Meta.Lex.Member;
import Meta.Logic.LiteralBase;

export namespace
	Meta::Trait::Match
{
	struct
		Member
	{
		template
			<	typename
					t_tMember
			,	typename
					t_tOwner
			,	typename
				...	t_tpQualifier
			>
		[[nodiscard]]
		friend auto constexpr
		(	Evaluate
		)	(	LiteralBase
			,	Lex::MatchCVMember
				<	t_tMember
				,	t_tOwner
				,	t_tpQualifier
					...
				>
			)
			noexcept
		->	bool
		{	return true;	}
	};
}
