export module Evaluation.Replication.Cylinder;

export import Evaluation.Shared;

export namespace
	Bodies3D
{
	struct
		Cylinder
	{
		Float
			Depth
		;
		Float
			Width
		;
		RGBAColor
			Color
		;
	};

	auto constexpr
		ComputeVolumeCylinder
		(	void const
			*	i_aObject
		)
	noexcept
	->	Float
	{
		Cylinder const
		*	aCylinder
		=	static_cast
			<	Cylinder const
				*
			>(	i_aObject
			)
		;

		return
			πFraction
			<	1z
			,	4z
			>{}
		*	aCylinder
			->	Depth
		*	aCylinder
			->	Width
		*	aCylinder
			->	Width
		;
	}
}

static_assert(SizeMinimal<Bodies3D::Cylinder, 2, 1>);
