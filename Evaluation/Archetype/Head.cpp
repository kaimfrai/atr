export module Evaluation.Archetype.Head;

import Evaluation.Archetype.Sphere;

import ATR.Member.Definition;
import ATR.Member.SuffixDefinition;

export namespace
	ATR::Member
{
	template<>
	Definition
	<	Definition_For
		<	"Sphere"
		>
	+	SuffixDefinition_For
		<	"Sphere"
		,	"LeftEye"
		>
	+	SuffixDefinition_For
		<	"Sphere"
		,	"RightEye"
		>
	>	const extern
		Definition_For
		<	"Head"
		>
	;
}
