export module Evaluation.CRTP:Circle;

export import :CircularShape;
export import :HeightIsWidth;

export namespace
	Shapes2D
{
	struct
		Circle
	:	CircularShape
		<	Circle
		>
	,	HeightIsWidth
		<	Circle
		>
	{};
}
