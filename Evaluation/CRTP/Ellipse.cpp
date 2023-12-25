export module Evaluation.CRTP.Ellipse;

import Evaluation.CRTP.CircularShape;
import Evaluation.CRTP.SeparateWidth;

export namespace
	Shapes2D
{
	struct
		Ellipse
	:	CircularShape
	,	SeparateWidth
	{};
}
