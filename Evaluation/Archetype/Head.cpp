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
	->	auto&&
	{
		(void)ConfigPrefixer{ "LeftEye", o_rConfig }("Sphere"_ID);
		(void)ConfigPrefixer{ "RightEye", o_rConfig }("Sphere"_ID);
		return
		o_rConfig
			("Sphere"_ID)
		;
	}
}
