export module Evaluation.Archetype.Ellipse.Layout;

export import Evaluation.Shared.PiFraction;
export import Evaluation.Archetype.BasicShape;

export namespace
	ATR
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Ellipse"
		>
	=	LayoutConfig
		<	"BasicShape"
		>
	+	InfoV
		<	"ComputeAreaMultiplier"
		,	PiFraction
			<	1z
			,	4z
			>
		>
	;
}
