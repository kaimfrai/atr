export module Evaluation.Shared.MainTemplate;

export import Evaluation.Shared.DataTypes;
export import Evaluation.Shared.PseudoRandomSequence;
export import Std;

export
{
	template
		<	typename
				t_tBody3D
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
	auto
		EvaluateRandomContainer
		(	PseudoRandomSequence const
			&	i_rRandom

		)
	{
		std::vector
		<	t_tBody3D
		>	vElements
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
		for	(	auto const
				&	rBody
				:	vElements
			)
		{
				vLoopSum
			+=	t_fComputeVolume
				(	rBody
				)
			;
		}
		return
			vLoopSum
		;
	}

	template
		<	typename
				t_tBody3D
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
	auto inline
		MainTemplate
		(	int
				i_nArgCount
		,	char const
			*	i_aArgValue
			[]
		)
	->	int
	{
		Float
			TotalSum
		=	0
		;

		auto const
			vLoopIterations
		=	std::strtoull
			(	i_aArgValue
				[	i_nArgCount
				-	3
				]
			,	nullptr
			,	10
			)
		;
		auto const
			vRandomSeed
		=	std::strtoull
			(	i_aArgValue
				[	i_nArgCount
				-	2
				]
			,	nullptr
			,	10
			)
		;
		auto const
			vRandomSequenceLength
		=	std::strtoull
			(	i_aArgValue
				[	i_nArgCount
				-	1
				]
			,	nullptr
			,	10
			)
		;
		for (	auto _
				=	0ull
			;	_ <  vLoopIterations
			;	++_
			)
		{
			(	TotalSum
			+=	EvaluateRandomContainer
				<	t_tBody3D
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
			);
		}
		return
			TotalSum
		;
	}
}

