export module Evaluation.Replication.Ellipse;

import Evaluation.Dependency.DataTypes;
import Evaluation.Dependency.PiFraction;

import Std;

export namespace
	Bodies3D
{
	struct
		Ellipse
	{
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

	[[nodiscard]]
	auto constexpr inline
	(	ComputeVolumeEllipse
	)	(	void const
			*	i_aObject
		)
		noexcept
	->	Float
	{
		Ellipse const
		*	aEllipse
		=	static_cast
			<	Ellipse const
				*
			>(	i_aObject
			)
		;

		return
			PiFraction
			<	1z
			,	4z
			>{}
		*	aEllipse
			->	Height
		*	aEllipse
			->	Width
		;
	}
}
