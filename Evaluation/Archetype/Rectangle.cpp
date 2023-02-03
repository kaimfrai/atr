export module Evaluation.Archetype.Rectangle;

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
			<>
		>
	>	const extern
		Definition_For
		<	"Rectangle"
		>
	;
}
