export module Evaluation.SOAReplication.Ellipsoid;

import Evaluation.SOAReplication.Tag;
import Evaluation.SOAReplication.View32;
import Evaluation.Dependency.PiFraction;

export namespace
	Bodies3D
{
	struct
		Ellipsoid
	{
		ETag static constexpr inline
			Tag
		=	ETag::Ellipsoid
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
		float
			Depth
		;
	};

	auto constexpr inline
	(	ConstructEllipsoid
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
		;
	}

	[[nodiscard]]
	auto constexpr inline
	(	ComputeVolumeEllipsoid
	)	(	View32
				i_vView32
		)
		noexcept
	->	float
	{
		float const
			vHeight
		=	i_vView32
			[	7z
			]
		;
		float const
			vWidth
		=	i_vView32
			[	8z
			]
		;
		float const
			vDepth
		=	i_vView32
			[	9z
			]
		;

		return
			PiFraction
			<	1z
			,	6z
			>{}
		*	vHeight
		*	vWidth
		*	vDepth
		;
	}
}
