export module Evaluation.Replication.Cube;

export namespace
	Bodies3D
{
	struct
		Cube
	{
		float
			ColorAlpha
		;
		float
			ColorBlue
		;
		float
			ColorGreen
		;
		float
			ColorRed
		;
		float
			Height
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
	};

	[[nodiscard]]
	auto constexpr inline
	(	ComputeVolumeCube
	)	(	void const
			*	i_aObject
		)
		noexcept
	->	float
	{
		Cube const
		*	aCube
		=	static_cast
			<	Cube const
				*
			>(	i_aObject
			)
		;

		return
			aCube
			->	Height
		*	aCube
			->	Height
		*	aCube
			->	Height
		;
	}
}

