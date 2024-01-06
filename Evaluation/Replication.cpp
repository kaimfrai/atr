import Evaluation.Dependency.DynamicArray;
import Evaluation.Dependency.PseudoRandomSequence;
import Evaluation.Dependency.TransformReduce;
import Evaluation.Dependency.VerifyLoopSum;

import Evaluation.Replication.Circle;
import Evaluation.Replication.Ellipse;
import Evaluation.Replication.Rectangle;
import Evaluation.Replication.Square;
import Evaluation.Replication.Triangle;
import Evaluation.Replication.Cube;
import Evaluation.Replication.Cuboid;
import Evaluation.Replication.Pyramid;
import Evaluation.Replication.Sphere;
import Evaluation.Replication.Cylinder;
import Evaluation.Replication.Cone;
import Evaluation.Replication.Ellipsoid;
import Evaluation.Replication.Head;

import Std;

namespace
	Bodies3D
{
	using ::Bodies3D::Circle;
	using ::Bodies3D::Ellipse;
	using ::Bodies3D::Rectangle;
	using ::Bodies3D::Square;
	using ::Bodies3D::Triangle;

	using ::Bodies3D::Cube;
	using ::Bodies3D::Cuboid;
	using ::Bodies3D::Pyramid;
	using ::Bodies3D::Sphere;
	using ::Bodies3D::Cylinder;
	using ::Bodies3D::Cone;
	using ::Bodies3D::Ellipsoid;
	using ::Bodies3D::Head;

	struct
		VolumeComputer
	{
		auto
		(*	m_fComputeVolume
		)	(	void const
				*
			)
			noexcept
		->	float
		;

		union
		{	std::byte
				m_vAny
			;
			Circle
				m_vCircle
			;
			Ellipse
				m_vEllipse
			;
			Rectangle
				m_vRectangle
			;
			Square
				m_vSquare
			;
			Triangle
				m_vTriangle
			;
			Cube
				m_vCube
			;
			Cuboid
				m_vCuboid
			;
			Pyramid
				m_vPyramid
			;
			Sphere
				m_vSphere
			;
			Cylinder
				m_vCylinder
			;
			Cone
				m_vCone
			;
			Ellipsoid
				m_vEllipsoid
			;
			Head
				m_vHead
			;
		};

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Circle
				>
			)
		:	m_fComputeVolume
			{	&ComputeVolumeCircle
			}
		,	m_vCircle
			{}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Ellipse
				>
			)
		:	m_fComputeVolume
			{	&ComputeVolumeEllipse
			}
		,	m_vEllipse
			{}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Rectangle
				>
			)
		:	m_fComputeVolume
			{	&ComputeVolumeRectangle
			}
		,	m_vRectangle
			{}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Square
				>
			)
		:	m_fComputeVolume
			{	&ComputeVolumeSquare
			}
		,	m_vSquare
			{}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Triangle
				>
			)
		:	m_fComputeVolume
			{	&ComputeVolumeTriangle
			}
		,	m_vTriangle
			{}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Cube
				>
			)
		:	m_fComputeVolume
			{	&ComputeVolumeCube
			}
		,	m_vCube
			{}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Cuboid
				>
			)
		:	m_fComputeVolume
			{	&ComputeVolumeCuboid
			}
		,	m_vCuboid
			{}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Pyramid
				>
			)
		:	m_fComputeVolume
			{	&ComputeVolumePyramid
			}
		,	m_vPyramid
			{}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Sphere
				>
			)
		:	m_fComputeVolume
			{	&ComputeVolumeSphere
			}
		,	m_vSphere
			{}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Cylinder
				>
			)
		:	m_fComputeVolume
			{	&ComputeVolumeCylinder
			}
		,	m_vCylinder
			{}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Cone
				>
			)
		:	m_fComputeVolume
			{	&ComputeVolumeCone
			}
		,	m_vCone
			{}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Ellipsoid
				>
			)
		:	m_fComputeVolume
			{	&ComputeVolumeEllipsoid
			}
		,	m_vEllipsoid
			{}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Head
				>
			)
		:	m_fComputeVolume
			{	&ComputeVolumeSphere
			}
		,	m_vHead
			{}
		{}

		[[nodiscard]]
		auto constexpr inline
		(	ComputeVolume
		)	()	const
			noexcept
		->	float
		{	return
			m_fComputeVolume
			(	&m_vAny
			);
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

	DynamicArray<VolumeComputer>
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
						(	::std::in_place_type
							<	Circle
							>
						)
					.	m_vCircle
				;
				rCircle
				.	ColorRed
				=	vRed
				;
				rCircle
				.	ColorGreen
				=	vGreen
				;
				rCircle
				.	ColorBlue
				=	vBlue
				;
				rCircle
				.	ColorAlpha
				=	vAlpha
				;
				rCircle
				.	PointLateral
				=	vLateral
				;
				rCircle
				.	PointLongitudinal
				=	vLongitudinal
				;
				rCircle
				.	PointVertical
				=	vVertical
				;
				rCircle
				.	Height
				=	vHeight
				;
			}
			break;

			case
				1
		:	{	auto
				&	rEllipse
				=	vElements
					.	emplace_back
						(	::std::in_place_type
							<	Ellipse
							>
						)
					.	m_vEllipse
				;
				rEllipse
				.	ColorRed
				=	vRed
				;
				rEllipse
				.	ColorGreen
				=	vGreen
				;
				rEllipse
				.	ColorBlue
				=	vBlue
				;
				rEllipse
				.	ColorAlpha
				=	vAlpha
				;
				rEllipse
				.	PointLateral
				=	vLateral
				;
				rEllipse
				.	PointLongitudinal
				=	vLongitudinal
				;
				rEllipse
				.	PointVertical
				=	vVertical
				;
				rEllipse
				.	Height
				=	vHeight
				;
				rEllipse
				.	Width
				=	vWidth
				;
			}
			break;

			case
				2
		:	{	auto
				&	rRectangle
				=	vElements
					.	emplace_back
						(	::std::in_place_type
							<	Rectangle
							>
						)
					.	m_vRectangle
				;
				rRectangle
				.	ColorRed
				=	vRed
				;
				rRectangle
				.	ColorGreen
				=	vGreen
				;
				rRectangle
				.	ColorBlue
				=	vBlue
				;
				rRectangle
				.	ColorAlpha
				=	vAlpha
				;
				rRectangle
				.	PointLateral
				=	vLateral
				;
				rRectangle
				.	PointLongitudinal
				=	vLongitudinal
				;
				rRectangle
				.	PointVertical
				=	vVertical
				;
				rRectangle
				.	Height
				=	vHeight
				;
				rRectangle
				.	Width
				=	vWidth
				;
			}
			break;

			case
				3
		:	{	auto
				&	rSquare
				=	vElements
					.	emplace_back
						(	::std::in_place_type
							<	Square
							>
						)
					.	m_vSquare
				;
				rSquare
				.	ColorRed
				=	vRed
				;
				rSquare
				.	ColorGreen
				=	vGreen
				;
				rSquare
				.	ColorBlue
				=	vBlue
				;
				rSquare
				.	ColorAlpha
				=	vAlpha
				;
				rSquare
				.	PointLateral
				=	vLateral
				;
				rSquare
				.	PointLongitudinal
				=	vLongitudinal
				;
				rSquare
				.	PointVertical
				=	vVertical
				;
				rSquare
				.	Height
				=	vHeight
				;
			}
			break;

			case
				4
		:	{	auto
				&	rTriangle
				=	vElements
					.	emplace_back
						(	::std::in_place_type
							<	Triangle
							>
						)
					.	m_vTriangle
				;
				rTriangle
				.	ColorRed
				=	vRed
				;
				rTriangle
				.	ColorGreen
				=	vGreen
				;
				rTriangle
				.	ColorBlue
				=	vBlue
				;
				rTriangle
				.	ColorAlpha
				=	vAlpha
				;
				rTriangle
				.	PointLateral
				=	vLateral
				;
				rTriangle
				.	PointLongitudinal
				=	vLongitudinal
				;
				rTriangle
				.	PointVertical
				=	vVertical
				;
				rTriangle
				.	Height
				=	vHeight
				;
				rTriangle
				.	Width
				=	vWidth
				;
			}
			break;

			case
				5
		:	{	auto
				&	rCube
				=	vElements
					.	emplace_back
						(	::std::in_place_type
							<	Cube
							>
						)
					.	m_vCube
				;
				rCube
				.	ColorRed
				=	vRed
				;
				rCube
				.	ColorGreen
				=	vGreen
				;
				rCube
				.	ColorBlue
				=	vBlue
				;
				rCube
				.	ColorAlpha
				=	vAlpha
				;
				rCube
				.	PointLateral
				=	vLateral
				;
				rCube
				.	PointLongitudinal
				=	vLongitudinal
				;
				rCube
				.	PointVertical
				=	vVertical
				;
				rCube
				.	Height
				=	vHeight
				;
			}
			break;

			case
				6
		:	{	auto
				&	rCuboid
				=	vElements
					.	emplace_back
						(	::std::in_place_type
							<	Cuboid
							>
						)
					.	m_vCuboid
				;
				rCuboid
				.	ColorRed
				=	vRed
				;
				rCuboid
				.	ColorGreen
				=	vGreen
				;
				rCuboid
				.	ColorBlue
				=	vBlue
				;
				rCuboid
				.	ColorAlpha
				=	vAlpha
				;
				rCuboid
				.	PointLateral
				=	vLateral
				;
				rCuboid
				.	PointLongitudinal
				=	vLongitudinal
				;
				rCuboid
				.	PointVertical
				=	vVertical
				;
				rCuboid
				.	Height
				=	vHeight
				;
				rCuboid
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
				=	vElements
					.	emplace_back
						(	::std::in_place_type
							<	Pyramid
							>
						)
					.	m_vPyramid
				;
				rPyramid
				.	ColorRed
				=	vRed
				;
				rPyramid
				.	ColorGreen
				=	vGreen
				;
				rPyramid
				.	ColorBlue
				=	vBlue
				;
				rPyramid
				.	ColorAlpha
				=	vAlpha
				;
				rPyramid
				.	PointLateral
				=	vLateral
				;
				rPyramid
				.	PointLongitudinal
				=	vLongitudinal
				;
				rPyramid
				.	PointVertical
				=	vVertical
				;
				rPyramid
				.	Height
				=	vHeight
				;
				rPyramid
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
				=	vElements
					.	emplace_back
						(	::std::in_place_type
							<	Sphere
							>
						)
					.	m_vSphere
				;
				rSphere
				.	ColorRed
				=	vRed
				;
				rSphere
				.	ColorGreen
				=	vGreen
				;
				rSphere
				.	ColorBlue
				=	vBlue
				;
				rSphere
				.	ColorAlpha
				=	vAlpha
				;
				rSphere
				.	PointLateral
				=	vLateral
				;
				rSphere
				.	PointLongitudinal
				=	vLongitudinal
				;
				rSphere
				.	PointVertical
				=	vVertical
				;
				rSphere
				.	Height
				=	vHeight
				;
			}
			break;

			case
				9
		:	{	auto
				&	rCylinder
				=	vElements
					.	emplace_back
						(	::std::in_place_type
							<	Cylinder
							>
						)
					.	m_vCylinder
				;
				rCylinder
				.	ColorRed
				=	vRed
				;
				rCylinder
				.	ColorGreen
				=	vGreen
				;
				rCylinder
				.	ColorBlue
				=	vBlue
				;
				rCylinder
				.	ColorAlpha
				=	vAlpha
				;
				rCylinder
				.	PointLateral
				=	vLateral
				;
				rCylinder
				.	PointLongitudinal
				=	vLongitudinal
				;
				rCylinder
				.	PointVertical
				=	vVertical
				;
				rCylinder
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
				=	vElements
					.	emplace_back
						(	::std::in_place_type
							<	Cone
							>
						)
					.	m_vCone
				;
				rCone
				.	ColorRed
				=	vRed
				;
				rCone
				.	ColorGreen
				=	vGreen
				;
				rCone
				.	ColorBlue
				=	vBlue
				;
				rCone
				.	ColorAlpha
				=	vAlpha
				;
				rCone
				.	PointLateral
				=	vLateral
				;
				rCone
				.	PointLongitudinal
				=	vLongitudinal
				;
				rCone
				.	PointVertical
				=	vVertical
				;
				rCone
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
				=	vElements
					.	emplace_back
						(	::std::in_place_type
							<	Ellipsoid
							>
						)
					.	m_vEllipsoid
				;
				rEllipsoid
				.	ColorRed
				=	vRed
				;
				rEllipsoid
				.	ColorGreen
				=	vGreen
				;
				rEllipsoid
				.	ColorBlue
				=	vBlue
				;
				rEllipsoid
				.	ColorAlpha
				=	vAlpha
				;
				rEllipsoid
				.	PointLateral
				=	vLateral
				;
				rEllipsoid
				.	PointLongitudinal
				=	vLongitudinal
				;
				rEllipsoid
				.	PointVertical
				=	vVertical
				;
				rEllipsoid
				.	Height
				=	vHeight
				;
				rEllipsoid
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
				=	vElements
					.	emplace_back
						(	::std::in_place_type
							<	Head
							>
						)
					.	m_vHead
				;
				rHead
				.	Sphere
				.	ColorRed
				=	vRed
				;
				rHead
				.	Sphere
				.	ColorGreen
				=	vGreen
				;
				rHead
				.	Sphere
				.	ColorBlue
				=	vBlue
				;
				rHead
				.	Sphere
				.	ColorAlpha
				=	vAlpha
				;
				rHead
				.	Sphere
				.	PointLateral
				=	vLateral
				;
				rHead
				.	Sphere
				.	PointLongitudinal
				=	vLongitudinal
				;
				rHead
				.	Sphere
				.	PointVertical
				=	vVertical
				;
				rHead
				.	Sphere
				.	Height
				=	vHeight
				;

				rHead
				.	Eyes
				.	ColorRed
				=	vEyeRed
				;
				rHead
				.	Eyes
				.	ColorGreen
				=	vEyeGreen
				;
				rHead
				.	Eyes
				.	ColorBlue
				=	vEyeBlue
				;
				rHead
				.	Eyes
				.	LeftPointLateral
				=	vLeftEyeLateral
				;
				rHead
				.	Eyes
				.	PointLongitudinal
				=	vEyeLongitudinal
				;
				rHead
				.	Eyes
				.	PointVertical
				=	vEyeVertical
				;
				rHead
				.	Eyes
				.	Height
				=	vEyeHeight
				;
				rHead
				.	Eyes
				.	RightPointLateral
				=	vRightEyeLateral
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
		,	[]	(	VolumeComputer const
					&	i_rBody3D
				)
			->	float
			{	return
					i_rBody3D
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
