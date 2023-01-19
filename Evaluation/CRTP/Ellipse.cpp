export module Evaluation.CRTP.Ellipse;

export import Evaluation.CRTP.CircularShape;
export import Evaluation.CRTP.SeparateHeight;

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
