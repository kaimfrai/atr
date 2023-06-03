export module Meta.Trait.Match.LRef;

import Meta.Lex.Reference;
import Meta.Logic.LiteralBase;

export namespace
	Meta::Trait::Match
{
	struct
		LRef
	{
		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		auto friend constexpr
		(	Evaluate
		)	(	LiteralBase
			,	Lex::MatchLRef
				<	t_tEntity
				>
			)
			noexcept
		->	bool
		{	return true;	}
	};
}
