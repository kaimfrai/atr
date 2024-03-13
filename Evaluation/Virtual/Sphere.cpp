export module Evaluation.Virtual.Sphere;

import Evaluation.Virtual.Circle;
import Evaluation.Virtual.SphericBody;

export namespace
	Bodies3D
{
	struct
		Sphere
	:	SphericBody
		<	Shapes2D::Circle
		>
	{
		using
			SphericBody
		::	SphericBody
		;

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
				.	Height
			;
		}
	};
}
