export module Evaluation.CRTP.Rectangle;

import Evaluation.CRTP.RectangularShape;
import Evaluation.CRTP.SeparateWidth;

export namespace
	Shapes2D
{
	struct
		Rectangle
	:	RectangularShape
	,	SeparateWidth
	{};
}
