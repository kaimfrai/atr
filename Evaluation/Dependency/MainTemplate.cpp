export module Evaluation.Dependency.MainTemplate;

import Evaluation.Dependency.DataTypes;
import Evaluation.Dependency.PseudoRandomSequence;

import Std;

export
{
	template
		<	typename
				t_tBodyContainer
		,	auto
				t_fMakeCircle
		,	auto
				t_fMakeEllipse
		,	auto
				t_fMakeRectangle
		,	auto
				t_fMakeSquare
		,	auto
				t_fMakeTriangle
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
		noexcept
	->	Float
	{
		t_tBodyContainer
			vElements
		{	i_rRandom
			.	size
				()
		};

		for	(	auto
					vRandom
				:	i_rRandom
			)
		{
			switch
				(	vRandom
				%	13
				)
			{	case
					0
				:	vElements
					.	emplace_back
						(	t_fMakeCircle
							()
						)
					;
				break;

				case
					1
				:	vElements
					.	emplace_back
						(	t_fMakeEllipse
							()
						)
					;
				break;

				case
					2
				:	vElements
					.	emplace_back
						(	t_fMakeRectangle
							()
						)
					;
				break;

				case
					3
				:	vElements
					.	emplace_back
						(	t_fMakeSquare
							()
						)
					;
				break;

				case
					4
				:	vElements
					.	emplace_back
						(	t_fMakeTriangle
							()
						)
					;
				break;

				case
					5
				:	vElements
					.	emplace_back
						(	t_fMakeCube
							()
						)
					;
				break;

				case
					6
				:	vElements
					.	emplace_back
						(	t_fMakeCuboid
							()
						)
					;
				break;

				case
					7
				:	vElements
					.	emplace_back
						(	t_fMakePyramid
							()
						)
					;
				break;

				case
					8
				:	vElements
					.	emplace_back
						(	t_fMakeSphere
							()
						)
					;
				break;

				case
					9
				:	vElements
					.	emplace_back
						(	t_fMakeCylinder
							()
						)
					;
				break;

				case
					10
				:	vElements
					.	emplace_back
						(	t_fMakeCone
							()
						)
					;
				break;

				case
					11
				:	vElements
					.	emplace_back
						(	t_fMakeEllipsoid
							()
						)
					;
				break;

				case
					12
				:	vElements
					.	emplace_back
						(	t_fMakeHead
							()
						)
					;
				break;
			}
		}

		Float
			vLoopSum
		{};

		for	(	auto
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
				t_tBodyContainer
		,	auto
				t_fMakeCircle
		,	auto
				t_fMakeEllipse
		,	auto
				t_fMakeRectangle
		,	auto
				t_fMakeSquare
		,	auto
				t_fMakeTriangle
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
		(	char const
			*	i_aRandomSeed
		,	char const
			*	i_aRandomSequenceLength
		)
		noexcept
	->	int
	{
		auto const
			vRandomSeed
		=	::std::strtoull
			(	i_aRandomSeed
			,	nullptr
			,	10
			)
		;
		auto const
			vRandomSequenceLength
		=	::std::strtoll
			(	i_aRandomSequenceLength
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
			,	t_fMakeCircle
			,	t_fMakeEllipse
			,	t_fMakeRectangle
			,	t_fMakeSquare
			,	t_fMakeTriangle
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

