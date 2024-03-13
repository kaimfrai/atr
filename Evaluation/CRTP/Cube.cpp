export module Evaluation.CRTP.Cube;

import Evaluation.CRTP.Square;
import Evaluation.CRTP.CubicBody;
import Evaluation.CRTP.DepthIsHeight;

export namespace
	Bodies3D
{
	struct
		Cube
	:	CubicBody
		<	Shapes2D::Square
		>
	,	DepthIsHeight
	{
		using
			CubicBody
		::	CubicBody
		;
	};
}
