import Evaluation.Dependency.CommonData;
import Evaluation.Dependency.DynamicArray;
import Evaluation.Dependency.Polymorphic;
import Evaluation.Dependency.PseudoRandomSequence;
import Evaluation.Dependency.TransformReduce;
import Evaluation.Dependency.VerifyLoopSum;

import Evaluation.CRTP.Circle;
import Evaluation.CRTP.Ellipse;
import Evaluation.CRTP.Rectangle;
import Evaluation.CRTP.Square;
import Evaluation.CRTP.Triangle;
import Evaluation.CRTP.Shape3D;
import Evaluation.CRTP.Cube;
import Evaluation.CRTP.Cuboid;
import Evaluation.CRTP.Pyramid;
import Evaluation.CRTP.Sphere;
import Evaluation.CRTP.Cylinder;
import Evaluation.CRTP.Cone;
import Evaluation.CRTP.Ellipsoid;
import Evaluation.CRTP.Head;

import std;

namespace
	Bodies3D
{
	struct
		ComputeVolumeTag
	{};

	[[nodiscard]]
	auto constexpr inline
	(	poly_extend
	)	(	ComputeVolumeTag
		,	auto const
			&	i_rBody
		)
		noexcept
	->	float
	{	return
		i_rBody
		.	ComputeVolume
			()
		;
	}


	using
		Body3D
	=	polymorphic::object
		<	auto
				(	ComputeVolumeTag
				)	const
			->	float
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
					(	Circle
						{	vColor
						,	vCoordinates
						,	vHeight
						}
					)
				;
			}
			break;

			case
				1
		:	{	vElements
				.	emplace_back
					(	Ellipse
						{	vColor
						,	vCoordinates
						,	vHeight
						,	vWidth
						}
					)
				;
			}
			break;

			case
				2
		:	{	vElements
				.	emplace_back
					(	Rectangle
						{	vColor
						,	vCoordinates
						,	vHeight
						,	vWidth
						}
					)
				;
			}
			break;

			case
				3
		:	{	vElements
				.	emplace_back
					(	Square
						{	vColor
						,	vCoordinates
						,	vHeight
						}
					)
				;
			}
			break;

			case
				4
		:	{	vElements
				.	emplace_back
					(	Triangle
						{	vColor
						,	vCoordinates
						,	vHeight
						,	vWidth
						}
					)
				;
			}
			break;

			case
				5
		:	{	vElements
				.	emplace_back
					(	Cube
						{	vColor
						,	vCoordinates
						,	vHeight
						}
					)
				;
			}
			break;

			case
				6
		:	{	vElements
				.	emplace_back
					(	Cuboid
						{	vColor
						,	vCoordinates
						,	vHeight
						,	vWidth
						,	vDepth
						}
					)
				;
			}
			break;

			case
				7
		:	{	vElements
				.	emplace_back
					(	Pyramid
						{	vColor
						,	vCoordinates
						,	vHeight
						,	vWidth
						,	vDepth
						}
					)
				;
			}
			break;

			case
				8
		:	{	vElements
				.	emplace_back
					(	Sphere
						{	vColor
						,	vCoordinates
						,	vHeight
						}
					)
				;
			}
			break;

			case
				9
		:	{	vElements
				.	emplace_back
					(	Cylinder
						{	vColor
						,	vCoordinates
						,	vHeight
						,	vDepth
						}
					)
				;
			}
			break;

			case
				10
		:	{	vElements
				.	emplace_back
					(	Cone
						{	vColor
						,	vCoordinates
						,	vHeight
						,	vDepth
						}
					)
				;
			}
			break;

			case
				11
		:	{	vElements
				.	emplace_back
					(	Ellipsoid
						{	vColor
						,	vCoordinates
						,	vHeight
						,	vWidth
						,	vDepth
						}
					)
				;
			}
			break;

			case
				12
		:	{	vElements
				.	emplace_back
					(	Head
						{	vColor
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
						}
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
					.	call
						<	ComputeVolumeTag
						>()
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
