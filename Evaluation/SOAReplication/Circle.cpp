export module Evaluation.SOAReplication.Circle;

import Evaluation.SOAReplication.Tag;
import Evaluation.SOAReplication.View32;
import Evaluation.Dependency.PiFraction;

export namespace
	Bodies3D
{
	struct
		Circle
	{
		ETag static constexpr inline
			Tag
		=	ETag::Circle
		;

		float
			ColorRed
		;
		float
			ColorGreen
		;
		float
			ColorBlue
		;
		float
			ColorAlpha
		;
		float
			PointLateral
		;
		float
			PointLongitudinal
		;
		float
			PointVertical
		;
		float
			Height
		;
	};

	auto constexpr inline
	(	ConstructCircle
	)	(	View32
				i_vView32
		)
		noexcept
	->	void
	{	i_vView32
			[0z, 0.0f]
			[1z, 0.0f]
			[2z, 0.0f]
			[3z, 0.0f]
			[4z, 0.0f]
			[5z, 0.0f]
			[6z, 0.0f]
			[7z, 0.0f]
			[8z, 0.0f]
			[9z, 0.0f]
			[10z, PiFraction<1z, 4z>{}.operator float()]
		;
	}
}
