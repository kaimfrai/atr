export module Evaluation.Replication.Ellipsoid;

export import Evaluation.Shared.DataTypes;
export import Evaluation.Shared.PiFraction;
export import Evaluation.Shared.SizeCheck;

export namespace
	Bodies3D
{
	struct
		Ellipsoid
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
			πFraction
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

static_assert(SizeMinimal<Bodies3D::Ellipsoid, 3, 1>);
