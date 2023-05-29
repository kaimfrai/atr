export module Evaluation.Replication.Cylinder;

import Evaluation.Shared.DataTypes;
import Evaluation.Shared.PiFraction;

export namespace
	Bodies3D
{
	struct
		Cylinder
	{
		RGBAColor
			Color
		;
		Float
			Depth
		;
		Float
			Width
		;
	};

	[[nodiscard]]
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
