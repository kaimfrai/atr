export module Evaluation.CRTP.Ellipse;

export import Evaluation.CRTP.CircularShape;
export import Evaluation.CRTP.SeparateHeight;

export namespace
	Shapes2D
{
	struct
		Ellipse
	:	CircularShape
		<	Ellipse
		>
	,	SeparateHeight
	{};
}

static_assert(AdditionalSize<Shapes2D::Ellipse, 2, 1> == 4);
static_assert(SizeMinimal<Shapes2D::Ellipse, 2, 1>);
