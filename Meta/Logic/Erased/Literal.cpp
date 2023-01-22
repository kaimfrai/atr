export module Meta.Logic.Erased.Literal;

import Meta.Token.Type;
import Meta.Logic.LiteralBase;

export namespace
	Meta::Logic::Erased
{
	struct
		Literal
	{
		TypeID
			Type
		;
		bool
			Polarity
		;
	};

	Literal constexpr inline
		Contradiction
	{	Type<Trait::LiteralBase>
	,	true
	};

	Literal constexpr inline
		Tautology
	{	Type<Trait::LiteralBase>
	,	false
	};
}
