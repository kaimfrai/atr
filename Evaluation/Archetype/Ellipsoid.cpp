export module Evaluation.Archetype.Ellipsoid;

import Evaluation.Archetype.BasicBody;

import Evaluation.Shared.PiFraction;

import ATR.Member.List;
import ATR.Member.Definition;

export namespace
	ATR::Member
{
	template<>
	Definition
	<	Definition_For
		<	"BasicBody"
		>
	+	New
		<	"ComputeVolumeMultiplier"
		,	PiFraction
			<	1z
			,	6z
			>
		>
	>	const extern
		Definition_For
		<	"Ellipsoid"
		>
	;
}
