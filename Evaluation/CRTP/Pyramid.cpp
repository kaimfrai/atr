export module Evaluation.CRTP.Pyramid;

import Evaluation.CRTP.Triangle;
import Evaluation.CRTP.PyramidicBody;
import Evaluation.CRTP.SeparateDepth;

export namespace
	Bodies3D
{
	struct
		Pyramid
	:	PyramidicBody
		<	Pyramid
		,	Shapes2D::Triangle
		>
	,	SeparateDepth
	{};
}
