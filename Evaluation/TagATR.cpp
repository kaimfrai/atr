import Evaluation.Dependency.PseudoRandomSequence;

import Evaluation.TagATR.Circle;
import Evaluation.TagATR.Ellipse;
import Evaluation.TagATR.Rectangle;
import Evaluation.TagATR.Square;
import Evaluation.TagATR.Triangle;
import Evaluation.TagATR.Cube;
import Evaluation.TagATR.Cuboid;
import Evaluation.TagATR.Pyramid;
import Evaluation.TagATR.Sphere;
import Evaluation.TagATR.Cylinder;
import Evaluation.TagATR.Cone;
import Evaluation.TagATR.Ellipsoid;
import Evaluation.TagATR.Head;

import Evaluation.TagATR.Interface;

import ATR.Literals;

import Std;

using namespace ::ATR::Literals;

auto
(	main
)	(	int
	,	char const
		*	i_aArgValue
			[]
	)
->	int
{
	using namespace Bodies3D;

	PseudoRandomSequence
		vRandomSequence
	{	i_aArgValue
		[	1z
		]
	,	i_aArgValue
		[	2z
		]
	};

	VolumeComputer
		vElements
	{	static_cast<::std::int32_t>
		(	vRandomSequence
			.	size
				()
		)
	};

	for	(	auto
				vRandom
			:	vRandomSequence
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
					(	"Circle"_id
					)
				;
			break;

			case
				1
			:	vElements
				.	emplace_back
					(	"Ellipse"_id
					)
				;
			break;

			case
				2
			:	vElements
				.	emplace_back
					(	"Rectangle"_id
					)
				;
			break;

			case
				3
			:	vElements
				.	emplace_back
					(	"Square"_id
					)
				;
			break;

			case
				4
			:	vElements
				.	emplace_back
					(	"Triangle"_id
					)
				;
			break;

			case
				5
			:	vElements
				.	emplace_back
					(	"Cube"_id
					)
				;
			break;

			case
				6
			:	vElements
				.	emplace_back
					(	"Cuboid"_id
					)
				;
			break;

			case
				7
			:	vElements
				.	emplace_back
					(	"Pyramid"_id
					)
				;
			break;

			case
				8
			:	vElements
				.	emplace_back
					(	"Sphere"_id
					)
				;
			break;

			case
				9
			:	vElements
				.	emplace_back
					(	"Cylinder"_id
					)
				;
			break;

			case
				10
			:	vElements
				.	emplace_back
					(	"Cone"_id
					)
				;
			break;

			case
				11
			:	vElements
				.	emplace_back
					(	"Ellipsoid"_id
					)
				;
			break;

			case
				12
			:	vElements
				.	emplace_back
					(	"Head"_id
					)
				;
			break;
		}
	}

	float
		vLoopSum
	{};

	for	(	auto const
				rBody
			:	vElements
		)
	{
		vLoopSum
		+=	rBody
			.	ComputeVolume
				()
		;
	}

	auto static constexpr
		vExpectedValue
	=	0
	;

	return
		static_cast<int>
		(	vLoopSum
		)
	-	vExpectedValue
	;
}
