export module Evaluation.Archetype.Circle;

export import Evaluation.Shared;
export import Evaluation.Archetype.Ellipse;
export import Evaluation.Archetype.Rectangle;
export import Evaluation.Archetype.Square;

export import <Archetype/Instance.hpp>;

export namespace
	Archetype
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Circle"
		>
	=	LayoutConfig
		<	"Ellipse"
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
	Shapes2D
{
	using
		Circle
	=	Archetype::Make
		<	"Circle"
		>
	;
}

static_assert(AdditionalSize<Shapes2D::Circle, 1, 1> == 4);
static_assert(SizeMinimal<Shapes2D::Circle, 1, 1>);
