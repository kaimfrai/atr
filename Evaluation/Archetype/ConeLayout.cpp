export module Evaluation.Archetype.Cone.Layout;

export import Evaluation.Shared;
export import Evaluation.Archetype.BasicBody;

export namespace
	Archetype
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Cone"
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
			,	12z
			>
		>
	;
}
