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
			Width
		;

		[[nodiscard]]
		auto constexpr inline
		(	GetWidth
		)	()	const
			noexcept
		->	float
			override
		{	return
				Width
			;
		}
	};
}
