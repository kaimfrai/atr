export module Evaluation.Archetype.Cuboid;

import Evaluation.Archetype.BasicBody;

import Evaluation.Shared.Fraction;

import ATR.MemberList;
import ATR.LayoutConfig;

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
	>	const extern
		LayoutConfig
		<	"Cuboid"
		>
	;
}
