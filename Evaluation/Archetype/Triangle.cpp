export module Evaluation.Archetype.Triangle;

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
			<	1z
			,	2z
			>
		>
	>	const extern
		LayoutConfig
		<	"Triangle"
		>
	;
}
