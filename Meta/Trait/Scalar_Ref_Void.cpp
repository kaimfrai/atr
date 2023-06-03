export module Meta.Trait.Scalar_Ref_Void;

import Meta.Trait.Match.Void;
import Meta.Trait.Match.Scalar;
import Meta.Trait.Match.Reference;

import Meta.Logic.LiteralBase;
import Meta.Token.Type;
import Meta.Lex.Tokenizer;

export namespace
	Meta::Trait
{
	///	Primarily serves to distinguish type categories with as few traits as possible.
	///	Void, References vs. Functions, Unbounded Arrays.
	///	Scalar vs. Bounded Arrays, Classes, Unions.
	struct
		Scalar_Ref_Void final
	:	LiteralBase
	,	Match::Scalar
	,	Match::Reference
	,	Match::Void
	{
		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		auto static constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)
			noexcept
		->	bool
		{	return
			Evaluate
			(	Scalar_Ref_Void{}
			,	TokenizeType<t_tEntity>
			);
		}
	};
}
