export module Evaluation.CRTP.RectangularShape;

import Evaluation.Dependency.DataTypes;
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
		RectangularShape
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
		->	Float
		{	return
			Fraction<>
			{};
		}
	};
}
