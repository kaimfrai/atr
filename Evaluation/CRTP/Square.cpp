export module Evaluation.CRTP.Square;

export import Evaluation.CRTP.RectangularShape;
export import Evaluation.CRTP.HeightIsWidth;

export namespace
	Shapes2D
{
	struct
		Square
	:	RectangularShape
		<	Square
		>
	,	HeightIsWidth
		<	Square
		>
	{};
}

static_assert(AdditionalSize<Shapes2D::Square, 1, 1> == 4);
static_assert(SizeMinimal<Shapes2D::Square, 1, 1>);
