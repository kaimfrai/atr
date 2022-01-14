export module Evaluation.Virtual.Square;

export import Evaluation.Virtual.RectangularShape;

export namespace
	Shapes2D
{
	struct
		Square
	:	RectangularShape
	{
		auto
			GetHeight
			()	const
		noexcept
		->	Float const
			&
		override
		{
			return
				Width
			;
		}
	};
}

static_assert(AdditionalSize<Shapes2D::Square, 1, 1> == 12);
static_assert(not SizeMinimal<Shapes2D::Square, 1, 1>);
