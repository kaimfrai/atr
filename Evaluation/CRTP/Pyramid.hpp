export module Evaluation.CRTP:Pyramid;

export import :Triangle;
export import :PyramidicBody;
export import :SeparateDepth;

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
