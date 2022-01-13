export module Evaluation.Replication.Bodies;

export import Evaluation.Shared;
export import Std;

export namespace
	Bodies3D
{
	struct
		Cube
	{
		Float
			Width
		;
		RGBAColor
			Color
		;
	};

	auto constexpr
		ComputeVolumeCube
		(	void const
			*	i_aObject
		)
	noexcept
	->	Float
	{
		Cube const
		*	aCube
		=	std::launder
			(	static_cast
				<	Cube const
					*
				>(	i_aObject
				)
			)
		;

		return
			aCube
			->	Width
		*	aCube
			->	Width
		*	aCube
			->	Width
		;
	}

	struct
		Cuboid
	{
		Float
			Depth
		;
		Float
			Height
		;
		Float
			Width
		;
		RGBAColor
			Color
		;
	};

	auto constexpr
		ComputeVolumeCuboid
		(	void const
			*	i_aObject
		)
	noexcept
	->	Float
	{
		Cuboid const
		*	aCuboid
		=	std::launder
			(	static_cast
				<	Cuboid const
					*
				>(	i_aObject
				)
			)
		;

		return
			aCuboid
			->	Depth
		*	aCuboid
			->	Height
		*	aCuboid
			->	Width
		;
	}

	struct
		Pyramid
	{
		Float
			Depth
		;
		Float
			Height
		;
		Float
			Width
		;
		RGBAColor
			Color
		;
	};

	auto constexpr
		ComputeVolumePyramid
		(	void const
			*	i_aObject
		)
	noexcept
	->	Float
	{
		Pyramid const
		*	aPyramid
		=	std::launder
			(	static_cast
				<	Pyramid const
					*
				>(	i_aObject
				)
			)
		;

		return
			Fraction
			<	1ll
			,	3ll
			>{}
		*	aPyramid
			->	Depth
		*	aPyramid
			->	Height
		*	aPyramid
			->	Width
		;
	}

	struct
		Ellipsoid
	{
		Float
			Depth
		;
		Float
			Height
		;
		Float
			Width
		;
		RGBAColor
			Color
		;
	};

	auto constexpr
		ComputeVolumeEllipsoid
		(	void const
			*	i_aObject
		)
	noexcept
	->	Float
	{
		Ellipsoid const
		*	aEllipsoid
		=	std::launder
			(	static_cast
				<	Ellipsoid const
					*
				>(	i_aObject
				)
			)
		;

		return
			πFraction
			<	1z
			,	6z
			>{}
		*	aEllipsoid
			->	Depth
		*	aEllipsoid
			->	Height
		*	aEllipsoid
			->	Width
		;
	}

	struct
		Sphere
	{
		Float
			Width
		;
		RGBAColor
			Color
		;
	};

	auto constexpr
		ComputeVolumeSphere
		(	void const
			*	i_aObject
		)
	noexcept
	->	Float
	{
		Sphere const
		*	aSphere
		=	std::launder
			(	static_cast
				<	Sphere const
					*
				>(	i_aObject
				)
			)
		;

		return
			πFraction
			<	1z
			,	6z
			>{}
		*	aSphere
			->	Width
		*	aSphere
			->	Width
		*	aSphere
			->	Width
		;
	}

	struct
		Cylinder
	{
		Float
			Depth
		;
		Float
			Width
		;
		RGBAColor
			Color
		;
	};

	auto constexpr
		ComputeVolumeCylinder
		(	void const
			*	i_aObject
		)
	noexcept
	->	Float
	{
		Cylinder const
		*	aCylinder
		=	std::launder
			(	static_cast
				<	Cylinder const
					*
				>(	i_aObject
				)
			)
		;

		return
			πFraction
			<	1z
			,	4z
			>{}
		*	aCylinder
			->	Depth
		*	aCylinder
			->	Width
		*	aCylinder
			->	Width
		;
	}

	struct
		Cone
	{
		Float
			Depth
		;
		Float
			Width
		;
		RGBAColor
			Color
		;
	};

	auto constexpr
		ComputeVolumeCone
		(	void const
			*	i_aObject
		)
	noexcept
	->	Float
	{
		Cone const
		*	aCone
		=	std::launder
			(	static_cast
				<	Cone const
					*
				>(	i_aObject
				)
			)
		;

		return
			πFraction
			<	1z
			,	12z
			>{}
		*	aCone
			->	Depth
		*	aCone
			->	Width
		*	aCone
			->	Width
		;
	}

	struct
		Head
	{
		Float
			Width
		;
		Float
			WidthLeftEye
		;
		Float
			WidthRightEye
		;
		RGBAColor
			Color
		;
		RGBAColor
			ColorLeftEye
		;
		RGBAColor
			ColorRightEye
		;
	};

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

static_assert(SizeMinimal<Bodies3D::Cube, 1, 1>);
static_assert(SizeMinimal<Bodies3D::Cuboid, 3, 1>);
static_assert(SizeMinimal<Bodies3D::Pyramid, 3, 1>);
static_assert(SizeMinimal<Bodies3D::Sphere, 1, 1>);
static_assert(SizeMinimal<Bodies3D::Cylinder, 2, 1>);
static_assert(SizeMinimal<Bodies3D::Cone, 2, 1>);
static_assert(SizeMinimal<Bodies3D::Ellipsoid, 3, 1>);
static_assert(SizeMinimal<Bodies3D::Head, 3, 3>);
