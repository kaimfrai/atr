export module Evaluation.Virtual.BasicShape;

import Evaluation.Virtual.IShape;

import Evaluation.Shared.DataTypes;

export namespace
	Shapes2D
{
	struct
		BasicShape
	:	IShape
	{
		RGBAColor
			Color
		;

		virtual
		auto
			GetComputeAreaMultiplier
			()	const
		noexcept
		->	Float
		=	0
		;

		auto
			ComputeArea
			()	const
		noexcept
		->	Float
		override
		{
			return
				GetComputeAreaMultiplier
				()
			*	GetHeight
				()
			*	GetWidth
				()
			;
		}
	};
}
