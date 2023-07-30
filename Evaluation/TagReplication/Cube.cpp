export module Evaluation.TagReplication.Cube;

export namespace
	Bodies3D
{
	struct
		Cube
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

