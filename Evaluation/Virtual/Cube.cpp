export module Evaluation.Virtual.Cube;

import Evaluation.Virtual.Square;
import Evaluation.Virtual.CubicBody;

export namespace
	Bodies3D
{
	struct
		Cube
	:	CubicBody
		<	Shapes2D::Square
		>
	{
		[[nodiscard]]
		auto constexpr inline
		(	GetDepth
		)	()	const
			noexcept
		->	float
			override
		{	return
				this
				->	Shape2D
				.	Width
			;
		}
	};
}
