export module Evaluation.CRTP.Cuboid;

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
