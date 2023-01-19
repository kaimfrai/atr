export module Evaluation.CRTP.Circle;

export import Evaluation.CRTP.CircularShape;
export import Evaluation.CRTP.HeightIsWidth;

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
