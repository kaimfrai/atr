export module Meta.Trait.Match.Array;

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
					t_nExtent
			,	typename
				...	t_tpQualifier
			>
		[[nodiscard]]
		friend auto constexpr
		(	Evaluate
		)	(	LiteralBase
			,	Lex::MatchCVArray
				<	t_tElement
				,	t_nExtent
				,	t_tpQualifier
					...
				>
			)
			noexcept
		->	bool
		{	return t_nExtent != 0uz;	}
	};

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
