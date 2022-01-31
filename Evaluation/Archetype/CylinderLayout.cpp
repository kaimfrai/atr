export module Evaluation.Archetype.Cylinder.Layout;

export import Evaluation.Shared.PiFraction;
export import Evaluation.Archetype.BasicBody;

export namespace
	ATR
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Cylinder"
		>
	=	LayoutConfig<"BasicBody">
		(	Alias
			<	"Height"
			,	"Width"
			>
		)
	+	InfoV
		<	"ComputeVolumeMultiplier"
		,	PiFraction
			<	1z
			,	4z
			>
		>
	;
}
