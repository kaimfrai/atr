export module Evaluation.Archetype.Ellipse;

import Evaluation.Archetype.BasicShape;

import Evaluation.Shared.PiFraction;

import ATR.Member.List;
import ATR.Member.Definition;

export namespace
	ATR::Member
{
	template<>
	Definition
	<	Definition_For
		<	"BasicShape"
		>
	+	New
		<	"ComputeAreaMultiplier"
		,	PiFraction
			<	1z
			,	4z
			>
		>
	>	const extern
		Definition_For
		<	"Ellipse"
		>
	;
}
