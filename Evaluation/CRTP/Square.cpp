export module Evaluation.CRTP.Square;

import Evaluation.CRTP.RectangularShape;
import Evaluation.CRTP.WidthIsHeight;

export namespace
	Shapes2D
{
	struct
		Square
	:	RectangularShape
	,	WidthIsHeight
	{};
}
