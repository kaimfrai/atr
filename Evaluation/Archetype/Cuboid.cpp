export module Evaluation.Archetype:Cuboid;

export import :BasicBody;

import Evaluation.Shared.Fraction;

import ATR.DataMember;

export namespace
	ATR
{
	template<>
	DefineMembers
	<	LayoutConfig
		<	"BasicBody"
		>
	+	Member
		<	"ComputeVolumeMultiplier"
		,	Fraction
			<>
		>
	>	extern
		LayoutConfig
		<	"Cuboid"
		>
	;
}
