export module Evaluation.Archetype.Head;

export import Evaluation.Archetype.Sphere;
export import ATR.Concatenate;

export namespace
	ATR
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Head"
		>
	=	LayoutConfig
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
	;
}
