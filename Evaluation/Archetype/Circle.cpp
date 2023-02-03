export module Evaluation.Archetype.Circle;

import Evaluation.Archetype.Ellipse;

import ATR.Member.Alias;
import ATR.Member.Definition;

export namespace
	ATR::Member
{
	template<>
	Definition
	<	Definition_For
		<	"Ellipse"
		>(	Alias
			<	"Height"
			,	"Width"
			>
		)
	>	const extern
		Definition_For
		<	"Circle"
		>
	;
}
