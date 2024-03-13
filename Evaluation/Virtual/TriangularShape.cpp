export module Evaluation.Virtual.TriangularShape;

import Evaluation.Virtual.BasicShape;

import Evaluation.Dependency.CommonData;
import Evaluation.Dependency.Fraction;

export namespace
	Shapes2D
{
	struct
		TriangularShape
	:	BasicShape
	{
		float
			Height
		{};

		explicit(false) constexpr inline
		(	TriangularShape
		)	()
			noexcept
		=	default;

		explicit(true) constexpr inline
		(	TriangularShape
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
				Fraction
				<	1uz
				,	2uz
				>{}
			;
		}
	};
};
