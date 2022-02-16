export module Evaluation.CRTP.Rectangle;

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
