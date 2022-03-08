export module Evaluation.CRTP:Square;

export import :RectangularShape;
export import :HeightIsWidth;

export namespace
	Shapes2D
{
	struct
		Square
	:	RectangularShape
		<	Square
		>
	,	HeightIsWidth
		<	Square
		>
	{};
}
