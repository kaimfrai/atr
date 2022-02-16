export module Evaluation.CRTP.Cube;

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
