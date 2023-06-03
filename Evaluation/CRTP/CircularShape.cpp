export module Evaluation.CRTP.CircularShape;

import Evaluation.Dependency.DataTypes;
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
		(	GetComputeAreaMultiplier
		)	()	const
			noexcept
		->	Float
		{	return
			PiFraction
			<	1z
			,	4z
			>{}	;
		}
	};
}
