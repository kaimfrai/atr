export module Evaluation.Archetype.Cuboid;

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
		<	"Cuboid"
		>
	=	LayoutConfig
		<	"BasicBody"
		>
	+	Layout::InfoV
		<	"ComputeVolumeMultiplier"
		,	Fraction
			<>
		>
	;
}

export namespace
	Bodies3D
{
	using
		Cuboid
	=	Archetype::Make
		<	"Cuboid"
		>
	;
}

static_assert(AdditionalSize<Bodies3D::Cuboid, 3, 1> == 4);
static_assert(SizeMinimal<Bodies3D::Cuboid, 3, 1>);
