export module Evaluation.Archetype.Cuboid;

import Evaluation.Archetype.BasicBody;

import Evaluation.Shared.Fraction;

import ATR.Member.List;
import ATR.LayoutConfig;

export namespace
	ATR
{
	template<>
	DefineMembers
	<	LayoutConfig
		<	"BasicBody"
		>
	+	Member::New
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
