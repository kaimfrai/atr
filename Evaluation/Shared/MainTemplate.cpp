export module Evaluation.Shared.MainTemplate;

import Evaluation.Shared.DataTypes;
import Evaluation.Shared.PseudoRandomSequence;

import Std;

export
{
	template
		<	typename
				t_tBodyContainer
		,	auto
				t_fMakeCube
		,	auto
				t_fMakeCuboid
		,	auto
				t_fMakePyramid
		,	auto
				t_fMakeSphere
		,	auto
				t_fMakeCylinder
		,	auto
				t_fMakeCone
		,	auto
				t_fMakeEllipsoid
		,	auto
				t_fMakeHead
		,	auto
				t_fComputeVolume
		>
	[[nodiscard]]
	auto inline
	(	EvaluateRandomContainer
	)	(	PseudoRandomSequence const
			&	i_rRandom

		)
	->	Float
	{
		t_tBodyContainer
			vElements
		;

			vElements
		.	reserve
			(	i_rRandom
			.	size
				()
			)
		;

		for	(	auto
					nRandom
				:	i_rRandom
			)
		{
			switch
				(	nRandom
				%	8
				)
			{	case
					0
				:	vElements
				.	emplace_back
					(	t_fMakeCube
						()
					)
				;	break
				;

				case
					1
				:	vElements
				.	emplace_back
					(	t_fMakeCuboid
						()
					)
				;	break
				;

				case
					2
				:	vElements
				.	emplace_back
					(	t_fMakePyramid
						()
					)
				;	break
				;

				case
					3
				:	vElements
				.	emplace_back
					(	t_fMakeSphere
						()
					)
				;	break
				;

				case
					4
				:	vElements
				.	emplace_back
					(	t_fMakeCylinder
						()
					)
				;	break
				;

				case
					5
				:	vElements
				.	emplace_back
					(	t_fMakeCone
						()
					)
				;	break
				;

				case
					6
				:	vElements
				.	emplace_back
					(	t_fMakeEllipsoid
						()
					)
				;	break
				;

				case
					7
				:	vElements
				.	emplace_back
					(	t_fMakeHead
						()
					)
				;	break
				;
			}
		}

		Float
			vLoopSum
		{};
		for	(	auto
				&	rBody
				:	vElements
			)
		{	(	vLoopSum
			+=	t_fComputeVolume
				(	rBody
				)
			);
		}
		return
			vLoopSum
		;
	}

	template
		<	typename
				t_tBodyContainer
		,	auto
				t_fMakeCube
		,	auto
				t_fMakeCuboid
		,	auto
				t_fMakePyramid
		,	auto
				t_fMakeSphere
		,	auto
				t_fMakeCylinder
		,	auto
				t_fMakeCone
		,	auto
				t_fMakeEllipsoid
		,	auto
				t_fMakeHead
		,	auto
				t_fComputeVolume
		>
	[[nodiscard]]
	auto inline
		MainTemplate
		(	::std::span<char const*>
				i_vArguments
		)
	->	int
	{
		auto const
			vRandomSeed
		=	::std::strtoull
			(	i_vArguments
				[	i_vArguments
					.	size
						()
				-	2uz
				]
			,	nullptr
			,	10
			)
		;
		auto const
			vRandomSequenceLength
		=	::std::strtoll
			(	i_vArguments
				.	back()
			,	nullptr
			,	10
			)
		;

		auto static constexpr
			vExpectedValue
		=	0
		;

		auto const
			vResult
		=	EvaluateRandomContainer
			<	t_tBodyContainer
			,	t_fMakeCube
			,	t_fMakeCuboid
			,	t_fMakePyramid
			,	t_fMakeSphere
			,	t_fMakeCylinder
			,	t_fMakeCone
			,	t_fMakeEllipsoid
			,	t_fMakeHead
			,	t_fComputeVolume
			>(	PseudoRandomSequence
				{	vRandomSeed
				,	vRandomSequenceLength
				}
			)
		;

		return
			static_cast<int>
			(	vResult
			)
		-	vExpectedValue
		;
	}
}

