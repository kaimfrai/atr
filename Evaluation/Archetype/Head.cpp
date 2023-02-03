export module Evaluation.Archetype.Head;

import Evaluation.Archetype.Sphere;

import ATR.Member.Definition;
import ATR.Concatenate;

export namespace
	ATR::Member
{
	template<>
	Definition
	<	Definition_For
		<	"Sphere"
		>
	+	SuffixedDefinition_For
		<	"Sphere"
		,	"LeftEye"
		>
	+	SuffixedDefinition_For
		<	"Sphere"
		,	"RightEye"
		>
	>	const extern
		Definition_For
		<	"Head"
		>
	;
}
