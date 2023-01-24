export module Meta.Trait.Match.Reference;

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
		friend auto constexpr
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

	struct
		RRef
	{
		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		friend auto constexpr
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

	struct
		Reference
	:	LRef
	,	RRef
	{};
}
