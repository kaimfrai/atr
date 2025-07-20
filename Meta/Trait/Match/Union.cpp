export module Meta.Trait.Match.Union;

import Meta.Lex.CV;
import Meta.Logic.LiteralBase;

import std;

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
		auto friend constexpr inline
		(	Evaluate
		)	(	LiteralBase
			,	Lex::MatchCVType
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
