export module Evaluation.Archetype.Ellipsoid.Layout;

export import Evaluation.Shared.PiFraction;
export import Evaluation.Archetype.BasicBody;

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
	+	InfoV
		<	"ComputeVolumeMultiplier"
		,	PiFraction
			<	1z
			,	6z
			>
		>
	;
}
