import Evaluation.Dependency.PseudoRandomSequence;
import Evaluation.Dependency.TransformReduce;
import Evaluation.Dependency.VerifyLoopSum;

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

	VolumeComputer
		vElements
	{	static_cast<::std::uint32_t>
		(	i_vRandomSequence
			.	size
				()
		)
	};

	for	(	auto
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
		switch
			(	vType
			%	13
			)
		{	case
				0
		:	{	auto
				&	rCircle
					[[maybe_unused]]
				=	vElements
					.	emplace_back
						(	"Circle"_id
						)
				;

#ifndef ZERO_INITIALIZE_MEMBERS
				rCircle
				[	"ColorRed"_id
				]=	vRed
				;
				rCircle
				[	"ColorGreen"_id
				]=	vGreen
				;
				rCircle
				[	"ColorBlue"_id
				]=	vBlue
				;
				rCircle
				[	"ColorAlpha"_id
				]=	vAlpha
				;
				rCircle
				[	"PointLateral"_id
				]=	vLateral
				;
				rCircle
				[	"PointLongitudinal"_id
				]=	vLongitudinal
				;
				rCircle
				[	"PointVertical"_id
				]=	vVertical
				;
				rCircle
				[	"Height"_id
				]=	vHeight
				;
#endif
			}
			break;

			case
				1
		:	{	auto
				&	rEllipse
					[[maybe_unused]]
				=	vElements
					.	emplace_back
						(	"Ellipse"_id
						)
				;

#ifndef ZERO_INITIALIZE_MEMBERS
				rEllipse
				[	"ColorRed"_id
				]=	vRed
				;
				rEllipse
				[	"ColorGreen"_id
				]=	vGreen
				;
				rEllipse
				[	"ColorBlue"_id
				]=	vBlue
				;
				rEllipse
				[	"ColorAlpha"_id
				]=	vAlpha
				;
				rEllipse
				[	"PointLateral"_id
				]=	vLateral
				;
				rEllipse
				[	"PointLongitudinal"_id
				]=	vLongitudinal
				;
				rEllipse
				[	"PointVertical"_id
				]=	vVertical
				;
				rEllipse
				[	"Height"_id
				]=	vHeight
				;
				rEllipse
				[	"Width"_id
				]=	vWidth
				;
#endif
			}
			break;

			case
				2
		:	{	auto
				&	rRectangle
					[[maybe_unused]]
				=	vElements
					.	emplace_back
						(	"Rectangle"_id
						)
				;

#ifndef ZERO_INITIALIZE_MEMBERS
				rRectangle
				[	"ColorRed"_id
				]=	vRed
				;
				rRectangle
				[	"ColorGreen"_id
				]=	vGreen
				;
				rRectangle
				[	"ColorBlue"_id
				]=	vBlue
				;
				rRectangle
				[	"ColorAlpha"_id
				]=	vAlpha
				;
				rRectangle
				[	"PointLateral"_id
				]=	vLateral
				;
				rRectangle
				[	"PointLongitudinal"_id
				]=	vLongitudinal
				;
				rRectangle
				[	"PointVertical"_id
				]=	vVertical
				;
				rRectangle
				[	"Height"_id
				]=	vHeight
				;
				rRectangle
				[	"Width"_id
				]=	vWidth
				;
#endif
			}
			break;

			case
				3
		:	{	auto
				&	rSquare
					[[maybe_unused]]
				=	vElements
					.	emplace_back
						(	"Square"_id
						)
				;

#ifndef ZERO_INITIALIZE_MEMBERS
				rSquare
				[	"ColorRed"_id
				]=	vRed
				;
				rSquare
				[	"ColorGreen"_id
				]=	vGreen
				;
				rSquare
				[	"ColorBlue"_id
				]=	vBlue
				;
				rSquare
				[	"ColorAlpha"_id
				]=	vAlpha
				;
				rSquare
				[	"PointLateral"_id
				]=	vLateral
				;
				rSquare
				[	"PointLongitudinal"_id
				]=	vLongitudinal
				;
				rSquare
				[	"PointVertical"_id
				]=	vVertical
				;
				rSquare
				[	"Height"_id
				]=	vHeight
				;
#endif
			}
			break;

			case
				4
		:	{	auto
				&	rTriangle
					[[maybe_unused]]
				=	vElements
					.	emplace_back
						(	"Triangle"_id
						)
				;

#ifndef ZERO_INITIALIZE_MEMBERS
				rTriangle
				[	"ColorRed"_id
				]=	vRed
				;
				rTriangle
				[	"ColorGreen"_id
				]=	vGreen
				;
				rTriangle
				[	"ColorBlue"_id
				]=	vBlue
				;
				rTriangle
				[	"ColorAlpha"_id
				]=	vAlpha
				;
				rTriangle
				[	"PointLateral"_id
				]=	vLateral
				;
				rTriangle
				[	"PointLongitudinal"_id
				]=	vLongitudinal
				;
				rTriangle
				[	"PointVertical"_id
				]=	vVertical
				;
				rTriangle
				[	"Height"_id
				]=	vHeight
				;
				rTriangle
				[	"Width"_id
				]=	vWidth
				;
#endif
			}
			break;

			case
				5
		:	{	auto
				&	rCube
					[[maybe_unused]]
				=	vElements
					.	emplace_back
						(	"Cube"_id
						)
				;

#ifndef ZERO_INITIALIZE_MEMBERS
				rCube
				[	"ColorRed"_id
				]=	vRed
				;
				rCube
				[	"ColorGreen"_id
				]=	vGreen
				;
				rCube
				[	"ColorBlue"_id
				]=	vBlue
				;
				rCube
				[	"ColorAlpha"_id
				]=	vAlpha
				;
				rCube
				[	"PointLateral"_id
				]=	vLateral
				;
				rCube
				[	"PointLongitudinal"_id
				]=	vLongitudinal
				;
				rCube
				[	"PointVertical"_id
				]=	vVertical
				;
				rCube
				[	"Height"_id
				]=	vHeight
				;
#endif
			}
			break;

			case
				6
		:	{	auto
				&	rCuboid
					[[maybe_unused]]
				=	vElements
					.	emplace_back
						(	"Cuboid"_id
						)
				;

#ifndef ZERO_INITIALIZE_MEMBERS
				rCuboid
				[	"ColorRed"_id
				]=	vRed
				;
				rCuboid
				[	"ColorGreen"_id
				]=	vGreen
				;
				rCuboid
				[	"ColorBlue"_id
				]=	vBlue
				;
				rCuboid
				[	"ColorAlpha"_id
				]=	vAlpha
				;
				rCuboid
				[	"PointLateral"_id
				]=	vLateral
				;
				rCuboid
				[	"PointLongitudinal"_id
				]=	vLongitudinal
				;
				rCuboid
				[	"PointVertical"_id
				]=	vVertical
				;
				rCuboid
				[	"Height"_id
				]=	vHeight
				;
				rCuboid
				[	"Width"_id
				]=	vWidth
				;
				rCuboid
				[	"Depth"_id
				]=	vDepth
				;
#endif
			}
			break;

			case
				7
		:	{	auto
				&	rPyramid
					[[maybe_unused]]
				=	vElements
					.	emplace_back
						(	"Pyramid"_id
						)
				;

#ifndef ZERO_INITIALIZE_MEMBERS
				rPyramid
				[	"ColorRed"_id
				]=	vRed
				;
				rPyramid
				[	"ColorGreen"_id
				]=	vGreen
				;
				rPyramid
				[	"ColorBlue"_id
				]=	vBlue
				;
				rPyramid
				[	"ColorAlpha"_id
				]=	vAlpha
				;
				rPyramid
				[	"PointLateral"_id
				]=	vLateral
				;
				rPyramid
				[	"PointLongitudinal"_id
				]=	vLongitudinal
				;
				rPyramid
				[	"PointVertical"_id
				]=	vVertical
				;
				rPyramid
				[	"Height"_id
				]=	vHeight
				;
				rPyramid
				[	"Width"_id
				]=	vWidth
				;
				rPyramid
				[	"Depth"_id
				]=	vDepth
				;
#endif
			}
			break;

			case
				8
		:	{	auto
				&	rSphere
					[[maybe_unused]]
				=	vElements
					.	emplace_back
						(	"Sphere"_id
						)
				;

#ifndef ZERO_INITIALIZE_MEMBERS
				rSphere
				[	"ColorRed"_id
				]=	vRed
				;
				rSphere
				[	"ColorGreen"_id
				]=	vGreen
				;
				rSphere
				[	"ColorBlue"_id
				]=	vBlue
				;
				rSphere
				[	"ColorAlpha"_id
				]=	vAlpha
				;
				rSphere
				[	"PointLateral"_id
				]=	vLateral
				;
				rSphere
				[	"PointLongitudinal"_id
				]=	vLongitudinal
				;
				rSphere
				[	"PointVertical"_id
				]=	vVertical
				;
				rSphere
				[	"Height"_id
				]=	vHeight
				;
#endif
			}
			break;

			case
				9
		:	{	auto
				&	rCylinder
					[[maybe_unused]]
				=	vElements
					.	emplace_back
						(	"Cylinder"_id
						)
				;

#ifndef ZERO_INITIALIZE_MEMBERS
				rCylinder
				[	"ColorRed"_id
				]=	vRed
				;
				rCylinder
				[	"ColorGreen"_id
				]=	vGreen
				;
				rCylinder
				[	"ColorBlue"_id
				]=	vBlue
				;
				rCylinder
				[	"ColorAlpha"_id
				]=	vAlpha
				;
				rCylinder
				[	"PointLateral"_id
				]=	vLateral
				;
				rCylinder
				[	"PointLongitudinal"_id
				]=	vLongitudinal
				;
				rCylinder
				[	"PointVertical"_id
				]=	vVertical
				;
				rCylinder
				[	"Height"_id
				]=	vHeight
				;
				rCylinder
				[	"Depth"_id
				]=	vDepth
				;
#endif
			}
			break;

			case
				10
		:	{	auto
				&	rCone
					[[maybe_unused]]
				=	vElements
					.	emplace_back
						(	"Cone"_id
						)
				;

#ifndef ZERO_INITIALIZE_MEMBERS
				rCone
				[	"ColorRed"_id
				]=	vRed
				;
				rCone
				[	"ColorGreen"_id
				]=	vGreen
				;
				rCone
				[	"ColorBlue"_id
				]=	vBlue
				;
				rCone
				[	"ColorAlpha"_id
				]=	vAlpha
				;
				rCone
				[	"PointLateral"_id
				]=	vLateral
				;
				rCone
				[	"PointLongitudinal"_id
				]=	vLongitudinal
				;
				rCone
				[	"PointVertical"_id
				]=	vVertical
				;
				rCone
				[	"Height"_id
				]=	vHeight
				;
				rCone
				[	"Depth"_id
				]=	vDepth
				;
#endif
			}
			break;

			case
				11
		:	{	auto
				&	rEllipsoid
					[[maybe_unused]]
				=	vElements
					.	emplace_back
						(	"Ellipsoid"_id
						)
				;

#ifndef ZERO_INITIALIZE_MEMBERS
				rEllipsoid
				[	"ColorRed"_id
				]=	vRed
				;
				rEllipsoid
				[	"ColorGreen"_id
				]=	vGreen
				;
				rEllipsoid
				[	"ColorBlue"_id
				]=	vBlue
				;
				rEllipsoid
				[	"ColorAlpha"_id
				]=	vAlpha
				;
				rEllipsoid
				[	"PointLateral"_id
				]=	vLateral
				;
				rEllipsoid
				[	"PointLongitudinal"_id
				]=	vLongitudinal
				;
				rEllipsoid
				[	"PointVertical"_id
				]=	vVertical
				;
				rEllipsoid
				[	"Height"_id
				]=	vHeight
				;
				rEllipsoid
				[	"Width"_id
				]=	vWidth
				;
				rEllipsoid
				[	"Depth"_id
				]=	vDepth
				;
#endif
			}
			break;

			case
				12
		:	{	auto
				&	rHead
					[[maybe_unused]]
				=	vElements
					.	emplace_back
						(	"Head"_id
						)
				;

#ifndef ZERO_INITIALIZE_MEMBERS
				rHead
				[	"ColorRed"_id
				]=	vRed
				;
				rHead
				[	"ColorGreen"_id
				]=	vGreen
				;
				rHead
				[	"ColorBlue"_id
				]=	vBlue
				;
				rHead
				[	"ColorAlpha"_id
				]=	vAlpha
				;
				rHead
				[	"PointLateral"_id
				]=	vLateral
				;
				rHead
				[	"PointLongitudinal"_id
				]=	vLongitudinal
				;
				rHead
				[	"PointVertical"_id
				]=	vVertical
				;
				rHead
				[	"Height"_id
				]=	vHeight
				;

				rHead
				[	"LeftEyeColorRed"_id
				]=	vEyeRed
				;
				rHead
				[	"LeftEyeColorGreen"_id
				]=	vEyeGreen
				;
				rHead
				[	"LeftEyeColorBlue"_id
				]=	vEyeBlue
				;
				rHead
				[	"LeftEyePointLateral"_id
				]=	vLeftEyeLateral
				;
				rHead
				[	"LeftEyePointLongitudinal"_id
				]=	vEyeLongitudinal
				;
				rHead
				[	"LeftEyePointVertical"_id
				]=	vEyeVertical
				;
				rHead
				[	"LeftEyeHeight"_id
				]=	vEyeHeight
				;
				rHead
				[	"RightEyePointLateral"_id
				]=	vRightEyeLateral
				;
#endif
			}
			break;
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
		,	[]	(	auto const
						rBody
				)
			{	return
					rBody
					.	ComputeVolume
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
