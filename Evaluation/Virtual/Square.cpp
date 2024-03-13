export module Evaluation.Virtual.Square;

import Evaluation.Virtual.RectangularShape;
import Evaluation.Virtual.Shape3D;

export namespace
	Shapes2D
{
	struct
		Square
	:	RectangularShape
	{
		using
			RectangularShape
		::	RectangularShape
		;

		[[nodiscard]]
		auto constexpr inline
		(	GetWidth
		)	()	const
			noexcept
		->	float
			override
		{	return
				Height
			;
		}
	};
}

export namespace
	Bodies3D
{
	struct
		Square
	:	Shape3D
		<	::Shapes2D::Square
		>
	{
		using
			Shape3D
		::	Shape3D
		;
	};
}
