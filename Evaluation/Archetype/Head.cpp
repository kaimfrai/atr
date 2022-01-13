export module Evaluation.Archetype.Head;

export import Evaluation.Shared;
export import Evaluation.Archetype.Sphere;

export import <Archetype/Instance.hpp>;
export import <Archetype/LayoutInfo.hpp>;

export namespace
	Archetype
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

export namespace
	Bodies3D
{
	using
		Head
	=	Archetype::Make
		<	"Head"
		>
	;
}

static_assert(AdditionalSize<Bodies3D::Head, 3, 3> == 4);
static_assert(SizeMinimal<Bodies3D::Head, 3, 3>);
