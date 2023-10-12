export module Evaluation.CRTP.CircularShape;

import Evaluation.Dependency.PiFraction;
import Evaluation.CRTP.BasicShape;
import Evaluation.CRTP.SeparateWidth;

export namespace
	Shapes2D
{
	struct
		CircularShape
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
				PiFraction
				<	1z
				,	4z
				>{}
			;
		}
	};
}
