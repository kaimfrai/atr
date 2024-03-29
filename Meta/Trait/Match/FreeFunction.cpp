export module Meta.Trait.Match.FreeFunction;

import Meta.Lex.Function;
import Meta.Logic.LiteralBase;
import Meta.Token.Noexcept;

export namespace
	Meta::Trait::Match
{
	struct
		FreeFunction
	{
		template
			<	typename
					t_tSig
			,	typename
				...	t_tpQualifier
			>
		requires
			(	(	sizeof...(t_tpQualifier)
				<=	1uz
				)
			and	...
			and	(	t_tpQualifier{}
				==	Noexcept
				)
			)
		[[nodiscard]]
		auto friend constexpr inline
		(	Evaluate
		)	(	LiteralBase
			,	Lex::MatchFunction
				<	t_tSig
				,	t_tpQualifier
					...
				>
			)
			noexcept
		->	bool
		{	return true;	}
	};
}
