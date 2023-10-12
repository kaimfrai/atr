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
		(	GetHeight
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
