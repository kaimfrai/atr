export module Meta.Trait.Match.Function;

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
		friend auto constexpr
		(	Evaluate
		)	(	LiteralBase
			,	Lex::Func
				<	t_tSig
				,	t_tpQualifier
					...
				>
			)
			noexcept
		->	bool
		{	return true;	}
	};

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
		friend auto constexpr
		(	Evaluate
		)	(	LiteralBase
			,	Lex::Func
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
