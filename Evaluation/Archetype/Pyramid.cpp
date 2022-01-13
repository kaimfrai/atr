export module Evaluation.Archetype.Pyramid;

export import Evaluation.Shared;
export import Evaluation.Archetype.BasicBody;

export import <Archetype/Instance.hpp>;
export import <Archetype/LayoutInfo.hpp>;

export namespace
	Archetype
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Pyramid"
		>
	=	LayoutConfig
		<	"BasicBody"
		>
	+	Layout::InfoV
		<	"ComputeVolumeMultiplier"
		,	Fraction
			<	1_sz
			,	3_sz
			>
		>
	;
}

export namespace
	Bodies3D
{
	using
		Pyramid
	=	Archetype::Make
		<	"Pyramid"
		>
	;
}

static_assert(AdditionalSize<Bodies3D::Pyramid, 3, 1> == 4);
static_assert(SizeMinimal<Bodies3D::Pyramid, 3, 1>);
