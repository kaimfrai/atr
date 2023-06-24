export module Evaluation.Virtual.Rectangle;

import Evaluation.Virtual.RectangularShape;

export namespace
	Shapes2D
{
	struct
		Rectangle
	:	RectangularShape
	{
		float
			Height
		;

		[[nodiscard]]
		auto constexpr inline
		(	GetHeight
		)	()	const
			noexcept
		->	float const
			&
			override
		{	return
				Height
			;
		}
	};
}
