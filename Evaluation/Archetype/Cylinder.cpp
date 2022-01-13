export module Evaluation.Archetype.Cylinder;

export import Evaluation.Shared;
export import Evaluation.Archetype.BasicBody;
export import Evaluation.Archetype.Ellipse;
export import Evaluation.Archetype.Circle;

export import <Archetype/Instance.hpp>;
export import <Archetype/LayoutInfo.hpp>;

export namespace
	Archetype
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Cylinder"
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
			<	1_sz
			,	4_sz
			>
		>
	;
}

export namespace
	Bodies3D
{
	using
		Cylinder
	=	Archetype::Make
		<	"Cylinder"
		>
	;
}

static_assert(AdditionalSize<Bodies3D::Cylinder, 2, 1> == 4);
static_assert(SizeMinimal<Bodies3D::Cylinder, 2, 1>);
