export module Evaluation.Virtual:Ellipse;

export import :CircularShape;

export namespace
	Shapes2D
{
	struct
		Ellipse
	:	CircularShape
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
