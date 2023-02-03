export module Evaluation.Archetype.Ellipsoid;

import Evaluation.Archetype.BasicBody;

import Evaluation.Shared.PiFraction;

import ATR.Member.List;
import ATR.Member.Definition;
import ATR.Member.Union;

export namespace
	ATR::Member
{
	template<>
	Definition
	<	All_Of
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
