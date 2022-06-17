export module Evaluation.Archetype:Ellipse;

export import :BasicShape;

export import Evaluation.Shared;

export namespace
	ATR
{
	template<>
	DefineMembers
	<	LayoutConfig
		<	"BasicShape"
		>
	+	Member
		<	"ComputeAreaMultiplier"
		,	PiFraction
			<	1z
			,	4z
			>
		>
	>	extern
		LayoutConfig
		<	"Ellipse"
		>
	;
}
