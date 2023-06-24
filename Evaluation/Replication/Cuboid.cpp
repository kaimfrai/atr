export module Evaluation.Replication.Cuboid;

import Evaluation.Dependency.DataTypes;

export namespace
	Bodies3D
{
	struct
		Cuboid
	{
		Float
			Depth
		;
		Float
			Height
		;
		Float
			Width
		;
		RGBAColor
			Color
		;
	};

	[[nodiscard]]
	auto constexpr inline
	(	ComputeVolumeCuboid
	)	(	void const
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

