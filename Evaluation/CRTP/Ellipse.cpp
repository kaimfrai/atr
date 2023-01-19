export module Evaluation.CRTP.Ellipse;

import Evaluation.CRTP.CircularShape;
import Evaluation.CRTP.SeparateHeight;

export namespace
	Shapes2D
{
	struct
		Ellipse
	:	CircularShape
		<	Ellipse
		>
	,	SeparateHeight
	{};
}
