// Required to be a header unit for use of macro
import <boost.hpp>;

import Evaluation.Dependency.DynamicArray;
import Evaluation.Dependency.PseudoRandomSequence;
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

import Std;

namespace
	Bodies3D
{
	struct Circle : Shape3D<::Shapes2D::Circle>{};
	struct Ellipse : Shape3D<::Shapes2D::Ellipse>{};
	struct Rectangle : Shape3D<::Shapes2D::Rectangle>{};
	struct Square : Shape3D<::Shapes2D::Square>{};
	struct Triangle : Shape3D<::Shapes2D::Triangle>{};

	using ::Bodies3D::Cube;
	using ::Bodies3D::Cuboid;
	using ::Bodies3D::Pyramid;
	using ::Bodies3D::Sphere;
	using ::Bodies3D::Cylinder;
	using ::Bodies3D::Cone;
	using ::Bodies3D::Ellipsoid;
	using ::Bodies3D::Head;

	BOOST_TYPE_ERASURE_MEMBER(ComputeVolume, )

	using
		Body3D
	=	boost::type_erasure::any
		<	boost::mpl::vector
			<	has_ComputeVolume
				<	auto
						()	const
					->	float
				>
			,	boost::type_erasure::constructible
				<	boost::type_erasure::_self
					(	boost::type_erasure::_self
						&&
					)
				>
			,	boost::type_erasure::destructible<>
			>
		>
	;

	[[nodiscard]]
	auto constexpr inline
	(	ComputeVolume
	)	(	Body3D const
			&	i_rBody3D
		)
		noexcept
	->	float
	{	return
			i_rBody3D
			.	ComputeVolume
				()
		;
	}
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
		:	{	Circle
					vCircle
				;
				vCircle
				.	Shape2D
				.	Color
				.	Red
				=	vRed
				;
				vCircle
				.	Shape2D
				.	Color
				.	Green
				=	vGreen
				;
				vCircle
				.	Shape2D
				.	Color
				.	Blue
				=	vBlue
				;
				vCircle
				.	Shape2D
				.	Color
				.	Alpha
				=	vAlpha
				;
				vCircle
				.	Shape2D
				.	Coordinates
				.	Lateral
				=	vLateral
				;
				vCircle
				.	Shape2D
				.	Coordinates
				.	Longitudinal
				=	vLongitudinal
				;
				vCircle
				.	Shape2D
				.	Coordinates
				.	Vertical
				=	vVertical
				;
				vCircle
				.	Shape2D
				.	Height
				=	vHeight
				;
				vElements
				.	emplace_back
					(	vCircle
					)
				;
			}
			break;

			case
				1
		:	{	Ellipse
					vEllipse
				;
				vEllipse
				.	Shape2D
				.	Color
				.	Red
				=	vRed
				;
				vEllipse
				.	Shape2D
				.	Color
				.	Green
				=	vGreen
				;
				vEllipse
				.	Shape2D
				.	Color
				.	Blue
				=	vBlue
				;
				vEllipse
				.	Shape2D
				.	Color
				.	Alpha
				=	vAlpha
				;
				vEllipse
				.	Shape2D
				.	Coordinates
				.	Lateral
				=	vLateral
				;
				vEllipse
				.	Shape2D
				.	Coordinates
				.	Longitudinal
				=	vLongitudinal
				;
				vEllipse
				.	Shape2D
				.	Coordinates
				.	Vertical
				=	vVertical
				;
				vEllipse
				.	Shape2D
				.	Height
				=	vHeight
				;
				vEllipse
				.	Shape2D
				.	Width
				=	vWidth
				;
				vElements
				.	emplace_back
					(	vEllipse
					)
				;
			}
			break;

			case
				2
		:	{	Rectangle
					vRectangle
				;
				vRectangle
				.	Shape2D
				.	Color
				.	Red
				=	vRed
				;
				vRectangle
				.	Shape2D
				.	Color
				.	Green
				=	vGreen
				;
				vRectangle
				.	Shape2D
				.	Color
				.	Blue
				=	vBlue
				;
				vRectangle
				.	Shape2D
				.	Color
				.	Alpha
				=	vAlpha
				;
				vRectangle
				.	Shape2D
				.	Coordinates
				.	Lateral
				=	vLateral
				;
				vRectangle
				.	Shape2D
				.	Coordinates
				.	Longitudinal
				=	vLongitudinal
				;
				vRectangle
				.	Shape2D
				.	Coordinates
				.	Vertical
				=	vVertical
				;
				vRectangle
				.	Shape2D
				.	Height
				=	vHeight
				;
				vRectangle
				.	Shape2D
				.	Width
				=	vWidth
				;
				vElements
				.	emplace_back
					(	vRectangle
					)
				;
			}
			break;

			case
				3
		:	{	Square
					vSquare
				;
				vSquare
				.	Shape2D
				.	Color
				.	Red
				=	vRed
				;
				vSquare
				.	Shape2D
				.	Color
				.	Green
				=	vGreen
				;
				vSquare
				.	Shape2D
				.	Color
				.	Blue
				=	vBlue
				;
				vSquare
				.	Shape2D
				.	Color
				.	Alpha
				=	vAlpha
				;
				vSquare
				.	Shape2D
				.	Coordinates
				.	Lateral
				=	vLateral
				;
				vSquare
				.	Shape2D
				.	Coordinates
				.	Longitudinal
				=	vLongitudinal
				;
				vSquare
				.	Shape2D
				.	Coordinates
				.	Vertical
				=	vVertical
				;
				vSquare
				.	Shape2D
				.	Height
				=	vHeight
				;
				vElements
				.	emplace_back
					(	vSquare
					)
				;
			}
			break;

			case
				4
		:	{	Triangle
					vTriangle
				;
				vTriangle
				.	Shape2D
				.	Color
				.	Red
				=	vRed
				;
				vTriangle
				.	Shape2D
				.	Color
				.	Green
				=	vGreen
				;
				vTriangle
				.	Shape2D
				.	Color
				.	Blue
				=	vBlue
				;
				vTriangle
				.	Shape2D
				.	Color
				.	Alpha
				=	vAlpha
				;
				vTriangle
				.	Shape2D
				.	Coordinates
				.	Lateral
				=	vLateral
				;
				vTriangle
				.	Shape2D
				.	Coordinates
				.	Longitudinal
				=	vLongitudinal
				;
				vTriangle
				.	Shape2D
				.	Coordinates
				.	Vertical
				=	vVertical
				;
				vTriangle
				.	Shape2D
				.	Height
				=	vHeight
				;
				vTriangle
				.	Shape2D
				.	Width
				=	vWidth
				;
				vElements
				.	emplace_back
					(	vTriangle
					)
				;
			}
			break;

			case
				5
		:	{	Cube
					vCube
				;
				vCube
				.	Shape2D
				.	Color
				.	Red
				=	vRed
				;
				vCube
				.	Shape2D
				.	Color
				.	Green
				=	vGreen
				;
				vCube
				.	Shape2D
				.	Color
				.	Blue
				=	vBlue
				;
				vCube
				.	Shape2D
				.	Color
				.	Alpha
				=	vAlpha
				;
				vCube
				.	Shape2D
				.	Coordinates
				.	Lateral
				=	vLateral
				;
				vCube
				.	Shape2D
				.	Coordinates
				.	Longitudinal
				=	vLongitudinal
				;
				vCube
				.	Shape2D
				.	Coordinates
				.	Vertical
				=	vVertical
				;
				vCube
				.	Shape2D
				.	Height
				=	vHeight
				;
				vElements
				.	emplace_back
						(	vCube
						)
				;
			}
			break;

			case
				6
		:	{	Cuboid
					vCuboid
				;
				vCuboid
				.	Shape2D
				.	Color
				.	Red
				=	vRed
				;
				vCuboid
				.	Shape2D
				.	Color
				.	Green
				=	vGreen
				;
				vCuboid
				.	Shape2D
				.	Color
				.	Blue
				=	vBlue
				;
				vCuboid
				.	Shape2D
				.	Color
				.	Alpha
				=	vAlpha
				;
				vCuboid
				.	Shape2D
				.	Coordinates
				.	Lateral
				=	vLateral
				;
				vCuboid
				.	Shape2D
				.	Coordinates
				.	Longitudinal
				=	vLongitudinal
				;
				vCuboid
				.	Shape2D
				.	Coordinates
				.	Vertical
				=	vVertical
				;
				vCuboid
				.	Shape2D
				.	Height
				=	vHeight
				;
				vCuboid
				.	Shape2D
				.	Width
				=	vWidth
				;
				vCuboid
				.	Depth
				=	vDepth
				;
				vElements
				.	emplace_back
					(	vCuboid
					)
				;
			}
			break;

			case
				7
		:	{	Pyramid
					vPyramid
				;
				vPyramid
				.	Shape2D
				.	Color
				.	Red
				=	vRed
				;
				vPyramid
				.	Shape2D
				.	Color
				.	Green
				=	vGreen
				;
				vPyramid
				.	Shape2D
				.	Color
				.	Blue
				=	vBlue
				;
				vPyramid
				.	Shape2D
				.	Color
				.	Alpha
				=	vAlpha
				;
				vPyramid
				.	Shape2D
				.	Coordinates
				.	Lateral
				=	vLateral
				;
				vPyramid
				.	Shape2D
				.	Coordinates
				.	Longitudinal
				=	vLongitudinal
				;
				vPyramid
				.	Shape2D
				.	Coordinates
				.	Vertical
				=	vVertical
				;
				vPyramid
				.	Shape2D
				.	Height
				=	vHeight
				;
				vPyramid
				.	Shape2D
				.	Width
				=	vWidth
				;
				vPyramid
				.	Depth
				=	vDepth
				;
				vElements
				.	emplace_back
					(	vPyramid
					)
				;
			}
			break;

			case
				8
		:	{	Sphere
					vSphere
				;
				vSphere
				.	Shape2D
				.	Color
				.	Red
				=	vRed
				;
				vSphere
				.	Shape2D
				.	Color
				.	Green
				=	vGreen
				;
				vSphere
				.	Shape2D
				.	Color
				.	Blue
				=	vBlue
				;
				vSphere
				.	Shape2D
				.	Color
				.	Alpha
				=	vAlpha
				;
				vSphere
				.	Shape2D
				.	Coordinates
				.	Lateral
				=	vLateral
				;
				vSphere
				.	Shape2D
				.	Coordinates
				.	Longitudinal
				=	vLongitudinal
				;
				vSphere
				.	Shape2D
				.	Coordinates
				.	Vertical
				=	vVertical
				;
				vSphere
				.	Shape2D
				.	Height
				=	vHeight
				;
				vElements
				.	emplace_back
					(	vSphere
					)
				;
			}
			break;

			case
				9
		:	{	Cylinder
					vCylinder
				;
				vCylinder
				.	Shape2D
				.	Color
				.	Red
				=	vRed
				;
				vCylinder
				.	Shape2D
				.	Color
				.	Green
				=	vGreen
				;
				vCylinder
				.	Shape2D
				.	Color
				.	Blue
				=	vBlue
				;
				vCylinder
				.	Shape2D
				.	Color
				.	Alpha
				=	vAlpha
				;
				vCylinder
				.	Shape2D
				.	Coordinates
				.	Lateral
				=	vLateral
				;
				vCylinder
				.	Shape2D
				.	Coordinates
				.	Longitudinal
				=	vLongitudinal
				;
				vCylinder
				.	Shape2D
				.	Coordinates
				.	Vertical
				=	vVertical
				;
				vCylinder
				.	Shape2D
				.	Height
				=	vHeight
				;
				vCylinder
				.	Depth
				=	vDepth
				;
				vElements
				.	emplace_back
					(	vCylinder
					)
				;
			}
			break;

			case
				10
		:	{	Cone
					vCone
				;
				vCone
				.	Shape2D
				.	Color
				.	Red
				=	vRed
				;
				vCone
				.	Shape2D
				.	Color
				.	Green
				=	vGreen
				;
				vCone
				.	Shape2D
				.	Color
				.	Blue
				=	vBlue
				;
				vCone
				.	Shape2D
				.	Color
				.	Alpha
				=	vAlpha
				;
				vCone
				.	Shape2D
				.	Coordinates
				.	Lateral
				=	vLateral
				;
				vCone
				.	Shape2D
				.	Coordinates
				.	Longitudinal
				=	vLongitudinal
				;
				vCone
				.	Shape2D
				.	Coordinates
				.	Vertical
				=	vVertical
				;
				vCone
				.	Shape2D
				.	Height
				=	vHeight
				;
				vCone
				.	Depth
				=	vDepth
				;
				vElements
				.	emplace_back
					(	vCone
					)
				;
			}
			break;

			case
				11
		:	{	Ellipsoid
					vEllipsoid
				;
				vEllipsoid
				.	Shape2D
				.	Color
				.	Red
				=	vRed
				;
				vEllipsoid
				.	Shape2D
				.	Color
				.	Green
				=	vGreen
				;
				vEllipsoid
				.	Shape2D
				.	Color
				.	Blue
				=	vBlue
				;
				vEllipsoid
				.	Shape2D
				.	Color
				.	Alpha
				=	vAlpha
				;
				vEllipsoid
				.	Shape2D
				.	Coordinates
				.	Lateral
				=	vLateral
				;
				vEllipsoid
				.	Shape2D
				.	Coordinates
				.	Longitudinal
				=	vLongitudinal
				;
				vEllipsoid
				.	Shape2D
				.	Coordinates
				.	Vertical
				=	vVertical
				;
				vEllipsoid
				.	Shape2D
				.	Height
				=	vHeight
				;
				vEllipsoid
				.	Shape2D
				.	Width
				=	vWidth
				;
				vEllipsoid
				.	Depth
				=	vDepth
				;
				vElements
				.	emplace_back
					(	vEllipsoid
					)
				;
			}
			break;

			case
				12
		:	{	Head
					vHead
				;
				vHead
				.	Shape2D
				.	Color
				.	Red
				=	vRed
				;
				vHead
				.	Shape2D
				.	Color
				.	Green
				=	vGreen
				;
				vHead
				.	Shape2D
				.	Color
				.	Blue
				=	vBlue
				;
				vHead
				.	Shape2D
				.	Color
				.	Alpha
				=	vAlpha
				;
				vHead
				.	Shape2D
				.	Coordinates
				.	Lateral
				=	vLateral
				;
				vHead
				.	Shape2D
				.	Coordinates
				.	Longitudinal
				=	vLongitudinal
				;
				vHead
				.	Shape2D
				.	Coordinates
				.	Vertical
				=	vVertical
				;
				vHead
				.	Shape2D
				.	Height
				=	vHeight
				;

				vHead
				.	LeftEye
				.	Shape2D
				.	Color
				.	Red
				=	vEyeRed
				;
				vHead
				.	LeftEye
				.	Shape2D
				.	Color
				.	Green
				=	vEyeGreen
				;
				vHead
				.	LeftEye
				.	Shape2D
				.	Color
				.	Blue
				=	vEyeBlue
				;
				vHead
				.	LeftEye
				.	Shape2D
				.	Color
				.	Alpha
				=	vAlpha
				;
				vHead
				.	LeftEye
				.	Shape2D
				.	Coordinates
				.	Lateral
				=	vLeftEyeLateral
				;
				vHead
				.	LeftEye
				.	Shape2D
				.	Coordinates
				.	Longitudinal
				=	vEyeLongitudinal
				;
				vHead
				.	LeftEye
				.	Shape2D
				.	Coordinates
				.	Vertical
				=	vEyeVertical
				;
				vHead
				.	LeftEye
				.	Shape2D
				.	Height
				=	vEyeHeight
				;

				vHead
				.	RightEye
				.	Shape2D
				.	Color
				.	Red
				=	vEyeRed
				;
				vHead
				.	RightEye
				.	Shape2D
				.	Color
				.	Green
				=	vEyeGreen
				;
				vHead
				.	RightEye
				.	Shape2D
				.	Color
				.	Blue
				=	vEyeBlue
				;
				vHead
				.	RightEye
				.	Shape2D
				.	Color
				.	Alpha
				=	vAlpha
				;
				vHead
				.	RightEye
				.	Shape2D
				.	Coordinates
				.	Lateral
				=	vRightEyeLateral
				;
				vHead
				.	RightEye
				.	Shape2D
				.	Coordinates
				.	Longitudinal
				=	vEyeLongitudinal
				;
				vHead
				.	RightEye
				.	Shape2D
				.	Coordinates
				.	Vertical
				=	vEyeVertical
				;
				vHead
				.	RightEye
				.	Shape2D
				.	Height
				=	vEyeHeight
				;
				vElements
				.	emplace_back
					(	vHead
					)
				;
			}
			break;
		}
	}

	float
		vLoopSum
	{};

	for	(	auto const
			&	rBody
			:	vElements
		)
	{
		vLoopSum
		+=	ComputeVolume
			(	rBody
			)
		;
	}

	return
		vLoopSum
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
