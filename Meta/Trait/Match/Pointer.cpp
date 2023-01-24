export module Meta.Trait.Match.Pointer;

import Meta.Lex.Pointer;
import Meta.Logic.LiteralBase;

export namespace
	Meta::Trait::Match
{
	struct
		Pointer
	{
		template
			<	typename
					t_tEntity
			,	typename
				...	t_tpQualifier
			>
		[[nodiscard]]
		friend auto constexpr
		(	Evaluate
		)	(	LiteralBase
			,	Lex::MatchCVPointer
				<	t_tEntity
				,	t_tpQualifier
					...
				>
			)
			noexcept
		->	bool
		{	return true;	}
	};
}
