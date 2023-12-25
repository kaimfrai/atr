export module Evaluation.SOAReplication.Square;

import Evaluation.SOAReplication.Tag;
import Evaluation.SOAReplication.View32;

export namespace
	Bodies3D
{
	struct
		Square
	{
		ETag static constexpr inline
			Tag
		=	ETag::Square
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
	(	ConstructSquare
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
			[8z, i_vHeight]
			[9z, 1.0f]
			[10z, 1.0f]
		;
	}
}
