export module Evaluation.CRTP.BasicShape;

export namespace
	Shapes2D
{
	struct
		Point
	{
		float
			Lateral
		;
		float
			Vertical
		;
		float
			Longitudinal
		;
	};

	struct
		RGBAColor
	{
		float
			Red
		;
		float
			Green
		;
		float
			Blue
		;
		float
			Alpha
		;
	};

	template
		<	typename
				t_tShape
		>
	struct
		BasicShape
	{
		Point
			Coordinates
		;
		RGBAColor
			Color
		;

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
		auto constexpr inline
		(	ComputeArea
		)	()	const
			noexcept
		->	float
		{
			t_tShape const
			&	rShape
			=	*static_cast
				<	t_tShape const
					*
				>(	this
				)
			;
			return
				rShape
				.	GetComputeSizeMultiplier
					()
			*	rShape
				.	GetHeight
					()
			*	rShape
				.	GetWidth
					()
			;
		}
	};
}
