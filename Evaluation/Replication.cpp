import Evaluation.Dependency.DynamicArray;
import Evaluation.Dependency.PseudoRandomSequence;

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

	[[nodiscard]]
	auto constexpr inline
	(	ComputeVolume
	)	(	VolumeComputer const
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

	DynamicArray<VolumeComputer>
		vElements
	{	vRandomSequence
		.	size
			()
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
					(	::std::in_place_type
						<	Circle
						>
					)
				;
			break;

			case
				1
			:	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Ellipse
						>
					)
				;
			break;

			case
				2
			:	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Rectangle
						>
					)
				;
			break;

			case
				3
			:	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Square
						>
					)
				;
			break;

			case
				4
			:	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Triangle
						>
					)
				;
			break;

			case
				5
			:	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Cube
						>
					)
				;
			break;

			case
				6
			:	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Cuboid
						>
					)
				;
			break;

			case
				7
			:	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Pyramid
						>
					)
				;
			break;

			case
				8
			:	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Sphere
						>
					)
				;
			break;

			case
				9
			:	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Cylinder
						>
					)
				;
			break;

			case
				10
			:	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Cone
						>
					)
				;
			break;

			case
				11
			:	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Ellipsoid
						>
					)
				;
			break;

			case
				12
			:	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Head
						>
					)
				;
			break;
		}
	}

	float
		vLoopSum
	{};

	for	(	auto
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
