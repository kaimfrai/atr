export module Evaluation.CRTP:TriangularShape;

import Evaluation.Shared.DataTypes;
import Evaluation.Shared.Fraction;
export import :BasicShape;
export import :SeparateWidth;

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
		auto
			GetComputeAreaMultiplier
			()	const
		noexcept
		->	Float
		{	return
			Fraction
			<	1uz
			,	2uz
			>{};
		}
	};
}
