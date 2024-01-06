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
		)
	->	int
	{
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
					<=	1.16918596e+11f
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
	}
}
