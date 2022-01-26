export module Evaluation.Archetype.Cuboid.Layout;

export import Evaluation.Shared.Fraction;
export import Evaluation.Archetype.BasicBody;

export namespace
	Archetype
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Cuboid"
		>
	=	LayoutConfig
		<	"BasicBody"
		>
	+	Layout::InfoV
		<	"ComputeVolumeMultiplier"
		,	Fraction
			<>
		>
	;
}
