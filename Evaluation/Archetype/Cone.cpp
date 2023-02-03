export module Evaluation.Archetype.Cone;

import Evaluation.Archetype.BasicBody;

import Evaluation.Shared.PiFraction;

import ATR.Member.Alias;
import ATR.Member.List;
import ATR.Member.Union;
import ATR.Member.Definition;
import ATR.Literals;

export namespace
	ATR::Member
{
	template<>
	Definition
	<	Alias
		(	All_Of<"BasicBody">
		,	"Height"_ID
		,	"Width"_ID
		)
	+	New
		<	"ComputeVolumeMultiplier"
		,	PiFraction
			<	1z
			,	12z
			>
		>
	>	const extern
		Definition_For
		<	"Cone"
		>
	;
}
