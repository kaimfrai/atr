export module Evaluation.CRTP.Cuboid;

export import Evaluation.Shared.SizeCheck;
export import Evaluation.CRTP.Rectangle;
export import Evaluation.CRTP.CubicBody;
export import Evaluation.CRTP.SeparateDepth;

export namespace
	Bodies3D
{
	struct
		Cuboid
	:	CubicBody
		<	Cuboid
		,	Shapes2D::Rectangle
		>
	,	SeparateDepth
	{};
}


static_assert(AdditionalSize<Bodies3D::Cuboid, 3, 1> == 4);
static_assert(SizeMinimal<Bodies3D::Cuboid, 3, 1>);
