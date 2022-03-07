export module Evaluation.Archetype.Triangle;

export import Evaluation.Shared.Fraction;
export import Evaluation.Archetype.BasicShape;

export namespace
	ATR
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Triangle"
		>
	=	LayoutConfig
		<	"BasicShape"
		>
	+	Member
		<	"ComputeAreaMultiplier"
		,	Fraction
			<	1z
			,	2z
			>
		>
	;
}
