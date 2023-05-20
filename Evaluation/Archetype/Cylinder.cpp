export module Evaluation.Archetype.Cylinder;

import Evaluation.Archetype.BasicBody;
import Evaluation.Shared.PiFraction;

import Meta.String.Alias;
import Meta.String.Literals;
import Meta.Token.Type;

using namespace ::Meta::Literals;

export namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	::Meta::ID_T<"Cylinder">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("Width", "Height")
			("BasicBody"_ID)
			("ComputeVolumeMultiplier", ::Meta::Type<PiFraction<1z, 4z>>)
		;
	}
}
