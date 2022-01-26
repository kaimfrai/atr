export module Evaluation.CRTP.Rectangle;

export import Evaluation.Shared.SizeCheck;
export import Evaluation.CRTP.RectangularShape;
export import Evaluation.CRTP.SeparateHeight;

export namespace
	Shapes2D
{
	struct
		Rectangle
	:	RectangularShape
		<	Rectangle
		>
	,	SeparateHeight
	{};
}

static_assert(AdditionalSize<Shapes2D::Rectangle, 2, 1> == 4);
static_assert(SizeMinimal<Shapes2D::Rectangle, 2, 1>);
