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
		(	GetComputeVolumeMultiplier
		)	()	const
			noexcept
		->	Float
		=	0;

		[[nodiscard]]
		auto constexpr
		(	ComputeVolume
		)	()	const
			noexcept
		->	Float
			override
		{	return
				GetComputeVolumeMultiplier
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
