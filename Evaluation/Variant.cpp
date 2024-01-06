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
	using Circle = Shape3D<::Shapes2D::Circle>;
	using Ellipse = Shape3D<::Shapes2D::Ellipse>;
	using Rectangle = Shape3D<::Shapes2D::Rectangle>;
	using Square = Shape3D<::Shapes2D::Square>;
	using Triangle = Shape3D<::Shapes2D::Triangle>;


	using ::Bodies3D::Cube;
	using ::Bodies3D::Cuboid;
	using ::Bodies3D::Pyramid;
	using ::Bodies3D::Sphere;
	using ::Bodies3D::Cylinder;
	using ::Bodies3D::Cone;
	using ::Bodies3D::Ellipsoid;
	using ::Bodies3D::Head;
}

namespace
	Bodies3D
{
	using
		Body3D
	=	::std::variant
		<	Circle
		,	Ellipse
		,	Rectangle
		,	Square
		,	Triangle
		,	Cube
		,	Cuboid
		,	Pyramid
		,	Sphere
		,	Cylinder
		,	Cone
		,	Ellipsoid
		,	Head
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
				=	get<Circle>
					(	vElements
					.	emplace_back
						(	::std::in_place_type
							<	Circle
							>
						)
					)
				;
				rCircle
				.	Shape2D
				.	Color
				.	Red
				=	vRed
				;
				rCircle
				.	Shape2D
				.	Color
				.	Green
				=	vGreen
				;
				rCircle
				.	Shape2D
				.	Color
				.	Blue
				=	vBlue
				;
				rCircle
				.	Shape2D
				.	Color
				.	Alpha
				=	vAlpha
				;
				rCircle
				.	Shape2D
				.	Coordinates
				.	Lateral
				=	vLateral
				;
				rCircle
				.	Shape2D
				.	Coordinates
				.	Longitudinal
				=	vLongitudinal
				;
				rCircle
				.	Shape2D
				.	Coordinates
				.	Vertical
				=	vVertical
				;
				rCircle
				.	Shape2D
				.	Height
				=	vHeight
				;
			}
			break;

			case
				1
		:	{	auto
				&	rEllipse
				=	get<Ellipse>
					(	vElements
						.	emplace_back
							(	::std::in_place_type
								<	Ellipse
								>
							)
					)
				;
				rEllipse
				.	Shape2D
				.	Color
				.	Red
				=	vRed
				;
				rEllipse
				.	Shape2D
				.	Color
				.	Green
				=	vGreen
				;
				rEllipse
				.	Shape2D
				.	Color
				.	Blue
				=	vBlue
				;
				rEllipse
				.	Shape2D
				.	Color
				.	Alpha
				=	vAlpha
				;
				rEllipse
				.	Shape2D
				.	Coordinates
				.	Lateral
				=	vLateral
				;
				rEllipse
				.	Shape2D
				.	Coordinates
				.	Longitudinal
				=	vLongitudinal
				;
				rEllipse
				.	Shape2D
				.	Coordinates
				.	Vertical
				=	vVertical
				;
				rEllipse
				.	Shape2D
				.	Height
				=	vHeight
				;
				rEllipse
				.	Shape2D
				.	Width
				=	vWidth
				;
			}
			break;

			case
				2
		:	{	auto
				&	rRectangle
				=	get<Rectangle>
					(	vElements
						.	emplace_back
							(	::std::in_place_type
								<	Rectangle
								>
							)
					)
				;
				rRectangle
				.	Shape2D
				.	Color
				.	Red
				=	vRed
				;
				rRectangle
				.	Shape2D
				.	Color
				.	Green
				=	vGreen
				;
				rRectangle
				.	Shape2D
				.	Color
				.	Blue
				=	vBlue
				;
				rRectangle
				.	Shape2D
				.	Color
				.	Alpha
				=	vAlpha
				;
				rRectangle
				.	Shape2D
				.	Coordinates
				.	Lateral
				=	vLateral
				;
				rRectangle
				.	Shape2D
				.	Coordinates
				.	Longitudinal
				=	vLongitudinal
				;
				rRectangle
				.	Shape2D
				.	Coordinates
				.	Vertical
				=	vVertical
				;
				rRectangle
				.	Shape2D
				.	Height
				=	vHeight
				;
				rRectangle
				.	Shape2D
				.	Width
				=	vWidth
				;
			}
			break;

			case
				3
		:	{	auto
				&	rSquare
				=	get<Square>
					(	vElements
						.	emplace_back
							(	::std::in_place_type
								<	Square
								>
							)
					)
				;
				rSquare
				.	Shape2D
				.	Color
				.	Red
				=	vRed
				;
				rSquare
				.	Shape2D
				.	Color
				.	Green
				=	vGreen
				;
				rSquare
				.	Shape2D
				.	Color
				.	Blue
				=	vBlue
				;
				rSquare
				.	Shape2D
				.	Color
				.	Alpha
				=	vAlpha
				;
				rSquare
				.	Shape2D
				.	Coordinates
				.	Lateral
				=	vLateral
				;
				rSquare
				.	Shape2D
				.	Coordinates
				.	Longitudinal
				=	vLongitudinal
				;
				rSquare
				.	Shape2D
				.	Coordinates
				.	Vertical
				=	vVertical
				;
				rSquare
				.	Shape2D
				.	Height
				=	vHeight
				;
			}
			break;

			case
				4
		:	{	auto
				&	rTriangle
				=	get<Triangle>
					(	vElements
						.	emplace_back
							(	::std::in_place_type
								<	Triangle
								>
							)
					)
				;
				rTriangle
				.	Shape2D
				.	Color
				.	Red
				=	vRed
				;
				rTriangle
				.	Shape2D
				.	Color
				.	Green
				=	vGreen
				;
				rTriangle
				.	Shape2D
				.	Color
				.	Blue
				=	vBlue
				;
				rTriangle
				.	Shape2D
				.	Color
				.	Alpha
				=	vAlpha
				;
				rTriangle
				.	Shape2D
				.	Coordinates
				.	Lateral
				=	vLateral
				;
				rTriangle
				.	Shape2D
				.	Coordinates
				.	Longitudinal
				=	vLongitudinal
				;
				rTriangle
				.	Shape2D
				.	Coordinates
				.	Vertical
				=	vVertical
				;
				rTriangle
				.	Shape2D
				.	Height
				=	vHeight
				;
				rTriangle
				.	Shape2D
				.	Width
				=	vWidth
				;
			}
			break;

			case
				5
		:	{	auto
				&	rCube
				=	get<Cube>
					(	vElements
						.	emplace_back
							(	::std::in_place_type
								<	Cube
								>
							)
					)
				;
				rCube
				.	Shape2D
				.	Color
				.	Red
				=	vRed
				;
				rCube
				.	Shape2D
				.	Color
				.	Green
				=	vGreen
				;
				rCube
				.	Shape2D
				.	Color
				.	Blue
				=	vBlue
				;
				rCube
				.	Shape2D
				.	Color
				.	Alpha
				=	vAlpha
				;
				rCube
				.	Shape2D
				.	Coordinates
				.	Lateral
				=	vLateral
				;
				rCube
				.	Shape2D
				.	Coordinates
				.	Longitudinal
				=	vLongitudinal
				;
				rCube
				.	Shape2D
				.	Coordinates
				.	Vertical
				=	vVertical
				;
				rCube
				.	Shape2D
				.	Height
				=	vHeight
				;
			}
			break;

			case
				6
		:	{	auto
				&	rCuboid
				=	get<Cuboid>
					(	vElements
						.	emplace_back
							(	::std::in_place_type
								<	Cuboid
								>
							)
					)
				;
				rCuboid
				.	Shape2D
				.	Color
				.	Red
				=	vRed
				;
				rCuboid
				.	Shape2D
				.	Color
				.	Green
				=	vGreen
				;
				rCuboid
				.	Shape2D
				.	Color
				.	Blue
				=	vBlue
				;
				rCuboid
				.	Shape2D
				.	Color
				.	Alpha
				=	vAlpha
				;
				rCuboid
				.	Shape2D
				.	Coordinates
				.	Lateral
				=	vLateral
				;
				rCuboid
				.	Shape2D
				.	Coordinates
				.	Longitudinal
				=	vLongitudinal
				;
				rCuboid
				.	Shape2D
				.	Coordinates
				.	Vertical
				=	vVertical
				;
				rCuboid
				.	Shape2D
				.	Height
				=	vHeight
				;
				rCuboid
				.	Shape2D
				.	Width
				=	vWidth
				;
				rCuboid
				.	Depth
				=	vDepth
				;
			}
			break;

			case
				7
		:	{	auto
				&	rPyramid
				=	get<Pyramid>
					(	vElements
						.	emplace_back
							(	::std::in_place_type
								<	Pyramid
								>
							)
					)
				;
				rPyramid
				.	Shape2D
				.	Color
				.	Red
				=	vRed
				;
				rPyramid
				.	Shape2D
				.	Color
				.	Green
				=	vGreen
				;
				rPyramid
				.	Shape2D
				.	Color
				.	Blue
				=	vBlue
				;
				rPyramid
				.	Shape2D
				.	Color
				.	Alpha
				=	vAlpha
				;
				rPyramid
				.	Shape2D
				.	Coordinates
				.	Lateral
				=	vLateral
				;
				rPyramid
				.	Shape2D
				.	Coordinates
				.	Longitudinal
				=	vLongitudinal
				;
				rPyramid
				.	Shape2D
				.	Coordinates
				.	Vertical
				=	vVertical
				;
				rPyramid
				.	Shape2D
				.	Height
				=	vHeight
				;
				rPyramid
				.	Shape2D
				.	Width
				=	vWidth
				;
				rPyramid
				.	Depth
				=	vDepth
				;
			}
			break;

			case
				8
		:	{	auto
				&	rSphere
				=	get<Sphere>
					(	vElements
						.	emplace_back
							(	::std::in_place_type
								<	Sphere
								>
							)
					)
				;
				rSphere
				.	Shape2D
				.	Color
				.	Red
				=	vRed
				;
				rSphere
				.	Shape2D
				.	Color
				.	Green
				=	vGreen
				;
				rSphere
				.	Shape2D
				.	Color
				.	Blue
				=	vBlue
				;
				rSphere
				.	Shape2D
				.	Color
				.	Alpha
				=	vAlpha
				;
				rSphere
				.	Shape2D
				.	Coordinates
				.	Lateral
				=	vLateral
				;
				rSphere
				.	Shape2D
				.	Coordinates
				.	Longitudinal
				=	vLongitudinal
				;
				rSphere
				.	Shape2D
				.	Coordinates
				.	Vertical
				=	vVertical
				;
				rSphere
				.	Shape2D
				.	Height
				=	vHeight
				;
			}
			break;

			case
				9
		:	{	auto
				&	rCylinder
				=	get<Cylinder>
					(	vElements
						.	emplace_back
							(	::std::in_place_type
								<	Cylinder
								>
							)
					)
				;
				rCylinder
				.	Shape2D
				.	Color
				.	Red
				=	vRed
				;
				rCylinder
				.	Shape2D
				.	Color
				.	Green
				=	vGreen
				;
				rCylinder
				.	Shape2D
				.	Color
				.	Blue
				=	vBlue
				;
				rCylinder
				.	Shape2D
				.	Color
				.	Alpha
				=	vAlpha
				;
				rCylinder
				.	Shape2D
				.	Coordinates
				.	Lateral
				=	vLateral
				;
				rCylinder
				.	Shape2D
				.	Coordinates
				.	Longitudinal
				=	vLongitudinal
				;
				rCylinder
				.	Shape2D
				.	Coordinates
				.	Vertical
				=	vVertical
				;
				rCylinder
				.	Shape2D
				.	Height
				=	vHeight
				;
				rCylinder
				.	Depth
				=	vDepth
				;
			}
			break;

			case
				10
		:	{	auto
				&	rCone
				=	get<Cone>
					(	vElements
						.	emplace_back
							(	::std::in_place_type
								<	Cone
								>
							)
					)
				;
				rCone
				.	Shape2D
				.	Color
				.	Red
				=	vRed
				;
				rCone
				.	Shape2D
				.	Color
				.	Green
				=	vGreen
				;
				rCone
				.	Shape2D
				.	Color
				.	Blue
				=	vBlue
				;
				rCone
				.	Shape2D
				.	Color
				.	Alpha
				=	vAlpha
				;
				rCone
				.	Shape2D
				.	Coordinates
				.	Lateral
				=	vLateral
				;
				rCone
				.	Shape2D
				.	Coordinates
				.	Longitudinal
				=	vLongitudinal
				;
				rCone
				.	Shape2D
				.	Coordinates
				.	Vertical
				=	vVertical
				;
				rCone
				.	Shape2D
				.	Height
				=	vHeight
				;
				rCone
				.	Depth
				=	vDepth
				;
			}
			break;

			case
				11
		:	{	auto
				&	rEllipsoid
				=	get<Ellipsoid>
					(	vElements
						.	emplace_back
							(	::std::in_place_type
								<	Ellipsoid
								>
							)
					)
				;
				rEllipsoid
				.	Shape2D
				.	Color
				.	Red
				=	vRed
				;
				rEllipsoid
				.	Shape2D
				.	Color
				.	Green
				=	vGreen
				;
				rEllipsoid
				.	Shape2D
				.	Color
				.	Blue
				=	vBlue
				;
				rEllipsoid
				.	Shape2D
				.	Color
				.	Alpha
				=	vAlpha
				;
				rEllipsoid
				.	Shape2D
				.	Coordinates
				.	Lateral
				=	vLateral
				;
				rEllipsoid
				.	Shape2D
				.	Coordinates
				.	Longitudinal
				=	vLongitudinal
				;
				rEllipsoid
				.	Shape2D
				.	Coordinates
				.	Vertical
				=	vVertical
				;
				rEllipsoid
				.	Shape2D
				.	Height
				=	vHeight
				;
				rEllipsoid
				.	Shape2D
				.	Width
				=	vWidth
				;
				rEllipsoid
				.	Depth
				=	vDepth
				;
			}
			break;

			case
				12
		:	{	auto
				&	rHead
				=	get<Head>
					(	vElements
						.	emplace_back
							(	::std::in_place_type
								<	Head
								>
							)
					)
				;
				rHead
				.	Shape2D
				.	Color
				.	Red
				=	vRed
				;
				rHead
				.	Shape2D
				.	Color
				.	Green
				=	vGreen
				;
				rHead
				.	Shape2D
				.	Color
				.	Blue
				=	vBlue
				;
				rHead
				.	Shape2D
				.	Color
				.	Alpha
				=	vAlpha
				;
				rHead
				.	Shape2D
				.	Coordinates
				.	Lateral
				=	vLateral
				;
				rHead
				.	Shape2D
				.	Coordinates
				.	Longitudinal
				=	vLongitudinal
				;
				rHead
				.	Shape2D
				.	Coordinates
				.	Vertical
				=	vVertical
				;
				rHead
				.	Shape2D
				.	Height
				=	vHeight
				;

				rHead
				.	LeftEye
				.	Shape2D
				.	Color
				.	Red
				=	vEyeRed
				;
				rHead
				.	LeftEye
				.	Shape2D
				.	Color
				.	Green
				=	vEyeGreen
				;
				rHead
				.	LeftEye
				.	Shape2D
				.	Color
				.	Blue
				=	vEyeBlue
				;
				rHead
				.	LeftEye
				.	Shape2D
				.	Color
				.	Alpha
				=	vAlpha
				;
				rHead
				.	LeftEye
				.	Shape2D
				.	Coordinates
				.	Lateral
				=	vLeftEyeLateral
				;
				rHead
				.	LeftEye
				.	Shape2D
				.	Coordinates
				.	Longitudinal
				=	vEyeLongitudinal
				;
				rHead
				.	LeftEye
				.	Shape2D
				.	Coordinates
				.	Vertical
				=	vEyeVertical
				;
				rHead
				.	LeftEye
				.	Shape2D
				.	Height
				=	vEyeHeight
				;

				rHead
				.	RightEye
				.	Shape2D
				.	Color
				.	Red
				=	vEyeRed
				;
				rHead
				.	RightEye
				.	Shape2D
				.	Color
				.	Green
				=	vEyeGreen
				;
				rHead
				.	RightEye
				.	Shape2D
				.	Color
				.	Blue
				=	vEyeBlue
				;
				rHead
				.	RightEye
				.	Shape2D
				.	Color
				.	Alpha
				=	vAlpha
				;
				rHead
				.	RightEye
				.	Shape2D
				.	Coordinates
				.	Lateral
				=	vRightEyeLateral
				;
				rHead
				.	RightEye
				.	Shape2D
				.	Coordinates
				.	Longitudinal
				=	vEyeLongitudinal
				;
				rHead
				.	RightEye
				.	Shape2D
				.	Coordinates
				.	Vertical
				=	vEyeVertical
				;
				rHead
				.	RightEye
				.	Shape2D
				.	Height
				=	vEyeHeight
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
					::std::visit
					(	[]	(	auto const
								&	i_rBody
							)
						{	return
							i_rBody
							.	ComputeVolume
								()
							;
						}
						,	i_rBody3D
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
