export module Evaluation.Archetype.Sphere;

import Evaluation.Archetype.Ellipsoid;

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
			(	All_Of<"Ellipsoid">
			,	"Height"_ID
			,	"Width"_ID
			)
		,	"Depth"_ID
		,	"Width"_ID
		)
	>	const extern
		Definition_For
		<	"Sphere"
		>
	;
}
