export module Evaluation.Archetype.Circle;

import Evaluation.Archetype.Ellipse;

import ATR.Member.Alias;
import ATR.Member.Definition;
import ATR.Literals;

export namespace
	ATR::Member
{
	template<>
	Definition
	<	Alias
		(	All_Of
			<	"Ellipse"
			>
		,	"Height"_ID
		,	"Width"_ID
		)
	>	const extern
		Definition_For
		<	"Circle"
		>
	;
}
