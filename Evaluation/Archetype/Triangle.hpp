export module Evaluation.Archetype:Triangle;

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
			<	1z
			,	2z
			>
		>
	>	extern
		LayoutConfig
		<	"Triangle"
		>
	;
}
