export module Evaluation.Archetype:Cone;

export import :BasicBody;

export import Evaluation.Shared;

export namespace
	ATR
{
	template<>
	DefineMembers
	<	LayoutConfig<"BasicBody">
		(	Alias
			<	"Height"
			,	"Width"
			>
		)
	+	Member
		<	"ComputeVolumeMultiplier"
		,	PiFraction
			<	1z
			,	12z
			>
		>
	>	extern
		LayoutConfig
		<	"Cone"
		>
	;
}
