export module Evaluation.CRTP.SphericBody;

import Evaluation.Dependency.PiFraction;
import Evaluation.CRTP.ExtendedShape;

export namespace
	Bodies3D
{
	template
		<	typename
				t_tShape
		>
	struct
		SphericBody
	:	ExtendedShape
		<	t_tShape
		>
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
				,	6z
				>{}
			;
		}
	};
}
