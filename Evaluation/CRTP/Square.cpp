export module Evaluation.CRTP.Square;

import Evaluation.CRTP.RectangularShape;
import Evaluation.CRTP.HeightIsWidth;

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
