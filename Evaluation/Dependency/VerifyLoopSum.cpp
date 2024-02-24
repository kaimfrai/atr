export module Evaluation.Dependency.VerifyLoopSum;

import Evaluation.Dependency.PseudoRandomSequence;

import Std;

export
{
	[[nodiscard]]
	auto constexpr inline
	(	VerifyLoopSum
	)	(	float
				i_vLoopSum
		,	PseudoRandomSequence
				i_vSequence
				[[maybe_unused]]
		)
	->	int
	{
#ifdef ZERO_INITIALIZE_MEMBERS
		return
			i_vLoopSum
		!=	0.0f
		;
#else
		if	(	(	i_vSequence
					.	Seed
						()
				==	42uz
				)
			and	(	i_vSequence
					.	size
						()
				==	100'000uz
				)
			and	not
				(	(	i_vLoopSum
					>=	1.16918583e+11f
					)
				and	(	i_vLoopSum
					<=	1.16918583e+11f
					)
				)
			)
		{	throw
				i_vLoopSum
			;
		}
		return
			0
		;
#endif
	}
}
