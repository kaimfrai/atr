export module Evaluation.Archetype.Pyramid;

import Evaluation.Archetype.BasicBody;

import Evaluation.Shared.Fraction;

import ATR.Member.List;
import ATR.LayoutConfig;

export namespace
	ATR
{
	template<>
	DefineMembers
	<	LayoutConfig
		<	"BasicBody"
		>
	+	Member::New
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
