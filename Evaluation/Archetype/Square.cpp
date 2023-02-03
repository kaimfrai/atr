export module Evaluation.Archetype.Square;

import Evaluation.Archetype.Rectangle;

import ATR.Member.Alias;
import ATR.Member.Definition;

export namespace
	ATR::Member
{
	template<>
	Definition
	<	Definition_For<"Rectangle">
		(	Alias
			<	"Height"
			,	"Width"
			>
		)
	>	const extern
		Definition_For
		<	"Square"
		>
	;
}
