export module Meta.Trait.Match.BoundedArray;

import Meta.Logic.LiteralBase;
import Meta.Lex.Array;
import Meta.Size;

export namespace
	Meta::Trait::Match
{
	struct
		BoundedArray
	{
		template
			<	typename
					t_tElement
			,	USize
					t_vExtent
			,	typename
				...	t_tpQualifier
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	Evaluate
		)	(	LiteralBase
			,	Lex::MatchCVArray
				<	t_tElement
				,	t_vExtent
				,	t_tpQualifier
					...
				>
			)
			noexcept
		->	bool
		{	return t_vExtent != 0uz;	}
	};
}
