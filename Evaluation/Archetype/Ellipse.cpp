export module Evaluation.Archetype.Ellipse;

import Evaluation.Archetype.BasicShape;

import Evaluation.Shared.PiFraction;

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
		,	PiFraction
			<	1z
			,	4z
			>
		>
	>	const extern
		LayoutConfig
		<	"Ellipse"
		>
	;
}
