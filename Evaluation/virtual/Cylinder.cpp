export module Evaluation.Virtual.Cylinder;

import Evaluation.Virtual.Circle;
import Evaluation.Virtual.ExtendedShape;

import Evaluation.Dependency.DataTypes;
import Evaluation.Dependency.PiFraction;

export namespace
	Bodies3D
{
	struct
		Cylinder
	:	ExtendedShape
		<	Shapes2D::Circle
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

		auto
			GetComputeVolumeMultiplier
			()	const
		noexcept
		->	Float
		override
		{
			return
				PiFraction
				<	1z
				,	4z
				>{}
			;
		}
	};
}
