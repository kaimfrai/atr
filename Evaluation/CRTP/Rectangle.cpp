export module Evaluation.CRTP.Rectangle;

import Evaluation.CRTP.RectangularShape;
import Evaluation.CRTP.SeparateHeight;

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
