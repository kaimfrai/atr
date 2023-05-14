export module Meta.Logic.Erased.Literal;

import Meta.Token.Type;
import Meta.Token.TypeID;
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

	Literal constexpr
		Contradiction
	{	Type<Trait::LiteralBase>
	,	true
	};

	Literal constexpr
		Tautology
	{	Type<Trait::LiteralBase>
	,	false
	};
}
