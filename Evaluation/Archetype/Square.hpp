export module Evaluation.Archetype:Square;

export import :Rectangle;

import ATR.DataMember;

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
	>	extern
		LayoutConfig
		<	"Square"
		>
	;
}
