export module Evaluation.Archetype:Ellipsoid;

export import :BasicBody;

import Evaluation.Shared.PiFraction;

import ATR.DataMember;

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
		,	PiFraction
			<	1z
			,	6z
			>
		>
	>	extern
		LayoutConfig
		<	"Ellipsoid"
		>
	;
}
