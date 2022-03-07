export module Evaluation.Replication.Cuboid;

export import Evaluation.Shared;

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

