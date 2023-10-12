export module Evaluation.Virtual.Cone;

import Evaluation.Virtual.Circle;
import Evaluation.Virtual.ExtendedShape;

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
		float
			Depth
		;

		[[nodiscard]]
		auto constexpr inline
		(	GetDepth
		)	()	const
			noexcept
		->	float
			override
		{	return
				Depth
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetComputeSizeMultiplier
		)	()	const
			noexcept
		->	float
			override
		{	return
				PiFraction
				<	1z
				,	12z
				>{}
			;
		}
	};
}
