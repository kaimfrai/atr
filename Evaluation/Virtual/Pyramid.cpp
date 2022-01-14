export module Evaluation.Virtual.Pyramid;

export import Evaluation.Virtual.Triangle;
export import Evaluation.Virtual.PyramidicBody;

export namespace
	Bodies3D
{
	struct
		Pyramid
	:	PyramidicBody
		<	Shapes2D::Triangle
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

static_assert(AdditionalSize<Bodies3D::Pyramid, 3, 1> == 20);
static_assert(not SizeMinimal<Bodies3D::Pyramid, 3, 1>);

