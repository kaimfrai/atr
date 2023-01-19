export module Evaluation.CRTP:Ellipse;

export import :CircularShape;
export import :SeparateHeight;

export namespace
	Shapes2D
{
	struct
		Ellipse
	:	CircularShape
		<	Ellipse
		>
	,	SeparateHeight
	{};
}
