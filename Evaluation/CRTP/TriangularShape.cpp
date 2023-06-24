export module Evaluation.CRTP.TriangularShape;

import Evaluation.Dependency.Fraction;
import Evaluation.CRTP.BasicShape;
import Evaluation.CRTP.SeparateWidth;

export namespace
	Shapes2D
{
	template
		<	typename
				t_tShape
		>
	struct
		TriangularShape
	:	BasicShape
		<	t_tShape
		>
	,	SeparateWidth
	{
		[[nodiscard]]
		auto constexpr inline
		(	GetComputeSizeMultiplier
		)	()	const
			noexcept
		->	float
		{	return
			Fraction
			<	1uz
			,	2uz
			>{};
		}
	};
}
