export module Evaluation.Archetype.Triangle;

import Evaluation.Archetype.BasicShape;

import Evaluation.Shared.Fraction;

import ATR.Member.List;
import ATR.Member.Definition;

export namespace
	ATR::Member
{
	template<>
	Definition
	<	Definition_For
		<	"BasicShape"
		>
	+	New
		<	"ComputeAreaMultiplier"
		,	Fraction
			<	1z
			,	2z
			>
		>
	>	const extern
		Definition_For
		<	"Triangle"
		>
	;
}
