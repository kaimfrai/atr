export module Evaluation.CRTP:Rectangle;

export import :RectangularShape;
export import :SeparateHeight;

export namespace
	Shapes2D
{
	struct
		Rectangle
	:	RectangularShape
		<	Rectangle
		>
	,	SeparateHeight
	{};
}
