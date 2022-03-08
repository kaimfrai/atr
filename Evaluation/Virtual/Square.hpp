export module Evaluation.Virtual:Square;

export import :RectangularShape;

export namespace
	Shapes2D
{
	struct
		Square
	:	RectangularShape
	{
		auto
			GetHeight
			()	const
		noexcept
		->	Float const
			&
		override
		{
			return
				Width
			;
		}
	};
}
