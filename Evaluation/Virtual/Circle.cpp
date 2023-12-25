export module Evaluation.Virtual.Circle;

import Evaluation.Virtual.CircularShape;

export namespace
	Shapes2D
{
	struct
		Circle
	:	CircularShape
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
