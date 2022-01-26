export module Evaluation.Virtual.Rectangle;

export import Evaluation.Shared.SizeCheck;
export import Evaluation.Virtual.RectangularShape;

export namespace
	Shapes2D
{
	struct
		Rectangle
	:	RectangularShape
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

static_assert(AdditionalSize<Shapes2D::Rectangle, 2, 1> == 12);
static_assert(not SizeMinimal<Shapes2D::Rectangle, 2, 1>);

