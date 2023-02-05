export module Evaluation.Archetype.Circle;

import Evaluation.Archetype.Ellipse;

import ATR.Member.Alias;
import ATR.Member.Union;
import ATR.Member.Definition;

export namespace
	ATR::Member
{
	template<>
	Definition
	<	"Ellipse"_def
	+	Alias
		<	"Height"
		,	"Width"
		>
	>	const extern
		Definition_For
		<	"Circle"
		>
	;
}
