export module Evaluation.SOAReplication.Rectangle;

import Evaluation.SOAReplication.Tag;
import Evaluation.SOAReplication.View32;

export namespace
	Bodies3D
{
	struct
		Rectangle
	{
		ETag static constexpr inline
			Tag
		=	ETag::Rectangle
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
	(	ConstructRectangle
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
			[10z, 1.0f]
		;
	}
}

