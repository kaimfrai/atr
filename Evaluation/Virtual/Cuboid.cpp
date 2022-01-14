export module Evaluation.Virtual.Cuboid;

export import Evaluation.Virtual.Rectangle;
export import Evaluation.Virtual.CubicBody;

export namespace
	Bodies3D
{
	struct
		Cuboid
	:	CubicBody
		<	Shapes2D::Rectangle
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

static_assert(AdditionalSize<Bodies3D::Cuboid, 3, 1> == 20);
static_assert(not SizeMinimal<Bodies3D::Cuboid, 3, 1>);
