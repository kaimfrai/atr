export module Evaluation.Archetype:Cuboid;

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
		,	Fraction
			<>
		>
	>	extern
		LayoutConfig
		<	"Cuboid"
		>
	;
}
