export module Evaluation.Replication.Sphere;

import Evaluation.Dependency.DataTypes;
import Evaluation.Dependency.PiFraction;

import Std;

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

	[[nodiscard]]
	auto constexpr
		ComputeVolumeSphere
		(	void const
			*	i_aObject
		)
		noexcept
	->	Float
	{
		Float const
			vWidth
		=	*	::std::launder
				(	static_cast
					<	Float const
						*
					>(	i_aObject
					)
				+	1z
				)
		;

		return
			PiFraction
			<	1z
			,	6z
			>{}
		*	vWidth
		*	vWidth
		*	vWidth
		;
	}
}
