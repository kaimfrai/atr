export module Evaluation.Archetype.Cylinder.Layout;

export import Evaluation.Shared;
export import Evaluation.Archetype.BasicBody;

export namespace
	Archetype
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Cylinder"
		>
	=	LayoutConfig<"BasicBody">
		(	Layout::Alias
			<	"Height"
			,	"Width"
			>
		)
	+	Layout::InfoV
		<	"ComputeVolumeMultiplier"
		,	πFraction
			<	1z
			,	4z
			>
		>
	;
}
