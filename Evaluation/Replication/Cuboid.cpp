export module Evaluation.Replication.Cuboid;

import Evaluation.Shared.DataTypes;

export namespace
	Bodies3D
{
	struct
		Cuboid
	{
		RGBAColor
			Color
		;
		Float
			Depth
		;
		Float
			Height
		;
		Float
			Width
		;
	};

	auto constexpr
		ComputeVolumeCuboid
		(	void const
			*	i_aObject
		)
	noexcept
	->	Float
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

