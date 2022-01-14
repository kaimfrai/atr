export module Evaluation.Virtual.Ellipsoid;

export import Evaluation.Virtual.Ellipse;
export import Evaluation.Virtual.SphericBody;

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

static_assert(AdditionalSize<Bodies3D::Ellipsoid, 3, 1> == 20);
static_assert(not SizeMinimal<Bodies3D::Ellipsoid, 3, 1>);
