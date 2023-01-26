export module Evaluation.Archetype.Square;

import Evaluation.Archetype.Rectangle;

import ATR.Member.Alias;
import ATR.LayoutConfig;

export namespace
	ATR
{
	template<>
	DefineMembers
	<	LayoutConfig<"Rectangle">
		(	Alias
			<	"Height"
			,	"Width"
			>
		)
	>	const extern
		LayoutConfig
		<	"Square"
		>
	;
}
