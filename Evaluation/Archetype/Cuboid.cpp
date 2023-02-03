export module Evaluation.Archetype.Cuboid;

import Evaluation.Archetype.BasicBody;

import Evaluation.Shared.Fraction;

import ATR.Member.List;
import ATR.Member.Definition;
import ATR.Member.Union;

export namespace
	ATR::Member
{
	template<>
	Definition
	<	All_Of
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
