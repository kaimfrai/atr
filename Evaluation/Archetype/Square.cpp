export module Evaluation.Archetype.Square;

import Evaluation.Archetype.Rectangle;

import ATR.Member.Alias;
import ATR.Member.Union;
import ATR.Member.Definition;

export namespace
	ATR::Member
{
	template<>
	Definition
	<	"Rectangle"_def
	+	Alias
		<	"Height"
		,	"Width"
		>
	>	const extern
		Definition_For
		<	"Square"
		>
	;
}
