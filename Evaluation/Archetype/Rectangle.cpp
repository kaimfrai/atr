export module Evaluation.Archetype.Rectangle;

export import Evaluation.Shared.SizeCheck;
export import ATR.Instance;
export import Evaluation.Archetype.Rectangle.Layout;

export namespace
	Shapes2D
{
	using
		Rectangle
	=	ATR::Type
		<	"Rectangle"
		>
	;
}

static_assert(AdditionalSize<Shapes2D::Rectangle, 2, 1> == 4);
static_assert(SizeMinimal<Shapes2D::Rectangle, 2, 1>);
