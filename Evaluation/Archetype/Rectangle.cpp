export module Evaluation.Archetype:Rectangle;

export import :BasicShape;

import Evaluation.Shared.Fraction;

import ATR.DataMember;

export namespace
	ATR
{
	template<>
	DefineMembers
	<	LayoutConfig
		<	"BasicShape"
		>
	+	Member
		<	"ComputeAreaMultiplier"
		,	Fraction
			<>
		>
	>	extern
		LayoutConfig
		<	"Rectangle"
		>
	;
}
