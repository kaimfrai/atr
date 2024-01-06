import Evaluation.Dependency.DynamicArray;
import Evaluation.Dependency.PseudoRandomSequence;
import Evaluation.Dependency.VerifyLoopSum;

import Evaluation.Archetype.ComputeVolume;
import Evaluation.Archetype.Circle;
import Evaluation.Archetype.Ellipse;
import Evaluation.Archetype.Rectangle;
import Evaluation.Archetype.Square;
import Evaluation.Archetype.Triangle;
import Evaluation.Archetype.Cube;
import Evaluation.Archetype.Cuboid;
import Evaluation.Archetype.Pyramid;
import Evaluation.Archetype.Sphere;
import Evaluation.Archetype.Cylinder;
import Evaluation.Archetype.Cone;
import Evaluation.Archetype.Ellipsoid;
import Evaluation.Archetype.Head;

import ATR.Literals;
import ATR.Erase;
import ATR.Virtual.Element;
import ATR.Virtual.Entry;

import Meta.ID;

import Std;

using ::ATR::Virtual::Element;
using ::ATR::Virtual::Entry;
using ::Meta::ID;

using namespace ATR::Literals;

namespace
	Bodies3D
{
	using
		Body3D
	=	Element
		<	16uz * sizeof(float)
		,	alignof(float)
		,	Entry
			<	ID<"ComputeVolume">
			,	auto
					(	::ATR::CErasure
					)
					noexcept
				->	float
			>
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
				=	vElements
					.	emplace_back
						(	"Circle"_id
						)
					.	As<"Circle">
						()
				;
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
			}
			break;

			case
				1
		:	{	auto
				&	rEllipse
				=	vElements
					.	emplace_back
						(	"Ellipse"_id
						)
					.	As<"Ellipse">
						()
				;
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
			}
			break;

			case
				2
		:	{	auto
				&	rRectangle
				=	vElements
					.	emplace_back
						(	"Rectangle"_id
						)
					.	As<"Rectangle">
						()
				;
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
			}
			break;

			case
				3
		:	{	auto
				&	rSquare
				=	vElements
					.	emplace_back
						(	"Square"_id
						)
					.	As<"Square">
						()
				;
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
			}
			break;

			case
				4
		:	{	auto
				&	rTriangle
				=	vElements
					.	emplace_back
						(	"Triangle"_id
						)
					.	As<"Triangle">
						()
				;
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
			}
			break;

			case
				5
		:	{	auto
				&	rCube
				=	vElements
					.	emplace_back
						(	"Cube"_id
						)
					.	As<"Cube">
						()
				;
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
			}
			break;

			case
				6
		:	{	auto
				&	rCuboid
				=	vElements
					.	emplace_back
						(	"Cuboid"_id
						)
					.	As<"Cuboid">
						()
				;
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
			}
			break;

			case
				7
		:	{	auto
				&	rPyramid
				=	vElements
					.	emplace_back
						(	"Pyramid"_id
						)
					.	As<"Pyramid">
						()
				;
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
			}
			break;

			case
				8
		:	{	auto
				&	rSphere
				=	vElements
					.	emplace_back
						(	"Sphere"_id
						)
					.	As<"Sphere">
						()
				;
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
			}
			break;

			case
				9
		:	{	auto
				&	rCylinder
				=	vElements
					.	emplace_back
						(	"Cylinder"_id
						)
					.	As<"Cylinder">
						()
				;
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
			}
			break;

			case
				10
		:	{	auto
				&	rCone
				=	vElements
					.	emplace_back
						(	"Cone"_id
						)
					.	As<"Cone">
						()
				;
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
			}
			break;

			case
				11
		:	{	auto
				&	rEllipsoid
				=	vElements
					.	emplace_back
						(	"Ellipsoid"_id
						)
					.	As<"Ellipsoid">
						()
				;
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
			}
			break;

			case
				12
		:	{	auto
				&	rHead
				=	vElements
					.	emplace_back
						(	"Head"_id
						)
					.	As<"Head">
						()
				;
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
			}
			break;
		}
	}

	return
		::std::transform_reduce
		(	::std::execution::unseq
		,	vElements
			.	begin
				()
		,	vElements
			.	end
				()
		,	0.0f
		,	::std::plus<float>
			{}
		,	[]	(	Body3D const
					&	i_rBody3D
				)
			->	float
			{	return
					i_rBody3D
					(	"ComputeVolume"_id
					)
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
