export module Evaluation.Archetype.Triangle.Layout;

export import Evaluation.Archetype.BasicShape;

export namespace
	Archetype
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Triangle"
		>
	=	LayoutConfig
		<	"BasicShape"
		>
	+	Layout::InfoV
		<	"ComputeAreaMultiplier"
		,	Fraction
			<	1z
			,	2z
			>
		>
	;
}
