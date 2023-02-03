export module Evaluation.Archetype.Cube;

import Evaluation.Archetype.Cuboid;

import ATR.Member.Alias;
import ATR.Member.Definition;
import ATR.Literals;

export namespace
	ATR::Member
{
	template<>
	Definition
	<	Alias
		(	Alias
			(	All_Of<"Cuboid">
			,	"Height"_ID
			,	"Width"_ID
			)
		,	"Depth"_ID
		,	"Width"_ID
		)
	>	const extern
		Definition_For
		<	"Cube"
		>
	;
}
