export module Evaluation.Archetype.Ellipsoid;

import Evaluation.Archetype.BasicBody;

import Evaluation.Shared.PiFraction;

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
		,	PiFraction
			<	1z
			,	6z
			>
		>
	>	const extern
		LayoutConfig
		<	"Ellipsoid"
		>
	;
}
