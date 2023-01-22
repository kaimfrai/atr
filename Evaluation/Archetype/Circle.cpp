export module Evaluation.Archetype.Circle;

import Evaluation.Archetype.Ellipse;

import ATR.DataMember;

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
	>	extern
		LayoutConfig
		<	"Circle"
		>
	;
}
