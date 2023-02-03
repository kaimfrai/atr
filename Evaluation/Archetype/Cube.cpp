export module Evaluation.Archetype.Cube;

import Evaluation.Archetype.Cuboid;

import ATR.Member.Alias;
import ATR.Member.Definition;

export namespace
	ATR::Member
{
	template<>
	Definition
	<	Definition_For
		<	"Cuboid"
		>(	Alias
			<	"Height"
			,	"Width"
			>
		)(	Alias
			<	"Depth"
			,	"Width"
			>
		)
	>	const extern
		Definition_For
		<	"Cube"
		>
	;
}
