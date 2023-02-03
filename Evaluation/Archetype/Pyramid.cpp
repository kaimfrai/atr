export module Evaluation.Archetype.Pyramid;

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
