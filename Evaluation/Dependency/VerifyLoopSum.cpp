export module Evaluation.Dependency.VerifyLoopSum;

import Evaluation.Dependency.PseudoRandomSequence;

import std;

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
		if	(	i_vSequence
				.	Seed
					()
			!=	42uz
			)
		{	return
				0
			;
		}

		auto const
			fExpect
		=	[&]	(	float
						i_vExpected
				)
			{
				if	(	(	i_vLoopSum
						>=	i_vExpected
						)
					and	(	i_vLoopSum
						<=	i_vExpected
						)
					)
				{	return
						0
					;
				}
				throw
					i_vLoopSum
				;
			}
		;

		switch
			(	i_vSequence
				.	size
					()
			)
		{
			case
				100'000uz
		:	return
			fExpect
			(	1.16918583e+11f
			);

			case
				200'000uz
		:	return
			fExpect
			(	2.35098194e+11f
			);

			default
		:	return
				0
			;
		}
	}
}
