export module Evaluation.Replication.Cuboid;

export namespace
	Bodies3D
{
	struct
		Cuboid
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
			Depth
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
		float
			Width
		;
	};

	[[nodiscard]]
	auto constexpr inline
	(	ComputeVolumeCuboid
	)	(	void const
			*	i_aObject
		)
		noexcept
	->	float
	{
		Cuboid const
		*	aCuboid
		=	static_cast
			<	Cuboid const
				*
			>(	i_aObject
			)
		;

		return
			aCuboid
			->	Depth
		*	aCuboid
			->	Height
		*	aCuboid
			->	Width
		;
	}
}

