export module Evaluation.Virtual.Circle;

export import Evaluation.Virtual.CircularShape;

export namespace
	Shapes2D
{
	struct
		Circle
	:	CircularShape
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
