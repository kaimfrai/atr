export module Evaluation.Virtual.RectangularShape;

import Evaluation.Virtual.BasicShape;

import Evaluation.Dependency.CommonData;
import Evaluation.Dependency.Fraction;

export namespace
	Shapes2D
{
	struct
		RectangularShape
	:	BasicShape
	{
		float
			Height
		{};

		explicit(false) constexpr inline
		(	RectangularShape
		)	()
			noexcept
		=	default;

		explicit(true) constexpr inline
		(	RectangularShape
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
				Fraction<>
				{}
			;
		}
	};
}
