export module Evaluation.Replication.Ellipsoid;

import Evaluation.Dependency.DataTypes;
import Evaluation.Dependency.PiFraction;

export namespace
	Bodies3D
{
	struct
		Ellipsoid
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

	[[nodiscard]]
	auto constexpr
		ComputeVolumeEllipsoid
		(	void const
			*	i_aObject
		)
		noexcept
	->	Float
	{
		Ellipsoid const
		*	aEllipsoid
		=	static_cast
			<	Ellipsoid const
				*
			>(	i_aObject
			)
		;

		return
			PiFraction
			<	1z
			,	6z
			>{}
		*	aEllipsoid
			->	Depth
		*	aEllipsoid
			->	Height
		*	aEllipsoid
			->	Width
		;
	}
}
