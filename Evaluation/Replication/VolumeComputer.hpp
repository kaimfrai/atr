export module Evaluation.Replication.VolumeComputer;

export import Evaluation.Shared;
export import Evaluation.Replication.Cube;
export import Evaluation.Replication.Cuboid;
export import Evaluation.Replication.Pyramid;
export import Evaluation.Replication.Sphere;
export import Evaluation.Replication.Cylinder;
export import Evaluation.Replication.Cone;
export import Evaluation.Replication.Ellipsoid;
export import Evaluation.Replication.Head;

export namespace
	Bodies3D
{
	struct
		VolumeComputer
	{
		auto
		(*	m_fComputeVolume
		)	(	void const
				*
			)
		noexcept
		->	Float
		;

		union
		{	std::byte
				m_vAny
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

		constexpr
			VolumeComputer
			(	std::in_place_type_t
				<	Cube
				>
			)
		:	m_fComputeVolume
			{	&ComputeVolumeCube
			}
		,	m_vCube
			{}
		{}

		constexpr
			VolumeComputer
			(	std::in_place_type_t
				<	Cuboid
				>
			)
		:	m_fComputeVolume
			{	&ComputeVolumeCuboid
			}
		,	m_vCuboid
			{}
		{}

		constexpr
			VolumeComputer
			(	std::in_place_type_t
				<	Pyramid
				>
			)
		:	m_fComputeVolume
			{	&ComputeVolumePyramid
			}
		,	m_vPyramid
			{}
		{}

		constexpr
			VolumeComputer
			(	std::in_place_type_t
				<	Sphere
				>
			)
		:	m_fComputeVolume
			{	&ComputeVolumeSphere
			}
		,	m_vSphere
			{}
		{}

		constexpr
			VolumeComputer
			(	std::in_place_type_t
				<	Cylinder
				>
			)
		:	m_fComputeVolume
			{	&ComputeVolumeCylinder
			}
		,	m_vCylinder
			{}
		{}

		constexpr
			VolumeComputer
			(	std::in_place_type_t
				<	Cone
				>
			)
		:	m_fComputeVolume
			{	&ComputeVolumeCone
			}
		,	m_vCone
			{}
		{}

		constexpr
			VolumeComputer
			(	std::in_place_type_t
				<	Ellipsoid
				>
			)
		:	m_fComputeVolume
			{	&ComputeVolumeEllipsoid
			}
		,	m_vEllipsoid
			{}
		{}

		constexpr
			VolumeComputer
			(	std::in_place_type_t
				<	Head
				>
			)
		:	m_fComputeVolume
			{	&ComputeVolumeSphere
			}
		,	m_vHead
			{}
		{}

		auto
			ComputeVolume
			()	const
		noexcept
		->	Float
		{
			return
				m_fComputeVolume
				(	&m_vAny
				)
			;
		}
	};
}
