export module Evaluation.SOAReplication.Head;

import Evaluation.SOAReplication.Tag;
import Evaluation.SOAReplication.Sphere;
import Evaluation.SOAReplication.View32;
import Evaluation.Dependency.PiFraction;

import Std;

export namespace
	Bodies3D
{
	struct
		HeadEyes
	{
		::std::uint32_t
			HeadIndex
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
			LeftPointLateral
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
			RightPointLateral
		;
	};

	struct
		Head
	{
		ETag static constexpr inline
			Tag
		=	ETag::Head
		;

		Sphere
			Sphere
		;
	};

	auto constexpr inline
	(	ConstructHead
	)	(	View32<float>
				i_rView32
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
	{	ConstructSphere
		(	i_rView32
		,	i_vRed
		,	i_vGreen
		,	i_vBlue
		,	i_vAlpha
		,	i_vLateral
		,	i_vLongitudinal
		,	i_vVertical
		,	i_vHeight
		);
	}
}
