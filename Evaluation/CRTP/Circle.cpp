export module Evaluation.CRTP.Circle;

import Evaluation.CRTP.CircularShape;
import Evaluation.CRTP.HeightIsWidth;

export namespace
	Shapes2D
{
	struct
		Circle
	:	CircularShape
		<	Circle
		>
	,	HeightIsWidth
		<	Circle
		>
	{};
}
