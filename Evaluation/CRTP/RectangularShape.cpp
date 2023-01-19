export module Evaluation.CRTP.RectangularShape;

import Evaluation.Shared.DataTypes;
import Evaluation.Shared.Fraction;
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
		auto
			GetComputeAreaMultiplier
			()	const
		noexcept
		->	Float
		{
			return
				Fraction
				<>{}
			;
		}
	};
}
