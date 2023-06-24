export module Evaluation.CRTP.CircularShape;

import Evaluation.Dependency.PiFraction;
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
		CircularShape
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
			PiFraction
			<	1z
			,	4z
			>{}	;
		}
	};
}
