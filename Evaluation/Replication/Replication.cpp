export module Evaluation.Replication;

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
import Evaluation.Dependency.InPlaceConstruct;

import Std;

export using ::InPlaceConstruct;

export namespace
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
