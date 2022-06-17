export module Evaluation.Archetype:Cylinder;

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
			,	4z
			>
		>
	>	extern
		LayoutConfig
		<	"Cylinder"
		>
	;
}
