export module Evaluation.Archetype:Pyramid;

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
			<	1z
			,	3z
			>
		>
	>	extern
		LayoutConfig
		<	"Pyramid"
		>
	;
}
