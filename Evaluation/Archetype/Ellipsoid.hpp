export module Evaluation.Archetype:Ellipsoid;

export import :BasicBody;

export import Evaluation.Shared;

export namespace
	ATR
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Ellipsoid"
		>
	=	LayoutConfig
		<	"BasicBody"
		>
	+	Member
		<	"ComputeVolumeMultiplier"
		,	PiFraction
			<	1z
			,	6z
			>
		>
	;
}
