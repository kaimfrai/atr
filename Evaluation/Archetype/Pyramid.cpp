export module Evaluation.Archetype.Pyramid;

export import Evaluation.Shared.Fraction;
export import Evaluation.Archetype.BasicBody;

export namespace
	ATR
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Pyramid"
		>
	=	LayoutConfig
		<	"BasicBody"
		>
	+	InfoV
		<	"ComputeVolumeMultiplier"
		,	Fraction
			<	1z
			,	3z
			>
		>
	;
}
