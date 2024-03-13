export module Evaluation.CRTP.Rectangle;

import Evaluation.CRTP.RectangularShape;
import Evaluation.CRTP.SeparateWidth;
import Evaluation.CRTP.Shape3D;

export namespace
	Shapes2D
{
	struct
		Rectangle
	:	RectangularShape
	,	SeparateWidth
	{};
}

export namespace
	Bodies3D
{
	struct
		Rectangle
	:	Shape3D
		<	::Shapes2D::Rectangle
		>
	{	using
			Shape3D
		::	Shape3D
		;
	};
}
