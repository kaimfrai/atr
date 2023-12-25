export module Evaluation.Virtual.CircularShape;

import Evaluation.Virtual.BasicShape;

import Evaluation.Dependency.PiFraction;

export namespace
	Shapes2D
{
	struct
		CircularShape
	:	BasicShape
	{
		float
			Height
		;

		[[nodiscard]]
		auto constexpr inline
		(	GetHeight
		)	()	const
			noexcept
		->	float
			override
		{	return
				Height
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetComputeSizeMultiplier
		)	()	const
			noexcept
		->	float
			override
		{	return
				PiFraction
				<	1z
				,	4z
				>{}
			;
		}
	};
}
