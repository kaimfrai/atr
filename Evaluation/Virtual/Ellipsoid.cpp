export module Evaluation.Virtual.Ellipsoid;

import Evaluation.Virtual.Ellipse;
import Evaluation.Virtual.SphericBody;

import Evaluation.Dependency.DataTypes;

export namespace
	Bodies3D
{
	struct
		Ellipsoid
	:	SphericBody
		<	Shapes2D::Ellipse
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
