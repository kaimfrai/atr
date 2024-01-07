export module Evaluation.Dependency.TransformReduce;

import Std;

export namespace
	Bodies3D
{
	[[nodiscard]]
	auto constexpr inline
	(	TransformReduce
	)	(	auto
				i_aBegin
		,	auto
				i_aEnd
		,	auto
				i_fTransform
		)
		noexcept
	->	auto
	{
		using
			value_type
		=	decltype
			(	i_fTransform
				(	*
					i_aBegin
				)
			)
		;

		value_type
			vBuffer
			[	32
			]
		;
		// UB for empty sequence
		// UB for size >= 2^31

		int
			vIndex
		=	0
		;
		unsigned int
			vIteration
		=	1u
		;
		int
			vLimit
		=	::std::popcount
			(	vIteration
			)
		;

		for	(	auto
					aCurrent
				=	i_aBegin
			;		aCurrent
				!=	i_aEnd
			;	++	aCurrent
			,	++	vIteration
			,		vIndex
				=	vLimit
			,		vLimit
				=	::std::popcount
					(	vIteration
					)
			)
		{
				vBuffer
				[	vIndex
				]
			=	i_fTransform
				(	*
					aCurrent
				)
			;

			for	(
				;		vIndex
					>=	vLimit
				;	--	vIndex
				)
			{
					vBuffer
					[		vIndex
						-	1
					]
				+=	vBuffer
					[	vIndex
					]
				;
			}
		}

		for	(	--	vIndex
			;		vIndex
				>=	1
			;	--	vIndex
			)
		{
				vBuffer
				[		vIndex
					-	1
				]
			+=	vBuffer
				[	vIndex
				]
			;
		}

		return
			vBuffer
			[	0
			]
		;
	}
}
