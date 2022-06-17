export module Evaluation.Archetype:Ellipsoid;

export import :BasicBody;

export import Evaluation.Shared;

export namespace
	ATR
{
	template<>
	DefineMembers
	<	LayoutConfig
		<	"BasicBody"
		>
	+	Member
		<	"ComputeVolumeMultiplier"
		,	PiFraction
			<	1z
			,	6z
			>
		>
	>	extern
		LayoutConfig
		<	"Ellipsoid"
		>
	;
}
