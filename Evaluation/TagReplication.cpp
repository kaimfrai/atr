import Evaluation.Dependency.DynamicArray;
import Evaluation.Dependency.PseudoRandomSequence;

import Evaluation.TagReplication.Circle;
import Evaluation.TagReplication.Ellipse;
import Evaluation.TagReplication.Rectangle;
import Evaluation.TagReplication.Square;
import Evaluation.TagReplication.Triangle;
import Evaluation.TagReplication.Cube;
import Evaluation.TagReplication.Cuboid;
import Evaluation.TagReplication.Pyramid;
import Evaluation.TagReplication.Sphere;
import Evaluation.TagReplication.Cylinder;
import Evaluation.TagReplication.Cone;
import Evaluation.TagReplication.Ellipsoid;
import Evaluation.TagReplication.Head;

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
		enum class
			ETag
		:	unsigned char
		{	Circle
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
		};

		union
		{	Circle
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

		ETag
			m_vTag
		;

		constexpr inline
		(	compl
			VolumeComputer
		)	()
			noexcept
		{	switch
				(	m_vTag
				)
			{	case
					ETag::Head
				:	m_vHead
					.	compl
						Head
						()
					;
					[[fallthrough]];
				case
					ETag::Circle
				:	[[fallthrough]];
				case
					ETag::Ellipse
				:	[[fallthrough]];
				case
					ETag::Rectangle
				:	[[fallthrough]];
				case
					ETag::Square
				:	[[fallthrough]];
				case
					ETag::Triangle
				:	[[fallthrough]];
				case
					ETag::Cube
				:	[[fallthrough]];
				case
					ETag::Cuboid
				:	[[fallthrough]];
				case
					ETag::Pyramid
				:	[[fallthrough]];
				case
					ETag::Sphere
				:	[[fallthrough]];
				case
					ETag::Cylinder
				:	[[fallthrough]];
				case
					ETag::Cone
				:	[[fallthrough]];
				case
					ETag::Ellipsoid
				:	break;
			}
		}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Circle
				>
			)
		:	m_vCircle
			{}
		,	m_vTag
			{	ETag::Circle
			}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Ellipse
				>
			)
		:	m_vEllipse
			{}
		,	m_vTag
			{	ETag::Ellipse
			}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Rectangle
				>
			)
		:	m_vRectangle
			{}
		,	m_vTag
			{	ETag::Rectangle
			}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Square
				>
			)
		:	m_vSquare
			{}
		,	m_vTag
			{	ETag::Square
			}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Triangle
				>
			)
		:	m_vTriangle
			{}
		,	m_vTag
			{	ETag::Triangle
			}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Cube
				>
			)
		:	m_vCube
			{}
		,	m_vTag
			{	ETag::Cube
			}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Cuboid
				>
			)
		:	m_vCuboid
			{}
		,	m_vTag
			{	ETag::Cuboid
			}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Pyramid
				>
			)
		:	m_vPyramid
			{}
		,	m_vTag
			{	ETag::Pyramid
			}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Sphere
				>
			)
		:	m_vSphere
			{}
		,	m_vTag
			{	ETag::Sphere
			}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Cylinder
				>
			)
		:	m_vCylinder
			{}
		,	m_vTag
			{	ETag::Cylinder
			}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Cone
				>
			)
		:	m_vCone
			{}
		,	m_vTag
			{	ETag::Cone
			}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Ellipsoid
				>
			)
		:	m_vEllipsoid
			{}
		,	m_vTag
			{	ETag::Ellipsoid
			}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Head
				>
			)
		:	m_vHead
			{}
		,	m_vTag
			{	ETag::Head
			}
		{}

		[[nodiscard]]
		auto constexpr inline
		(	ComputeVolume
		)	()	const
			noexcept
		->	float
		{
			switch
				(	m_vTag
				)
			{	case
					ETag::Circle
				:	return
						ComputeVolumeCircle
						(	&m_vCircle
						)
					;
				case
					ETag::Ellipse
				:	return
						ComputeVolumeEllipse
						(	&
							m_vEllipse
						)
					;
				case
					ETag::Rectangle
				:	return
						ComputeVolumeRectangle
						(	&
							m_vRectangle
						)
					;
				case
					ETag::Square
				:	return
						ComputeVolumeSquare
						(	&
							m_vSquare
						)
					;
				case
					ETag::Triangle
				:	return
						ComputeVolumeTriangle
						(	&
							m_vTriangle
						)
					;
				case
					ETag::Cube
				:	return
						ComputeVolumeCube
						(	&
							m_vCube
						)
					;
				case
					ETag::Cuboid
				:	return
						ComputeVolumeCuboid
						(	&
							m_vCuboid
						)
					;
				case
					ETag::Pyramid
				:	return
						ComputeVolumePyramid
						(	&
							m_vPyramid
						)
					;
				case
					ETag::Sphere
				:	return
						ComputeVolumeSphere
						(	&
							m_vSphere
						)
					;
				case
					ETag::Cylinder
				:	return
						ComputeVolumeCylinder
						(	&
							m_vCylinder
						)
					;
				case
					ETag::Cone
				:	return
						ComputeVolumeCone
						(	&
							m_vCone
						)
					;
				case
					ETag::Ellipsoid
				:	return
						ComputeVolumeEllipsoid
						(	&
							m_vEllipsoid
						)
					;
				case
					ETag::Head
				:	return
						ComputeVolumeSphere
						(	&
							m_vHead
							.	Sphere
						)
					;
			}
		}
	};
}

auto
(	main
)	(	int
	,	char const
		*	i_aArgValue
		[]
	)
-> int
{
	using namespace Bodies3D;

	auto const
		vRandomSeed
	=	::std::strtoull
		(	i_aArgValue
				[	1z
				]
		,	nullptr
		,	10
		)
	;
	auto const
		vRandomSequenceLength
	=	::std::strtoll
		(	i_aArgValue
				[	2z
				]
		,	nullptr
		,	10
		)
	;

	auto static constexpr
		vExpectedValue
	=	0
	;

	PseudoRandomSequence
		vRandomSequence
	{	vRandomSeed
	,	vRandomSequenceLength
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
		+=	rBody
			.	ComputeVolume
				()
		;
	}

	return
		static_cast<int>
		(	vLoopSum
		)
	-	vExpectedValue
	;
}
