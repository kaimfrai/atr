export module Evaluation.Virtual.RectangularShape;

export import Evaluation.Shared;
export import Evaluation.Virtual.BasicShape;

export namespace
	Shapes2D
{
	struct
		RectangularShape
	:	BasicShape
	{
		Float
			Width
		;

		auto
			GetWidth
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

		auto
			GetComputeAreaMultiplier
			()	const
		noexcept
		->	Float
		override
		{
			return
				Fraction
				<>{}
			;
		}
	};
}
