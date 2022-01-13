export module Evaluation.Archetype.Ellipsoid;

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
		<	"Ellipsoid"
		>
	=	LayoutConfig
		<	"BasicBody"
		>
	+	Layout::InfoV
		<	"ComputeVolumeMultiplier"
		,	πFraction
			<	1_sz
			,	6_sz
			>
		>
	;
}

export namespace
	Bodies3D
{
	using
		Ellipsoid
	=	Archetype::Make
		<	"Ellipsoid"
		>
	;
}

static_assert(AdditionalSize<Bodies3D::Ellipsoid, 3, 1> == 4);
static_assert(SizeMinimal<Bodies3D::Ellipsoid, 3, 1>);
