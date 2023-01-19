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
