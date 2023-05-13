export module Evaluation.Archetype.Head;

import Evaluation.Archetype.Sphere;

import ATR.Member.ConfigAffixer;

import Meta.ID.Alias;
import Meta.ID.Literals;

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
	{
		Configure("Sphere"_ID, o_rConfig);
		Configure("Sphere"_ID, ConfigAffixer{ "LeftEye", o_rConfig });
		Configure("Sphere"_ID, ConfigAffixer{ "RightEye", o_rConfig });
	}
}
