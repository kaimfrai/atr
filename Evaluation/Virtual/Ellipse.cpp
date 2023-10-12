export module Evaluation.Virtual.Ellipse;

import Evaluation.Virtual.CircularShape;

export namespace
	Shapes2D
{
	struct
		Ellipse
	:	CircularShape
	{
		float
			Height
		;

		[[nodiscard]]
		auto constexpr inline
		(	GetHeight
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
