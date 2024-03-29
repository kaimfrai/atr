export module Evaluation.TagReplication.Cuboid;

import Evaluation.TagReplication.Tag;

export namespace
	Bodies3D
{
	struct
		Cuboid
	{
		ETag static constexpr inline
			Tag
		=	ETag::Cuboid
		;

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
		float
			Width
		;
		float
			Depth
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
			->	Height
		*	aCuboid
			->	Width
		*	aCuboid
			->	Depth
		;
	}
}

