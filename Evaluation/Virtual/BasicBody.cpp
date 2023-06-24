export module Evaluation.Virtual.BasicBody;

import Evaluation.Virtual.IBody;

import Evaluation.Dependency.DataTypes;

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
		->	Float
		=	0;

		[[nodiscard]]
		auto constexpr inline
		(	ComputeVolume
		)	()	const
			noexcept
		->	Float
			override
		{	return
				GetComputeSizeMultiplier
				()
			*	GetDepth
				()
			*	GetHeight
				()
			*	GetWidth
				()
			;
		}
	};
}
