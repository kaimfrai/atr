export module Evaluation.Archetype.Cuboid;

export import Evaluation.Shared;
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
	+	Member
		<	"ComputeVolumeMultiplier"
		,	Fraction
			<>
		>
	;
}
