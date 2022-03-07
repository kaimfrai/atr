export module Evaluation.Virtual.Triangle;

export import Evaluation.Virtual.TriangularShape;

export namespace
	Shapes2D
{
	struct
		Triangle
	:	TriangularShape
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
