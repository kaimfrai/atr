export module Meta.Trait.Fund_Array;

import Meta.Trait.Match.Integral;
import Meta.Trait.Match.FloatingPoint;
import Meta.Trait.Match.BoundedArray;
import Meta.Trait.Match.NullPointer;
import Meta.Trait.Match.Void;
import Meta.Trait.Match.UnboundedArray;

import Meta.Logic.LiteralBase;
import Meta.Token.Type;
import Meta.Lex.Tokenizer;

export namespace
	Meta::Trait
{
	///	Primarily serves to distinguish type categories with as few traits as possible.
	///	Arithmetic, Nullpointer vs. Enum, Member Pointer, Pointer.
	///	Bounded Array vs. Class, Union.
	///	Void vs. Reference
	///	UnbounedArray vs. Function
	struct
		Fund_Array final
	:	LiteralBase
	,	Match::Integral
	,	Match::FloatingPoint
	,	Match::NullPointer
	,	Match::BoundedArray
	,	Match::Void
	,	Match::UnboundedArray
	{
		template
			<	typename
					t_tEntity
			>
		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	TypeToken<t_tEntity>
			)
			noexcept
		->	bool
		{	return
			Evaluate
			(	Fund_Array{}
			,	TokenizeType<t_tEntity>
			);
		}
	};
}
