export module Evaluation.Virtual.Sphere;

import Evaluation.Virtual.Circle;
import Evaluation.Virtual.SphericBody;

import Evaluation.Dependency.DataTypes;

export namespace
	Bodies3D
{
	struct
		Sphere
	:	SphericBody
		<	Shapes2D::Circle
		>
	{
		[[nodiscard]]
		auto constexpr
		(	GetDepth
		)	()	const
			noexcept
		->	Float const
			&
			override
		{	return
			this
			->	Shapes2D
			.	Width
			;
		}
	};
}
