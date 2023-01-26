export module Evaluation.Archetype.Circle;

import Evaluation.Archetype.Ellipse;

import ATR.Member.Alias;
import ATR.LayoutConfig;

export namespace
	ATR
{
	template<>
	DefineMembers
	<	LayoutConfig
		<	"Ellipse"
		>(	Alias
			<	"Height"
			,	"Width"
			>
		)
	>	const extern
		LayoutConfig
		<	"Circle"
		>
	;
}
