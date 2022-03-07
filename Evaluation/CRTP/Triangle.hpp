export module Evaluation.CRTP.Triangle;

export import Evaluation.CRTP.TriangularShape;
export import Evaluation.CRTP.SeparateHeight;

export namespace
	Shapes2D
{
	struct
		Triangle
	:	TriangularShape
		<	Triangle
		>
	,	SeparateHeight
	{};
}
