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
