export module Evaluation.Archetype:Ellipse;

export import :BasicShape;

export import Evaluation.Shared;

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
	+	Member
		<	"ComputeAreaMultiplier"
		,	PiFraction
			<	1z
			,	4z
			>
		>
	;
}
