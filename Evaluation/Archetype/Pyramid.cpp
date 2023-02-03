export module Evaluation.Archetype.Pyramid;

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
			<	1z
			,	3z
			>
		>
	>	const extern
		Definition_For
		<	"Pyramid"
		>
	;
}
