export module Evaluation.CRTP.Square;

import Evaluation.CRTP.RectangularShape;
import Evaluation.CRTP.Shape3D;
import Evaluation.CRTP.WidthIsHeight;

export namespace
	Shapes2D
{
	struct
		Square
	:	RectangularShape
	,	WidthIsHeight
	{};
}

export namespace
	Bodies3D
{
	struct
		Square
	:	Shape3D
		<	::Shapes2D::Square
		>
	{	using
			Shape3D
		::	Shape3D
		;
	};
}
