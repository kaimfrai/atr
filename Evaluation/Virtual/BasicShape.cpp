export module Evaluation.Virtual.BasicShape;

import Evaluation.Virtual.IShape;

export namespace
	Shapes2D
{
	struct
		RGBAColor
	{
		float
			Red
		;
		float
			Green
		;
		float
			Blue
		;
		float
			Alpha
		;
	};

	struct
		BasicShape
	:	IShape
	{
		RGBAColor
			Color
		;

		[[nodiscard]]
		auto virtual constexpr
		(	GetComputeSizeMultiplier
		)	()	const
			noexcept
		->	float
		=	0;

		[[nodiscard]]
		auto constexpr inline
		(	ComputeArea
		)	()	const
			noexcept
		->	float
			override
		{	return
				GetComputeSizeMultiplier
				()
			*	GetHeight
				()
			*	GetWidth
				()
			;
		}
	};
}
