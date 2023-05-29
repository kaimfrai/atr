export module Evaluation.Virtual.Ellipsoid;

import Evaluation.Virtual.Ellipse;
import Evaluation.Virtual.SphericBody;

import Evaluation.Shared.DataTypes;

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

		auto
			GetDepth
			()	const
		noexcept
		->	Float const
			&
		override
		{
			return
				Depth
			;
		}
	};
}