export module Evaluation.Virtual.CircularShape;

import Evaluation.Virtual.BasicShape;

import Evaluation.Dependency.CommonData;
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
		{};

		explicit(false) constexpr inline
		(	CircularShape
		)	()
			noexcept
		=	default;

		explicit(true) constexpr inline
		(	CircularShape
		)	(	RGBAColor const
				&	i_rColor
			,	Point const
				&	i_rCoordinates
			,	float
					i_vHeight
			)
			noexcept
		:	BasicShape
			{	i_rColor
			,	i_rCoordinates
			}
		,	Height
			{	i_vHeight
			}
		{}

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
				>
			;
		}
	};
}
