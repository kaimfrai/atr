export module Meta.Trait.Match.UnboundedArray;

import Meta.Logic.LiteralBase;
import Meta.Lex.Array;
import Meta.Size;

export namespace
	Meta::Trait::Match
{
	struct
		UnboundedArray
	{
		template
			<	typename
					t_tElement
			,	typename
				...	t_tpQualifier
			>
		[[nodiscard]]
		friend auto constexpr
		(	Evaluate
		)	(	LiteralBase
			,	Lex::MatchCVArray
				<	t_tElement
				,	0uz
				,	t_tpQualifier
					...
				>
			)
			noexcept
		->	bool
		{	return true;	}
	};
}
