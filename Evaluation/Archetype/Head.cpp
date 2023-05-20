export module Evaluation.Archetype.Head;

import Evaluation.Archetype.Sphere;

import Meta.String.Alias;
import Meta.String.Literals;

using namespace ::Meta::Literals;

export namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	::Meta::ID_T<"Head">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("LeftEye", "Sphere"_ID)
			("RightEye", "Sphere"_ID)
			("Sphere"_ID)
		;
	}
}
