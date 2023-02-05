export module Evaluation.Archetype.Cube;

import Evaluation.Archetype.Cuboid;

import ATR.Member.Alias;
import ATR.Member.Union;
import ATR.Member.Definition;

export namespace
	ATR::Member
{
	template<>
	Definition
	<	"Cuboid"_def
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
		<	"Cube"
		>
	;
}
