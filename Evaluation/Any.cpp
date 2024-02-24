import Evaluation.Dependency.DynamicArray;
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

	struct
		IBody
	{
		[[nodiscard]]
		auto virtual constexpr
		(	ComputeVolume
		)	()	const
			noexcept
		->	float
		=	0;

		explicit(false) constexpr
		(	IBody
		)	()
			noexcept
		=	default;

		explicit(false) constexpr inline
		(	IBody
		)	(	IBody const
				&
			)
			noexcept
		=	default;

		explicit(false) constexpr inline
		(	IBody
		)	(	IBody
				&&
			)
			noexcept
		=	default;

		virtual constexpr inline
		(	compl
			IBody
		)	()
			noexcept
		=	default;
	};

	template
		<	typename
				t_tBody
		>
	struct
		BodyAdapter
	:	IBody
	{
		t_tBody
			m_vBody
		;

		[[nodiscard]]
		auto constexpr inline
		(	ComputeVolume
		)	()	const
			noexcept
		->	float
			override
		{	return
				m_vBody
				.	ComputeVolume
					()
			;
		}
	};

	struct
		AnyBody
	{
		::std::any
			m_vAny
		;
		auto
		(*	m_fCast
		)	(	::std::any const
				&
			)
			noexcept
		->	IBody const
			&
		;

		template
			<	typename
					t_tBody
			>
		explicit(false) constexpr inline
		(	AnyBody
		)	(	::std::in_place_type_t
				<	t_tBody
				>
			)
			noexcept
		:	m_vAny
			{	::std::in_place_type
				<	BodyAdapter
					<	t_tBody
					>
				>
			}
		,	m_fCast
			{	+[]	(	::std::any const
						&	i_rAny
					)
					noexcept
				->	IBody const
					&
				{	return
						::std::any_cast
						<	BodyAdapter
							<	t_tBody
							>	const
							&
						>(	i_rAny
						)
					;
				}
			}
		{}

		[[nodiscard]]
		auto constexpr inline
		(	operator->
		)	()	const
			noexcept
		->	IBody const
			*
		{	return
			&m_fCast
			(	m_vAny
			);
		}

		template
			<	typename
					t_tBody
			>
		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator t_tBody&
		)	()	&
			noexcept
		{	return
				::std::any_cast
				<	BodyAdapter
					<	t_tBody
					>
					&
				>(	m_vAny
				)
				.	m_vBody
			;
		}
	};
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

	DynamicArray<AnyBody>
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
					[[maybe_unused]]
				=	static_cast<Circle&>
					(	vElements
					.	emplace_back
						(	::std::in_place_type
							<	Circle
							>
						)
					)
				;

#ifndef ZERO_INITIALIZE_MEMBERS
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
#endif
			}
			break;

			case
				1
		:	{	auto
				&	rEllipse
					[[maybe_unused]]
				=	static_cast<Ellipse&>
					(	vElements
						.	emplace_back
							(	::std::in_place_type
								<	Ellipse
								>
							)
					)
				;

#ifndef ZERO_INITIALIZE_MEMBERS
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
#endif
			}
			break;

			case
				2
		:	{	auto
				&	rRectangle
					[[maybe_unused]]
				=	static_cast<Rectangle&>
					(	vElements
						.	emplace_back
							(	::std::in_place_type
								<	Rectangle
								>
							)
					)
				;

#ifndef ZERO_INITIALIZE_MEMBERS
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
#endif
			}
			break;

			case
				3
		:	{	auto
				&	rSquare
					[[maybe_unused]]
				=	static_cast<Square&>
					(	vElements
						.	emplace_back
							(	::std::in_place_type
								<	Square
								>
							)
					)
				;

#ifndef ZERO_INITIALIZE_MEMBERS
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
#endif
			}
			break;

			case
				4
		:	{	auto
				&	rTriangle
					[[maybe_unused]]
				=	static_cast<Triangle&>
					(	vElements
						.	emplace_back
							(	::std::in_place_type
								<	Triangle
								>
							)
					)
				;

#ifndef ZERO_INITIALIZE_MEMBERS
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
#endif
			}
			break;

			case
				5
		:	{	auto
				&	rCube
					[[maybe_unused]]
				=	static_cast<Cube&>
					(	vElements
						.	emplace_back
							(	::std::in_place_type
								<	Cube
								>
							)
					)
				;

#ifndef ZERO_INITIALIZE_MEMBERS
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
#endif
			}
			break;

			case
				6
		:	{	auto
				&	rCuboid
					[[maybe_unused]]
				=	static_cast<Cuboid&>
					(	vElements
						.	emplace_back
							(	::std::in_place_type
								<	Cuboid
								>
							)
					)
				;

#ifndef ZERO_INITIALIZE_MEMBERS
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
#endif
			}
			break;

			case
				7
		:	{	auto
				&	rPyramid
					[[maybe_unused]]
				=	static_cast<Pyramid&>
					(	vElements
						.	emplace_back
							(	::std::in_place_type
								<	Pyramid
								>
							)
					)
				;

#ifndef ZERO_INITIALIZE_MEMBERS
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
#endif
			}
			break;

			case
				8
		:	{	auto
				&	rSphere
					[[maybe_unused]]
				=	static_cast<Sphere&>
					(	vElements
						.	emplace_back
							(	::std::in_place_type
								<	Sphere
								>
							)
					)
				;

#ifndef ZERO_INITIALIZE_MEMBERS
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
#endif
			}
			break;

			case
				9
		:	{	auto
				&	rCylinder
					[[maybe_unused]]
				=	static_cast<Cylinder&>
					(	vElements
						.	emplace_back
							(	::std::in_place_type
								<	Cylinder
								>
							)
					)
				;

#ifndef ZERO_INITIALIZE_MEMBERS
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
#endif
			}
			break;

			case
				10
		:	{	auto
				&	rCone
					[[maybe_unused]]
				=	static_cast<Cone&>
					(	vElements
						.	emplace_back
							(	::std::in_place_type
								<	Cone
								>
							)
					)
				;

#ifndef ZERO_INITIALIZE_MEMBERS
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
#endif
			}
			break;

			case
				11
		:	{	auto
				&	rEllipsoid
					[[maybe_unused]]
				=	static_cast<Ellipsoid&>
					(	vElements
						.	emplace_back
							(	::std::in_place_type
								<	Ellipsoid
								>
							)
					)
				;

#ifndef ZERO_INITIALIZE_MEMBERS
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
#endif
			}
			break;

			case
				12
		:	{	auto
				&	rHead
					[[maybe_unused]]
				=	static_cast<Head&>
					(	vElements
						.	emplace_back
							(	::std::in_place_type
								<	Head
								>
							)
					)
				;

#ifndef ZERO_INITIALIZE_MEMBERS
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
		,	[]	(	AnyBody const
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
