export module Evaluation.CRTP.Triangle;

import Evaluation.CRTP.TriangularShape;
import Evaluation.CRTP.SeparateHeight;

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
