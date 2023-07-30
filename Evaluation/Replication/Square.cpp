export module Evaluation.Replication.Square;

export namespace
	Bodies3D
{
	struct
		Square
	{
		float
			ColorRed
		;
		float
			ColorGreen
		;
		float
			ColorBlue
		;
		float
			ColorAlpha
		;
		float
			PointLateral
		;
		float
			PointLongitudinal
		;
		float
			PointVertical
		;
		float
			Height
		;
	};

	[[nodiscard]]
	auto constexpr inline
	(	ComputeVolumeSquare
	)	(	void const
			*	i_aObject
		)
		noexcept
	->	float
	{
		Square const
		*	aSquare
		=	static_cast
			<	Square const
				*
			>(	i_aObject
			)
		;

		return
			aSquare
			->	Height
		*	aSquare
			->	Height
		;
	}
}

