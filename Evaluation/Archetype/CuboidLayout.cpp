export module Evaluation.Archetype.Cuboid.Layout;

export import Evaluation.Shared.Fraction;
export import Evaluation.Archetype.BasicBody;

export namespace
	ATR
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Cuboid"
		>
	=	LayoutConfig
		<	"BasicBody"
		>
	+	InfoV
		<	"ComputeVolumeMultiplier"
		,	Fraction
			<>
		>
	;
}
