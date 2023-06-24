export module Evaluation.CRTP.PyramidicBody;

import Evaluation.Dependency.Fraction;
import Evaluation.CRTP.ExtendedShape;

export namespace
	Bodies3D
{
	template
		<	typename
				t_tBody
		,	typename
				t_tShape
		>
	struct
		PyramidicBody
	:	ExtendedShape
		<	t_tBody
		,	t_tShape
		>
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
			,	3uz
			>{};
		}
	};
}
