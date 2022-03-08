export module Evaluation.Virtual:TriangularShape;

export import Evaluation.Shared;
export import :BasicShape;

export namespace
	Shapes2D
{
	struct
		TriangularShape
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
				<	1ll
				,	2ll
				>{}
			;
		}
	};
};
