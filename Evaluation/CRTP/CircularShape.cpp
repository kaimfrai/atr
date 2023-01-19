export module Evaluation.CRTP:CircularShape;

import Evaluation.Shared.PiFraction;
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
				PiFraction
				<	1z
				,	4z
				>{}
			;
		}
	};
}
