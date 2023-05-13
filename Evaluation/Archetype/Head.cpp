export module Evaluation.Archetype.Head;

import Evaluation.Archetype.Sphere;

import ATR.Member.ConfigPrefixer;

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
		Configure("Sphere"_ID, ConfigPrefixer{ "LeftEye", o_rConfig });
		Configure("Sphere"_ID, ConfigPrefixer{ "RightEye", o_rConfig });
	}
}
