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
		(	GetHeight
		)	()	const
			noexcept
		->	float const
			&
			override
		{	return
				Width
			;
		}
	};
}
