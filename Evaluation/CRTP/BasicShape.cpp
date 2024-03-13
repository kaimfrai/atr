export module Evaluation.CRTP.BasicShape;

import Evaluation.Dependency.CommonData;

export namespace
	Shapes2D
{
	struct
		BasicShape
	{
		RGBAColor
			Color
		{};
		Point
			Coordinates
		{};

		[[nodiscard]]
		auto constexpr inline
		(	GetLateral
		)	(	this BasicShape const
				&	i_rShape
			)
			noexcept
		->	float
		{	return
				i_rShape
				.	Coordinates
				.	Lateral
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetVertical
		)	(	this BasicShape const
				&	i_rShape
			)
			noexcept
		->	float
		{	return
				i_rShape
				.	Coordinates
				.	Vertical
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetLongitudinal
		)	(	this BasicShape const
				&	i_rShape
			)
			noexcept
		->	float
		{	return
				i_rShape
				.	Coordinates
				.	Longitudinal
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetRed
		)	(	this BasicShape const
				&	i_rShape
			)
			noexcept
		->	float
		{	return
				i_rShape
				.	Color
				.	Red
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetGreen
		)	(	this BasicShape const
				&	i_rShape
			)
			noexcept
		->	float
		{	return
				i_rShape
				.	Color
				.	Green
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetBlue
		)	(	this BasicShape const
				&	i_rShape
			)
			noexcept
		->	float
		{	return
				i_rShape
				.	Color
				.	Blue
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetAlpha
		)	(	this BasicShape const
				&	i_rShape
			)
			noexcept
		->	float
		{	return
				i_rShape
				.	Color
				.	Alpha
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	ComputeArea
		)	(	this auto const
				&	i_rShape
			)
			noexcept
		->	float
		{	return
				i_rShape
				.	GetComputeSizeMultiplier
					()
			*	i_rShape
				.	GetHeight
					()
			*	i_rShape
				.	GetWidth
					()
			;
		}
	};
}
