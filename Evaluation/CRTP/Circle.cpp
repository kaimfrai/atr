export module Evaluation.CRTP.Circle;

import Evaluation.CRTP.CircularShape;
import Evaluation.CRTP.WidthIsHeight;

export namespace
	Shapes2D
{
	struct
		Circle
	:	CircularShape
	,	WidthIsHeight
	{};
}
