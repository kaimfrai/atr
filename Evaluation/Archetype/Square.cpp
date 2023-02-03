export module Evaluation.Archetype.Square;

import Evaluation.Archetype.Rectangle;

import ATR.Member.Alias;
import ATR.Member.Definition;
import ATR.Literals;

export namespace
	ATR::Member
{
	template<>
	Definition
	<	Alias
		(	All_Of<"Rectangle">
		,	"Height"_ID
		,	"Width"_ID
		)
	>	const extern
		Definition_For
		<	"Square"
		>
	;
}
