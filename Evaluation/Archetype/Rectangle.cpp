export module Evaluation.Archetype.Rectangle;

import Evaluation.Archetype.BasicShape;

import Evaluation.Shared.Fraction;

import ATR.Member.List;
import ATR.Member.Union;
import ATR.Member.Definition;

export namespace
	ATR::Member
{
	template<>
	Definition
	<	All_Of
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
