export module Evaluation.Virtual.Cone;

import Evaluation.Virtual.Circle;
import Evaluation.Virtual.ExtendedShape;

import Evaluation.Dependency.DataTypes;
import Evaluation.Dependency.PiFraction;

export namespace
	Bodies3D
{
	struct
		Cone
	:	ExtendedShape
		<	Shapes2D::Circle
		>
	{
		Float
			Depth
		;

		[[nodiscard]]
		auto constexpr
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

		[[nodiscard]]
		auto constexpr
		(	GetComputeVolumeMultiplier
		)	()	const
			noexcept
		->	Float
			override
		{	return
			PiFraction
			<	1z
			,	12z
			>{};
		}
	};
}
