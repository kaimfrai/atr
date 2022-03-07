export module Evaluation.Virtual.Rectangle;

export import Evaluation.Virtual.RectangularShape;

export namespace
	Shapes2D
{
	struct
		Rectangle
	:	RectangularShape
	{
		Float
			Height
		;

		auto
			GetHeight
			()	const
		noexcept
		->	Float const
			&
		override
		{
			return
				Height
			;
		}
	};
}