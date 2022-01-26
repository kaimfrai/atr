export module Evaluation.CRTP.Cube;

export import Evaluation.Shared.SizeCheck;
export import Evaluation.CRTP.Square;
export import Evaluation.CRTP.CubicBody;
export import Evaluation.CRTP.DepthIsWidth;

export namespace
	Bodies3D
{
	struct
		Cube
	:	CubicBody
		<	Cube
		,	Shapes2D::Square
		>
	,	DepthIsWidth
		<	Cube
		>
	{};
}

static_assert(AdditionalSize<Bodies3D::Cube, 1, 1> == 4);
static_assert(SizeMinimal<Bodies3D::Cube, 1, 1>);
