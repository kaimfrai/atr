export module Evaluation.CRTP.CircularShape;

export import Evaluation.Shared.PiFraction;
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
		CircularShape
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
				πFraction
				<	1z
				,	4z
				>{}
			;
		}
	};
}
