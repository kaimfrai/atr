export module Evaluation.Archetype.Head;

import Evaluation.Archetype.Sphere;

import ATR.LayoutConfig;
import ATR.Concatenate;

export namespace
	ATR
{
	template<>
	DefineMembers
	<	LayoutConfig
		<	"Sphere"
		>
	+	SuffixedLayoutConfig
		<	"Sphere"
		,	"LeftEye"
		>
	+	SuffixedLayoutConfig
		<	"Sphere"
		,	"RightEye"
		>
	>	const extern
		LayoutConfig
		<	"Head"
		>
	;
}
