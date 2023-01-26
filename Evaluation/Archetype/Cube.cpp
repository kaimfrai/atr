export module Evaluation.Archetype.Cube;

import Evaluation.Archetype.Cuboid;

import ATR.Member.Alias;
import ATR.LayoutConfig;

export namespace
	ATR
{
	template<>
	DefineMembers
	<	LayoutConfig
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
		LayoutConfig
		<	"Cube"
		>
	;
}
