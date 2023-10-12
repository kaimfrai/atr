export module Evaluation.CRTP.RectangularShape;

import Evaluation.Dependency.Fraction;
import Evaluation.CRTP.BasicShape;
import Evaluation.CRTP.SeparateWidth;

export namespace
	Shapes2D
{
	struct
		RectangularShape
	:	BasicShape
	,	SeparateWidth
	{
		[[nodiscard]]
		auto static constexpr inline
		(	GetComputeSizeMultiplier
		)	()
			noexcept
		->	float
		{	return
				Fraction<>
				{}
			;
		}
	};
}
