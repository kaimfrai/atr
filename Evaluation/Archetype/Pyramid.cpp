export module Evaluation.Archetype.Pyramid;

import Evaluation.Archetype.BasicBody;
import Evaluation.Shared.Fraction;

import ATR.Literals;

import Meta.Token.Type;

export namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	ID_T<"Pyramid">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("BasicBody"_ID)
			("ComputeVolumeMultiplier", ::Meta::Type<Fraction<1z, 3z>>)
		;
	}
}
