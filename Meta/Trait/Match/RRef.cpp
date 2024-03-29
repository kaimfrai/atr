export module Meta.Trait.Match.RRef;

import Meta.Lex.Reference;
import Meta.Logic.LiteralBase;

export namespace
	Meta::Trait::Match
{
	struct
		RRef
	{
		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	Evaluate
		)	(	LiteralBase
			,	Lex::MatchRRef
				<	t_tEntity
				>
			)
			noexcept
		->	bool
		{	return true;	}
	};
}
