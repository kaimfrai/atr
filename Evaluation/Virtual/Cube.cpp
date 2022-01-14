export module Evaluation.Virtual.Cube;

export import Evaluation.Virtual.Square;
export import Evaluation.Virtual.CubicBody;

export namespace
	Bodies3D
{
	struct
		Cube
	:	CubicBody
		<	Shapes2D::Square
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

static_assert(AdditionalSize<Bodies3D::Cube, 1, 1> == 20);
static_assert(not SizeMinimal<Bodies3D::Cube, 1, 1>);
