export module Evaluation.Virtual.BasicBody;

import Evaluation.Virtual.IBody;

export namespace
	Bodies3D
{
	struct
		BasicBody
	:	IBody
	{
		[[nodiscard]]
		auto virtual constexpr
		(	GetComputeSizeMultiplier
		)	()	const
			noexcept
		->	float
		=	0;

		[[nodiscard]]
		auto constexpr inline
		(	ComputeVolume
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
			*	GetDepth
				()
			;
		}
	};
}
