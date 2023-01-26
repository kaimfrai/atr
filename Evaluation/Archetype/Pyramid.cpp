export module Evaluation.Archetype.Pyramid;

import Evaluation.Archetype.BasicBody;

import Evaluation.Shared.Fraction;

import ATR.MemberList;
import ATR.LayoutConfig;

export namespace
	ATR
{
	template<>
	DefineMembers
	<	LayoutConfig
		<	"BasicBody"
		>
	+	Member
		<	"ComputeVolumeMultiplier"
		,	Fraction
			<	1z
			,	3z
			>
		>
	>	const extern
		LayoutConfig
		<	"Pyramid"
		>
	;
}
