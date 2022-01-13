export module Evaluation.Archetype.Cone;

export import Evaluation.Shared;
export import Evaluation.Archetype.BasicBody;
export import Evaluation.Archetype.Circle;
export import Evaluation.Archetype.Ellipse;

export import <Archetype/Instance.hpp>;
export import <Archetype/LayoutInfo.hpp>;

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
			<	1_sz
			,	12_sz
			>
		>
	;
}

export namespace
	Bodies3D
{
	using
		Cone
	=	Archetype::Make
		<	"Cone"
		>
	;
}

static_assert(AdditionalSize<Bodies3D::Cone, 2, 1> == 4);
static_assert(SizeMinimal<Bodies3D::Cone, 2, 1>);
