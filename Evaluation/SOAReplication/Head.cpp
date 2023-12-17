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
		::std::int32_t
			m_vEyesIndex
		;
	};

	auto constexpr inline
	(	ConstructHead
	)	(	View32
				i_vView32
		,	View32
				i_vEyesView
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
			[8z, i_vEyesView.m_vIndex]
		;
		i_vEyesView
			[0z, 0.0f]
			[1z, 0.0f]
			[2z, 0.0f]
			[3z, 0.0f]
			[4z, 0.0f]
			[5z, 0.0f]
			[6z, 0.0f]
			[7z, 0.0f]
		;
	}

	[[nodiscard]]
	auto constexpr inline
	(	ComputeVolumeHead
	)	(	View32
				i_vView32
		)
		noexcept
	->	float
	{	return
			ComputeVolumeSphere
			(	i_vView32
			)
		;
	}
}

