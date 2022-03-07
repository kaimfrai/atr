export module Evaluation.Virtual.Cylinder;

export import Evaluation.Shared.PiFraction;
export import Evaluation.Virtual.Circle;
export import Evaluation.Virtual.ExtendedShape;

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
