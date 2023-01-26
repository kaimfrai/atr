export module Evaluation.Archetype.Cylinder;

import Evaluation.Archetype.BasicBody;
import Evaluation.Shared.PiFraction;

import ATR.Member.Alias;
import ATR.MemberList;
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
	+	Member
		<	"ComputeVolumeMultiplier"
		,	PiFraction
			<	1z
			,	4z
			>
		>
	>	const extern
		LayoutConfig
		<	"Cylinder"
		>
	;
}
