export module Evaluation.Archetype.Sphere;

import Evaluation.Archetype.Ellipsoid;

import ATR.Member.Alias;
import ATR.Member.Union;
import ATR.Member.Definition;

export namespace
	ATR::Member
{
	template<>
	Definition
	<	"Ellipsoid"_def
	+	Alias
		<	"Height"
		,	"Width"
		>
	+	Alias
		<	"Depth"
		,	"Width"
		>
	>	const extern
		Definition_For
		<	"Sphere"
		>
	;
}
