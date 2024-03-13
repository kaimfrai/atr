export module Evaluation.Virtual.BasicShape;

import Evaluation.Dependency.CommonData;
import Evaluation.Virtual.IShape;

export namespace
	Shapes2D
{
	struct
		BasicShape
	:	IShape
	{
		RGBAColor
			Color
		{};
		Point
			Coordinates
		{};

		explicit(false) constexpr inline
		(	BasicShape
		)	()
			noexcept
		=	default;

		explicit(true) constexpr inline
		(	BasicShape
		)	(	RGBAColor const
				&	i_rColor
			,	Point const
				&	i_rCoordinates
			)
			noexcept
		:	Color
			{	i_rColor
			}
		,	Coordinates
			{	i_rCoordinates
			}
		{}

		[[nodiscard]]
		auto constexpr inline
		(	GetLateral
		)	()	const
			noexcept
		->	float
		{	return
				Coordinates
				.	Lateral
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetVertical
		)	()	const
			noexcept
		->	float
		{	return
				Coordinates
				.	Vertical
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetLongitudinal
		)	()	const
			noexcept
		->	float
		{	return
				Coordinates
				.	Longitudinal
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetRed
		)	()	const
			noexcept
		->	float
		{	return
				Color
				.	Red
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetGreen
		)	()	const
			noexcept
		->	float
		{	return
				Color
				.	Green
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetBlue
		)	()	const
			noexcept
		->	float
		{	return
				Color
				.	Blue
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetAlpha
		)	()	const
			noexcept
		->	float
		{	return
				Color
				.	Alpha
			;
		}

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
