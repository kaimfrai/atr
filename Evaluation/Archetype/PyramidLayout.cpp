export module Evaluation.Archetype.Pyramid.Layout;

export import Evaluation.Shared;
export import Evaluation.Archetype.BasicBody;

export namespace
	Archetype
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Pyramid"
		>
	=	LayoutConfig
		<	"BasicBody"
		>
	+	Layout::InfoV
		<	"ComputeVolumeMultiplier"
		,	Fraction
			<	1z
			,	3z
			>
		>
	;
}
