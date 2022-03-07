export module Evaluation.Archetype:Pyramid;

export import :BasicBody;

export import Evaluation.Shared;

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
	+	Member
		<	"ComputeVolumeMultiplier"
		,	Fraction
			<	1z
			,	3z
			>
		>
	;
}
