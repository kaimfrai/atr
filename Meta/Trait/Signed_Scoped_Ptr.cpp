export module Meta.Trait.Signed_Scoped_Ptr;

import Meta.Trait.Match.SignedIntegral;
import Meta.Trait.Match.FloatingPoint;
import Meta.Trait.Match.ScopedEnum;
import Meta.Trait.Match.Pointer;

import Meta.Logic.LiteralBase;
import Meta.Token.Type;
import Meta.Lex.Tokenizer;

export namespace
	Meta::Trait
{
	///	Primarily serves to distinguish type categories with as few traits as possible.
	///	Signed Integral vs. Unsigned Integral.
	///	Floating Point vs. NullPointer.
	///	Scoped Enum vs. Unscoped Enum.
	///	Pointer vs. Member Pointer.
	struct
		Signed_Scoped_Ptr final
	:	LiteralBase
	,	Match::SignedIntegral
	,	Match::FloatingPoint
	,	Match::ScopedEnum
	,	Match::Pointer
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
			(	Signed_Scoped_Ptr{}
			,	TokenizeType<t_tEntity>
			);
		}
	};
}
