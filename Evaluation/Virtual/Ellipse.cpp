export module Evaluation.Virtual.Ellipse;

export import Evaluation.Virtual.CircularShape;

export namespace
	Shapes2D
{
	struct
		Ellipse
	:	CircularShape
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

static_assert(AdditionalSize<Shapes2D::Ellipse, 2, 1> == 12);
static_assert(not SizeMinimal<Shapes2D::Ellipse, 2, 1>);
