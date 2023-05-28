export module Evaluation.Replication.Sphere;

import Evaluation.Shared.DataTypes;
import Evaluation.Shared.PiFraction;

export namespace
	Bodies3D
{
	struct
		Sphere
	{
		RGBAColor
			Color
		;
		Float
			Width
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
