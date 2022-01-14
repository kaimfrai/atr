export module Evaluation.CRTP.Pyramid;

export import Evaluation.CRTP.Triangle;
export import Evaluation.CRTP.PyramidicBody;
export import Evaluation.CRTP.SeparateDepth;

export namespace
	Bodies3D
{
	struct
		Pyramid
	:	PyramidicBody
		<	Pyramid
		,	Shapes2D::Triangle
		>
	,	SeparateDepth
	{};
}

static_assert(AdditionalSize<Bodies3D::Pyramid, 3, 1> == 4);
static_assert(SizeMinimal<Bodies3D::Pyramid, 3, 1>);
