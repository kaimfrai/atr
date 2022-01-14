export module Evaluation.CRTP.Triangle;

export import Evaluation.CRTP.TriangularShape;
export import Evaluation.CRTP.SeparateHeight;

export namespace
	Shapes2D
{
	struct
		Triangle
	:	TriangularShape
		<	Triangle
		>
	,	SeparateHeight
	{};
}

static_assert(AdditionalSize<Shapes2D::Triangle, 2, 1> == 4);
static_assert(SizeMinimal<Shapes2D::Triangle, 2, 1>);
