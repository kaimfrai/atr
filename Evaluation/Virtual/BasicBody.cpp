export module Evaluation.Virtual.BasicBody;

import Evaluation.Virtual.IBody;

import Evaluation.Shared.DataTypes;

export namespace
	Bodies3D
{
	struct
		BasicBody
	:	IBody
	{
		virtual
		auto
			GetComputeVolumeMultiplier
			()	const
		noexcept
		->	Float
		=	0
		;

		auto
			ComputeVolume
			()	const
		noexcept
		->	Float
		override
		{
			return
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
