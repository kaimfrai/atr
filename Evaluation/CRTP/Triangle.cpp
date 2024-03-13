export module Evaluation.CRTP.Triangle;

import Evaluation.CRTP.TriangularShape;
import Evaluation.CRTP.SeparateWidth;
import Evaluation.CRTP.Shape3D;

export namespace
	Shapes2D
{
	struct
		Triangle
	:	TriangularShape
	,	SeparateWidth
	{};
}

export namespace
	Bodies3D
{
	struct
		Triangle
	:	Shape3D
		<	::Shapes2D::Triangle
		>
	{	using
			Shape3D
		::	Shape3D
		;
	};
}
