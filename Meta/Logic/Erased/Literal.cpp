export module Meta.Logic.Erased.Literal;

export import Meta.Token;
import Meta.Logic.LiteralBase;

export namespace
	Meta::Logic::Erased
{
	struct
		Literal
	{
		EraseTypeToken
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
