export module Meta.Trait.Match.Integral;

import Meta.Trait.Match.SignedIntegral;
import Meta.Trait.Match.Unsigned;

export namespace
	Meta::Trait::Match
{
	struct
		Integral
	:	SignedIntegral
	,	Unsigned
	{};
}
