import Evaluation.Dependency.CommonData;
import Evaluation.Dependency.DynamicArray;
import Evaluation.Dependency.PseudoRandomSequence;
import Evaluation.Dependency.TransformReduce;
import Evaluation.Dependency.VerifyLoopSum;

import Evaluation.Virtual.Cube;
import Evaluation.Virtual.Circle;
import Evaluation.Virtual.Ellipse;
import Evaluation.Virtual.Rectangle;
import Evaluation.Virtual.Square;
import Evaluation.Virtual.Triangle;
import Evaluation.Virtual.Cuboid;
import Evaluation.Virtual.Pyramid;
import Evaluation.Virtual.Sphere;
import Evaluation.Virtual.Cylinder;
import Evaluation.Virtual.Cone;
import Evaluation.Virtual.Ellipsoid;
import Evaluation.Virtual.Head;
import Evaluation.Virtual.IBody;

import std;

namespace
	Bodies3D
{
	using
		Body3D
	=	::std::unique_ptr
		<	IBody
		>
	;
}

[[nodiscard]]
auto inline
(	ComputeVolumeSum
)	(	PseudoRandomSequence
			i_vRandomSequence
	)
	noexcept
->	float
{
	using namespace Bodies3D;

	DynamicArray<Body3D>
		vElements
	{	i_vRandomSequence
		.	size
			()
	};

	for	(	auto const
			[	vType
			,	vRed
			,	vGreen
			,	vBlue
			,	vAlpha
			,	vLateral
			,	vLongitudinal
			,	vVertical
			,	vHeight
			,	vWidth
			,	vDepth
			,	vEyeRed
			,	vEyeGreen
			,	vEyeBlue
			,	vLeftEyeLateral
			,	vEyeLongitudinal
			,	vEyeVertical
			,	vEyeHeight
			,	vRightEyeLateral
			,	_
			]
		:	i_vRandomSequence
		)
	{
		RGBAColor const
			vColor
		{	vRed
		,	vGreen
		,	vBlue
		,	vAlpha
		};
		Point const
			vCoordinates
		{	vLateral
		,	vLongitudinal
		,	vVertical
		};

		switch
			(	vType
			%	13
			)
		{	case
				0
		:	{	vElements
				.	emplace_back
					(	::std::make_unique
						<	Circle
						>(	vColor
						,	vCoordinates
						,	vHeight
						)
					)
				;
			}
			break;

			case
				1
		:	{	vElements
				.	emplace_back
					(	::std::make_unique
						<	Ellipse
						>(	vColor
						,	vCoordinates
						,	vHeight
						,	vWidth
						)
					)
				;
			}
			break;

			case
				2
		:	{	vElements
				.	emplace_back
					(	::std::make_unique
						<	Rectangle
						>(	vColor
						,	vCoordinates
						,	vHeight
						,	vWidth
						)
					)
				;
			}
			break;

			case
				3
		:	{	vElements
				.	emplace_back
					(	::std::make_unique
						<	Square
						>(	vColor
						,	vCoordinates
						,	vHeight
						)
					)
				;
			}
			break;

			case
				4
		:	{	vElements
				.	emplace_back
					(	::std::make_unique
						<	Triangle
						>(	vColor
						,	vCoordinates
						,	vHeight
						,	vWidth
						)
					)
				;
			}
			break;

			case
				5
		:	{	vElements
				.	emplace_back
					(	::std::make_unique
						<	Cube
						>(	vColor
						,	vCoordinates
						,	vHeight
						)
					)
				;
			}
			break;

			case
				6
		:	{	vElements
				.	emplace_back
					(	::std::make_unique
						<	Cuboid
						>(	vColor
						,	vCoordinates
						,	vHeight
						,	vWidth
						,	vDepth
						)
					)
				;
			}
			break;

			case
				7
		:	{	vElements
				.	emplace_back
					(	::std::make_unique
						<	Pyramid
						>(	vColor
						,	vCoordinates
						,	vHeight
						,	vWidth
						,	vDepth
						)
					)
				;
			}
			break;

			case
				8
		:	{	vElements
				.	emplace_back
					(	::std::make_unique
						<	Sphere
						>(	vColor
						,	vCoordinates
						,	vHeight
						)
					)
				;
			}
			break;

			case
				9
		:	{	vElements
				.	emplace_back
					(	::std::make_unique
						<	Cylinder
						>(	vColor
						,	vCoordinates
						,	vHeight
						,	vDepth
						)
					)
				;
			}
			break;

			case
				10
		:	{	vElements
				.	emplace_back
					(	::std::make_unique
						<	Cone
						>(	vColor
						,	vCoordinates
						,	vHeight
						,	vDepth
						)
					)
				;
			}
			break;

			case
				11
		:	{	vElements
				.	emplace_back
					(	::std::make_unique
						<	Ellipsoid
						>(	vColor
						,	vCoordinates
						,	vHeight
						,	vWidth
						,	vDepth
						)
					)
				;
			}
			break;

			case
				12
		:	{	vElements
				.	emplace_back
					(	::std::make_unique
						<	Head
						>(	vColor
						,	vCoordinates
						,	vHeight
						,	Sphere
							{	RGBAColor
								{	vEyeRed
								,	vEyeGreen
								,	vEyeBlue
								,	vAlpha
								}
							,	Point
								{	vLeftEyeLateral
								,	vEyeLongitudinal
								,	vEyeVertical
								}
							,	vEyeHeight
							}
						,	Sphere
							{	RGBAColor
								{	vEyeRed
								,	vEyeGreen
								,	vEyeBlue
								,	vAlpha
								}
							,	Point
								{	vRightEyeLateral
								,	vEyeLongitudinal
								,	vEyeVertical
								}
							,	vEyeHeight
							}
						)
					)
				;
			}
			break;

			default
		:	::std::unreachable
			();
		}
	}

	return
		TransformReduce
		(	vElements
			.	begin
				()
		,	vElements
			.	end
				()
		,	[]	(	Body3D const
					&	i_rBody3D
				)
			->	float
			{	return
					i_rBody3D
					->	ComputeVolume
						()
				;
			}
		)
	;
}

auto
(	main
)	(	int
	,	char const
		*	i_aArgValue
			[]
	)
->	int
{
	PseudoRandomSequence const
		vRandomSequence
	{	i_aArgValue
		[	1z
		]
	,	i_aArgValue
		[	2z
		]
	};

	float const
		vLoopSum
	=	::ComputeVolumeSum
		(	vRandomSequence
		)
	;

	return
		::VerifyLoopSum
		(	vLoopSum
		,	vRandomSequence
		)
	;
}
