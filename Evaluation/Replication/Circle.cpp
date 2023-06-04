export module Evaluation.Replication.Circle;

import Evaluation.Dependency.DataTypes;
import Evaluation.Dependency.PiFraction;

import Std;

export namespace
	Bodies3D
{
	struct
		Circle
	{
		RGBAColor
			Color
		;
		Float
			Width
		;
	};

	[[nodiscard]]
	auto constexpr inline
	(	ComputeVolumeCircle
	)	(	void const
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
			,	4z
			>{}
		*	vWidth
		*	vWidth
		;
	}
}
