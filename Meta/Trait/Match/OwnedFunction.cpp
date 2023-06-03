export module Meta.Trait.Match.OwnedFunction;

import Meta.Lex.Function;
import Meta.Logic.LiteralBase;
import Meta.Token.Noexcept;

export namespace
	Meta::Trait::Match
{
	struct
		OwnedFunction
	{
		template
			<	typename
					t_tSignature
			,	typename
					t_tFirstQualifier
			,	typename
				...	t_tpQualifier
			>
		requires
			(	t_tFirstQualifier{}
			!=	Noexcept
			)
		[[nodiscard]]
		auto friend constexpr inline
		(	Evaluate
		)	(	LiteralBase
			,	Lex::MatchFunction
				<	t_tSignature
				,	t_tFirstQualifier
				,	t_tpQualifier
					...
				>
			)
			noexcept
		->	bool
		{	return true;	}
	};
}
