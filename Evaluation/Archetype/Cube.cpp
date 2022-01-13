export module Evaluation.Archetype.Cube;

export import Evaluation.Shared;
export import Evaluation.Archetype.Cuboid;
export import Evaluation.Archetype.Rectangle;
export import Evaluation.Archetype.Square;

export import <Archetype/Instance.hpp>;
export import <Archetype/LayoutInfo.hpp>;

export namespace
	Archetype
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Cube"
		>
	=	LayoutConfig
		<	"Cuboid"
		>
	-	Layout::InfoV
		<	"Depth"
		,	Float
		>
	+	Layout::Alias
		<	"Depth"
		,	"Width"
		>
		//	subtract Height member
	-	(	LayoutConfig
			<	"Rectangle"
			>
		-	LayoutConfig
			<	"Square"
			>
		)
		//	add Height alias
	+	(	LayoutConfig
			<	"Square"
			>
		-	LayoutConfig
			<	"Rectangle"
			>
		)
	;
}

export namespace
	Bodies3D
{
	using
		Cube
	=	Archetype::Make
		<	"Cube"
		>
	;
}

static_assert(AdditionalSize<Bodies3D::Cube, 1, 1> == 4);
static_assert(SizeMinimal<Bodies3D::Cube, 1, 1>);
