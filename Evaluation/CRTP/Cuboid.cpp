export module Evaluation.CRTP:Cuboid;

export import :Rectangle;
export import :CubicBody;
export import :SeparateDepth;

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
