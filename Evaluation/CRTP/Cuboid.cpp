export module Evaluation.CRTP.Cuboid;

import Evaluation.CRTP.Rectangle;
import Evaluation.CRTP.CubicBody;
import Evaluation.CRTP.SeparateDepth;

export namespace
	Bodies3D
{
	struct
		Cuboid
	:	CubicBody
		<	Shapes2D::Rectangle
		>
	,	SeparateDepth
	{};
}
