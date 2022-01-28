export module Evaluation.Replication.Sphere;

export import Evaluation.Shared.DataTypes;
export import Evaluation.Shared.PiFraction;
export import Evaluation.Shared.SizeCheck;

export namespace
	Bodies3D
{
	struct
		Sphere
	{
		Float
			Width
		;
		RGBAColor
			Color
		;
	};

	auto constexpr
		ComputeVolumeSphere
		(	void const
			*	i_aObject
		)
	noexcept
	->	Float
	{
		Float const
			nWidth
		=	*static_cast
			<	Float const
				*
			>(	i_aObject
			)
		;

		return
			PiFraction
			<	1z
			,	6z
			>{}
		*	nWidth
		*	nWidth
		*	nWidth
		;
	}
}

static_assert(SizeMinimal<Bodies3D::Sphere, 1, 1>);
