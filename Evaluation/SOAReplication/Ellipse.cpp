export module Evaluation.SOAReplication.Ellipse;

import Evaluation.SOAReplication.Tag;
import Evaluation.SOAReplication.View32;
import Evaluation.Dependency.PiFraction;

export namespace
	Bodies3D
{
	struct
		Ellipse
	{
		ETag static constexpr inline
			Tag
		=	ETag::Ellipse
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
		float
			Width
		;
	};

	auto constexpr inline
	(	ConstructEllipse
	)	(	View32
				i_vView32
		,	float
				i_vRed
		,	float
				i_vGreen
		,	float
				i_vBlue
		,	float
				i_vAlpha
		,	float
				i_vLateral
		,	float
				i_vLongitudinal
		,	float
				i_vVertical
		,	float
				i_vHeight
		,	float
				i_vWidth
		)
		noexcept
	->	void
	{	i_vView32
			[0z, i_vRed]
			[1z, i_vGreen]
			[2z, i_vBlue]
			[3z, i_vAlpha]
			[4z, i_vLateral]
			[5z, i_vLongitudinal]
			[6z, i_vVertical]
			[7z, i_vHeight]
			[8z, i_vWidth]
			[9z, 1.0f]
			[10z, PiFraction<1z, 4z>{}.operator float()]
		;
	}
}
