export module Evaluation.Virtual.Pyramid;

import Evaluation.Virtual.Triangle;
import Evaluation.Virtual.PyramidicBody;

import Evaluation.Dependency.DataTypes;

export namespace
	Bodies3D
{
	struct
		Pyramid
	:	PyramidicBody
		<	Shapes2D::Triangle
		>
	{
		Float
			Depth
		;

		[[nodiscard]]
		auto constexpr inline
		(	GetDepth
		)	()	const
			noexcept
		->	Float const
			&
			override
		{	return
				Depth
			;
		}
	};
}
