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
import Evaluation.Virtual.Shape3D;
import Evaluation.Virtual.Cuboid;
import Evaluation.Virtual.Pyramid;
import Evaluation.Virtual.Sphere;
import Evaluation.Virtual.Cylinder;
import Evaluation.Virtual.Cone;
import Evaluation.Virtual.Ellipsoid;
import Evaluation.Virtual.Head;
import Evaluation.Virtual.IBody;

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
				=	static_cast<Circle&>
					(*	vElements
						.	emplace_back
							(	::std::make_unique
								<	Circle
								>()
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
				=	static_cast<Ellipse&>
					(*	vElements
						.	emplace_back
							(	::std::make_unique
								<	Ellipse
								>()
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
				=	static_cast<Rectangle&>
					(*	vElements
						.	emplace_back
							(	::std::make_unique
								<	Rectangle
								>()
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
				=	static_cast<Square&>
					(*	vElements
						.	emplace_back
							(	::std::make_unique
								<	Square
								>()
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
				=	static_cast<Triangle&>
					(*	vElements
						.	emplace_back
							(	::std::make_unique
								<	Triangle
								>()
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
				=	static_cast<Cube&>
					(*	vElements
						.	emplace_back
							(	::std::make_unique
								<	Cube
								>()
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
				=	static_cast<Cuboid&>
					(*	vElements
						.	emplace_back
							(	::std::make_unique
								<	Cuboid
								>()
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
				=	static_cast<Pyramid&>
					(*	vElements
						.	emplace_back
							(	::std::make_unique
								<	Pyramid
								>()
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
				=	static_cast<Sphere&>
					(*	vElements
						.	emplace_back
							(	::std::make_unique
								<	Sphere
								>()
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
				=	static_cast<Cylinder&>
					(*	vElements
						.	emplace_back
							(	::std::make_unique
								<	Cylinder
								>()
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
				=	static_cast<Cone&>
					(*	vElements
						.	emplace_back
							(	::std::make_unique
								<	Cone
								>()
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
				=	static_cast<Ellipsoid&>
					(*	vElements
						.	emplace_back
							(	::std::make_unique
								<	Ellipsoid
								>()
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
				=	static_cast<Head&>
					(*	vElements
						.	emplace_back
							(	::std::make_unique
								<	Head
								>()
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
