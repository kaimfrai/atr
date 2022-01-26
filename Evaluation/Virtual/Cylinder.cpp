export module Evaluation.Virtual.Cylinder;

export import Evaluation.Shared.SizeCheck;
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
				πFraction
				<	1z
				,	4z
				>{}
			;
		}
	};
}

static_assert(AdditionalSize<Bodies3D::Cylinder, 2, 1> == 20);
static_assert(not SizeMinimal<Bodies3D::Cylinder, 2, 1>);
