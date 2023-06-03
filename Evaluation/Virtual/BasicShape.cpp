export module Evaluation.Virtual.BasicShape;

import Evaluation.Virtual.IShape;

import Evaluation.Dependency.DataTypes;

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

		[[nodiscard]]
		auto virtual constexpr
		(	GetComputeAreaMultiplier
		)	()	const
			noexcept
		->	Float
		=	0;

		[[nodiscard]]
		auto constexpr inline
		(	ComputeArea
		)	()	const
			noexcept
		->	Float
			override
		{	return
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
