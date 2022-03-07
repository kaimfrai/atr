export module Evaluation.Archetype.Rectangle;

export import Evaluation.Shared.Fraction;
export import Evaluation.Archetype.BasicShape;

export namespace
	ATR
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Rectangle"
		>
	=	LayoutConfig
		<	"BasicShape"
		>
	+	Member
		<	"ComputeAreaMultiplier"
		,	Fraction
			<>
		>
	;
}
