export module Evaluation.CRTP.Ellipse;

import Evaluation.CRTP.CircularShape;
import Evaluation.CRTP.SeparateWidth;
import Evaluation.CRTP.Shape3D;

export namespace
	Shapes2D
{
	struct
		Ellipse
	:	CircularShape
	,	SeparateWidth
	{};
}

export namespace
	Bodies3D
{
	struct
		Ellipse
	:	Shape3D
		<	::Shapes2D::Ellipse
		>
	{	using
			Shape3D
		::	Shape3D
		;
	};
}
