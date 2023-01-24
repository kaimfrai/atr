export module Meta.Trait.Match.Union;

import Meta.Lex.CV;
import Meta.Logic.LiteralBase;

import Std;

export namespace
	Meta::Trait::Match
{
	struct
		Union
	{
		template
			<	typename
					t_tEntity
			,	typename
				...	t_tpQualifier
			>
		requires
			::std::is_union_v<t_tEntity>
		[[nodiscard]]
		friend auto constexpr
		(	Evaluate
		)	(	LiteralBase
			,	Lex::MatchCV
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
