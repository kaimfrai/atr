export module Evaluation.Virtual.Sphere;

export import Evaluation.Shared.SizeCheck;
export import Evaluation.Virtual.Circle;
export import Evaluation.Virtual.SphericBody;

export namespace
	Bodies3D
{
	struct
		Sphere
	:	SphericBody
		<	Shapes2D::Circle
		>
	{
		auto
			GetDepth
			()	const
		noexcept
		->	Float const
			&
		override
		{
			return
				this
				->	Shapes2D
				.	Width
			;
		}
	};
}

static_assert(AdditionalSize<Bodies3D::Sphere, 1, 1> == 20);
static_assert(not SizeMinimal<Bodies3D::Sphere, 1, 1>);

