export module Evaluation.Archetype:Head;

export import :Sphere;
export import ATR;

export namespace
	ATR
{
	template<>
	DefineMembers
	<	LayoutConfig
		<	"Sphere"
		>
	+	SuffixedLayoutConfig
		<	"Sphere"
		,	"LeftEye"
		>
	+	SuffixedLayoutConfig
		<	"Sphere"
		,	"RightEye"
		>
	>	extern
		LayoutConfig
		<	"Head"
		>
	;
}
