export module Evaluation.Archetype:Ellipse;

export import :BasicShape;

import Evaluation.Shared.PiFraction;

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
		,	PiFraction
			<	1z
			,	4z
			>
		>
	>	extern
		LayoutConfig
		<	"Ellipse"
		>
	;
}
