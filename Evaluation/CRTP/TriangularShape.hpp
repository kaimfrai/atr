export module Evaluation.CRTP.TriangularShape;

export import Evaluation.Shared.Fraction;
export import Evaluation.CRTP.BasicShape;
export import Evaluation.CRTP.SeparateWidth;

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
		{
			return
				Fraction
				<	1ll
				,	2ll
				>{}
			;
		}
	};
}
