export module Meta.Trait.Int_Enum_Class_LRef_Free;

import Meta.Trait.Match.Integral;
import Meta.Trait.Match.Enum;
import Meta.Trait.Match.Class;
import Meta.Trait.Match.Reference;
import Meta.Trait.Match.Function;

import Meta.Logic.LiteralBase;
import Meta.Token.Type;
import Meta.Lex.Tokenizer;

export namespace
	Meta::Trait
{
	///	Primarily serves to distinguish type categories with as few traits as possible.
	///	Integral vs. Floating Point, Nullpointer.
	///	Enum vs. Member Pointer, Pointer.
	///	Class vs. Union.
	///	LValueReference vs. RValueReference.
	///	Free Function vs. Owned Function.
	struct
		Int_Enum_Class_LRef_Free final
	:	LiteralBase
	,	Match::Integral
	,	Match::Enum
	,	Match::Class
	,	Match::LRef
	,	Match::FreeFunction
	{
		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)
			noexcept
		->	bool
		{	return
			Evaluate
			(	Int_Enum_Class_LRef_Free{}
			,	TokenizeType<t_tEntity>
			);
		}
	};
}
