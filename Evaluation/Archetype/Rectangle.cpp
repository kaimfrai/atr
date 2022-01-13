export module Evaluation.Archetype.Rectangle;

export import Evaluation.Shared;
export import Evaluation.Archetype.BasicShape;

export import <Archetype/Instance.hpp>;

export namespace
	Archetype
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Rectangle"
		>
	=	LayoutConfig
		<	"BasicShape"
		>
	+	Layout::InfoV
		<	"ComputeAreaMultiplier"
		,	Fraction
			<>
		>
	;
}

export namespace
	Shapes2D
{
	using
		Rectangle
	=	Archetype::Make
		<	"Rectangle"
		>
	;
}

static_assert(AdditionalSize<Shapes2D::Rectangle, 2, 1> == 4);
static_assert(SizeMinimal<Shapes2D::Rectangle, 2, 1>);
