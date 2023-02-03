export module Evaluation.Archetype.Cuboid;

import Evaluation.Archetype.BasicBody;

import Evaluation.Shared.Fraction;

import ATR.Member.List;
import ATR.Member.Definition;

export namespace
	ATR::Member
{
	template<>
	Definition
	<	Definition_For
		<	"BasicBody"
		>
	+	New
		<	"ComputeVolumeMultiplier"
		,	Fraction
			<>
		>
	>	const extern
		Definition_For
		<	"Cuboid"
		>
	;
}
