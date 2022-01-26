export module Evaluation.Replication.Cone;

export import Evaluation.Shared.DataTypes;
export import Evaluation.Shared.PiFraction;
export import Evaluation.Shared.SizeCheck;

export namespace
	Bodies3D
{
	struct
		Cone
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
		ComputeVolumeCone
		(	void const
			*	i_aObject
		)
	noexcept
	->	Float
	{
		Cone const
		*	aCone
		=	static_cast
			<	Cone const
				*
			>(	i_aObject
			)
		;

		return
			πFraction
			<	1z
			,	12z
			>{}
		*	aCone
			->	Depth
		*	aCone
			->	Width
		*	aCone
			->	Width
		;
	}
}

static_assert(SizeMinimal<Bodies3D::Cone, 2, 1>);
