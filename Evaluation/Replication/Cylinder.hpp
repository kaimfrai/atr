export module Evaluation.Replication.Cylinder;

export import Evaluation.Shared.DataTypes;
export import Evaluation.Shared.PiFraction;

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
			PiFraction
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
