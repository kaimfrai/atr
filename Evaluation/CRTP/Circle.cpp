export module Evaluation.CRTP.Circle;

export import Evaluation.Shared.SizeCheck;
export import Evaluation.CRTP.CircularShape;
export import Evaluation.CRTP.HeightIsWidth;

export namespace
	Shapes2D
{
	struct
		Circle
	:	CircularShape
		<	Circle
		>
	,	HeightIsWidth
		<	Circle
		>
	{};
}

static_assert(AdditionalSize<Shapes2D::Circle, 1, 1> == 4);
static_assert(SizeMinimal<Shapes2D::Circle, 1, 1>);
