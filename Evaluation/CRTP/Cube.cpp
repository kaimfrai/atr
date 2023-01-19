export module Evaluation.CRTP:Cube;

export import :Square;
export import :CubicBody;
export import :DepthIsWidth;

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
