export module Evaluation.Virtual.Triangle;

export import Evaluation.Shared.SizeCheck;
export import Evaluation.Virtual.TriangularShape;

export namespace
	Shapes2D
{
	struct
		Triangle
	:	TriangularShape
	{
		Float
			Height
		;

		auto
			GetHeight
			()	const
		noexcept
		->	Float const
			&
		override
		{
			return
				Height
			;
		}
	};
}

static_assert(AdditionalSize<Shapes2D::Triangle, 2, 1> == 12);;
static_assert(not SizeMinimal<Shapes2D::Triangle, 2, 1>);
