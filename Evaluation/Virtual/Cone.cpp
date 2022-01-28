export module Evaluation.Virtual.Cone;

export import Evaluation.Shared.SizeCheck;
export import Evaluation.Shared.PiFraction;
export import Evaluation.Virtual.Circle;
export import Evaluation.Virtual.ExtendedShape;

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
				,	12z
				>{}
			;
		}
	};
}

static_assert(AdditionalSize<Bodies3D::Cone, 2, 1> == 20);
static_assert(not SizeMinimal<Bodies3D::Cone, 2, 1>);
