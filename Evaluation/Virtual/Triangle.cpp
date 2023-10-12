export module Evaluation.Virtual.Triangle;

import Evaluation.Virtual.TriangularShape;

export namespace
	Shapes2D
{
	struct
		Triangle
	:	TriangularShape
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
