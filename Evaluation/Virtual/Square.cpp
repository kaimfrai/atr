export module Evaluation.Virtual.Square;

import Evaluation.Virtual.RectangularShape;

export namespace
	Shapes2D
{
	struct
		Square
	:	RectangularShape
	{
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
