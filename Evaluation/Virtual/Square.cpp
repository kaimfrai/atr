export module Evaluation.Virtual.Square;

export import Evaluation.Virtual.RectangularShape;

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
