export module Evaluation.Archetype.Cone;

import Evaluation.Archetype.BasicBody;

import Evaluation.Shared.PiFraction;

import ATR.Member.Alias;
import ATR.Member.List;
import ATR.LayoutConfig;

export namespace
	ATR
{
	template<>
	DefineMembers
	<	LayoutConfig<"BasicBody">
		(	Alias
			<	"Height"
			,	"Width"
			>
		)
	+	Member::New
		<	"ComputeVolumeMultiplier"
		,	PiFraction
			<	1z
			,	12z
			>
		>
	>	const extern
		LayoutConfig
		<	"Cone"
		>
	;
}
