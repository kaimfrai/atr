export module Evaluation.CRTP.Circle;

import Evaluation.CRTP.CircularShape;
import Evaluation.CRTP.Shape3D;
import Evaluation.CRTP.WidthIsHeight;

export namespace
	Shapes2D
{
	struct
		Circle
	:	CircularShape
	,	WidthIsHeight
	{};
}

export namespace
	Bodies3D
{
	struct
		Circle
	:	Shape3D
		<	::Shapes2D::Circle
		>
	{	using
			Shape3D
		::	Shape3D
		;
	};
}
