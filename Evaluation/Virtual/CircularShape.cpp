export module Evaluation.Virtual.CircularShape;

export import Evaluation.Shared.PiFraction;
export import Evaluation.Virtual.BasicShape;

export namespace
	Shapes2D
{
	struct
		CircularShape
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
				πFraction
				<	1z
				,	4z
				>{}
			;
		}
	};
}
