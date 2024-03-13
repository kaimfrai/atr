export module Evaluation.CRTP.Cone;

import Evaluation.Dependency.CommonData;
import Evaluation.Dependency.PiFraction;
import Evaluation.CRTP.Circle;
import Evaluation.CRTP.ExtendedShape;
import Evaluation.CRTP.SeparateDepth;

export namespace
	Bodies3D
{
	struct
		Cone
	:	ExtendedShape
		<	Shapes2D::Circle
		>
	,	SeparateDepth
	{
		explicit(false) constexpr inline
		(	Cone
		)	()
			noexcept
		=	default;

		explicit(true) constexpr inline
		(	Cone
		)	(	RGBAColor const
				&	i_rColor
			,	Point const
				&	i_rPoint
			,	float
					i_vHeight
			,	float
					i_vDepth
			)
			noexcept
		:	ExtendedShape
			{	i_rColor
			,	i_rPoint
			,	i_vHeight
			}
		,	SeparateDepth
			{	i_vDepth
			}
		{}

		[[nodiscard]]
		auto static constexpr inline
		(	GetComputeSizeMultiplier
		)	()
			noexcept
		->	float
		{	return
				PiFraction
				<	1z
				,	12z
				>{}
			;
		}
	};
}
