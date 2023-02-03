export module Evaluation.Archetype.Rectangle;

import Evaluation.Archetype.BasicShape;

import Evaluation.Shared.Fraction;

import ATR.Member.List;
import ATR.LayoutConfig;

export namespace
	ATR
{
	template<>
	DefineMembers
	<	LayoutConfig
		<	"BasicShape"
		>
	+	Member::New
		<	"ComputeAreaMultiplier"
		,	Fraction
			<>
		>
	>	const extern
		LayoutConfig
		<	"Rectangle"
		>
	;
}
