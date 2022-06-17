export module Evaluation.Archetype:Rectangle;

export import :BasicShape;

export import Evaluation.Shared;

export namespace
	ATR
{
	template<>
	DefineMembers
	<	LayoutConfig
		<	"BasicShape"
		>
	+	Member
		<	"ComputeAreaMultiplier"
		,	Fraction
			<>
		>
	>	extern
		LayoutConfig
		<	"Rectangle"
		>
	;
}
