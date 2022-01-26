export module Evaluation.Virtual.Circle;

export import Evaluation.Shared.SizeCheck;
export import Evaluation.Virtual.CircularShape;

export namespace
	Shapes2D
{
	struct
		Circle
	:	CircularShape
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

static_assert(AdditionalSize<Shapes2D::Circle, 1, 1> == 12);
static_assert(not SizeMinimal<Shapes2D::Circle, 1, 1>);
