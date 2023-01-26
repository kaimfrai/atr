export module Evaluation.Archetype.Sphere;

import Evaluation.Archetype.Ellipsoid;

import ATR.Member.Alias;
import ATR.LayoutConfig;

export namespace
	ATR
{
	template<>
	DefineMembers
	<	LayoutConfig
		<	"Ellipsoid"
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
		<	"Sphere"
		>
	;
}
