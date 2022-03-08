export module Evaluation.CRTP:Triangle;

export import :TriangularShape;
export import :SeparateHeight;

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
