export module Evaluation.Replication.Cube;

export import Evaluation.Shared.DataTypes;
export import Evaluation.Shared.SizeCheck;

export namespace
	Bodies3D
{
	struct
		Cube
	{
		Float
			Width
		;
		RGBAColor
			Color
		;
	};

	auto constexpr
		ComputeVolumeCube
		(	void const
			*	i_aObject
		)
	noexcept
	->	Float
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
			->	Width
		*	aCube
			->	Width
		*	aCube
			->	Width
		;
	}
}

static_assert(SizeMinimal<Bodies3D::Cube, 1, 1>);
