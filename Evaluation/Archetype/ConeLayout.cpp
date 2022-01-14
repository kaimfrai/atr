export module Evaluation.Archetype.Cone.Layout;

export import Evaluation.Shared;
export import Evaluation.Archetype.BasicBody;
export import Evaluation.Archetype.Ellipse.Layout;
export import Evaluation.Archetype.Circle.Layout;

export namespace
	Archetype
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Cone"
		>
	=	LayoutConfig
		<	"BasicBody"
		>
	-	(	LayoutConfig
			<	"Ellipse"
			>
		-	LayoutConfig
			<	"Circle"
			>
		)
	+	(	LayoutConfig
			<	"Circle"
			>
		-	LayoutConfig
			<	"Ellipse"
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
