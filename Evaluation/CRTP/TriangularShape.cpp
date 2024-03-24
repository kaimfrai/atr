export module Evaluation.CRTP.TriangularShape;

import Evaluation.Dependency.Fraction;
import Evaluation.CRTP.BasicShape;
import Evaluation.CRTP.SeparateHeight;

export namespace
	Shapes2D
{
	struct
		TriangularShape
	:	BasicShape
	,	SeparateHeight
	{
		[[nodiscard]]
		auto static constexpr inline
		(	GetComputeSizeMultiplier
		)	()
			noexcept
		->	float
		{	return
				Fraction
				<	1uz
				,	2uz
				>
			;
		}
	};
}
