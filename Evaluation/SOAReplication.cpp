import Evaluation.Dependency.PseudoRandomSequence;

import Evaluation.SOAReplication.View32;
import Evaluation.SOAReplication.Tag;
import Evaluation.SOAReplication.Circle;
import Evaluation.SOAReplication.Ellipse;
import Evaluation.SOAReplication.Rectangle;
import Evaluation.SOAReplication.Square;
import Evaluation.SOAReplication.Triangle;
import Evaluation.SOAReplication.Cube;
import Evaluation.SOAReplication.Cuboid;
import Evaluation.SOAReplication.Pyramid;
import Evaluation.SOAReplication.Sphere;
import Evaluation.SOAReplication.Cylinder;
import Evaluation.SOAReplication.Cone;
import Evaluation.SOAReplication.Ellipsoid;
import Evaluation.SOAReplication.Head;

import Meta.Memory.Size;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size.Scale;
import Meta.Memory.Size.PointerArithmetic;

import Std;

using ::Meta::ByteSize;

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

	union
		Body3D
	{
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


	ByteSize constexpr inline
		BodySize
	{	sizeof(Body3D)
	};
	ByteSize constexpr inline
		EyesSize
	{	sizeof(HeadEyes)
	};
	ByteSize constexpr inline
		TagSize
	{	sizeof(ETag)
	};

	struct
		Body3DReference
	{
		View32
			m_vView32
		;
		ETag
			m_vTag
		;

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
						(	m_vView32
						)
					;
				case
					ETag::Ellipse
				:	return
						ComputeVolumeEllipse
						(	m_vView32
						)
					;
				case
					ETag::Rectangle
				:	return
						ComputeVolumeRectangle
						(	m_vView32
						)
					;
				case
					ETag::Square
				:	return
						ComputeVolumeSquare
						(	m_vView32
						)
					;
				case
					ETag::Triangle
				:	return
						ComputeVolumeTriangle
						(	m_vView32
						)
					;
				case
					ETag::Cube
				:	return
						ComputeVolumeCube
						(	m_vView32
						)
					;
				case
					ETag::Cuboid
				:	return
						ComputeVolumeCuboid
						(	m_vView32
						)
					;
				case
					ETag::Pyramid
				:	return
						ComputeVolumePyramid
						(	m_vView32
						)
					;
				case
					ETag::Sphere
				:	return
						ComputeVolumeSphere
						(	m_vView32
						)
					;
				case
					ETag::Cylinder
				:	return
						ComputeVolumeCylinder
						(	m_vView32
						)
					;
				case
					ETag::Cone
				:	return
						ComputeVolumeCone
						(	m_vView32
						)
					;
				case
					ETag::Ellipsoid
				:	return
						ComputeVolumeEllipsoid
						(	m_vView32
						)
					;
				case
					ETag::Head
				:	return
						ComputeVolumeHead
						(	m_vView32
						)
					;
			}

			::std::unreachable
			();
		}
	};

	struct
		Body3DSentinel
	{
		::std::uint32_t
			m_vCount
		;
	};

	struct
		Body3DIterator
	{
		View32
			m_vView32
		;
		::std::byte const
		*	m_aTag
		;

		auto constexpr inline
		(	operator++
		)	()	&
			noexcept
		->	Body3DIterator&
		{
			++	m_vView32
				.	m_vIndex
			;
			m_aTag
			+=	TagSize
			;
			return
				*this
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator*
		)	()	&
			noexcept
		->	Body3DReference
		{	return
			{	m_vView32
			,	*
				::std::launder
				(	::std::bit_cast<ETag*>
					(	m_aTag
					)
				)
			};
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator==
		)	(	Body3DIterator
					i_aIterator
			,	Body3DSentinel
					i_aSentinel
			)
			noexcept
		->	bool
		{	return
				i_aIterator
				.	m_vView32
				.	m_vIndex
			==	i_aSentinel
				.	m_vCount
			;
		}
	};

	struct
		VolumeComputer
	{
		::std::byte
		*	m_aBuffer
		;
		::std::uint32_t
			m_vCapacity
		;
		::std::uint32_t
			m_vCount
		{};
		::std::byte
		*	m_aExtraBuffer
		;
		::std::uint32_t
			m_vExtraCapacity
		;
		::std::uint32_t
			m_vExtraCount
		{};

	public:
		explicit(true) constexpr inline
		(	VolumeComputer
		)	(	::std::uint32_t
					i_vCapacity
			)
			noexcept
		:	m_aBuffer
			{	new	(	::std::nothrow
					)
				::std::byte
					[	static_cast<::std::size_t>
						(	ByteSize
							(	i_vCapacity
							*	(	BodySize
								+	TagSize
								)
							).	get
								()
						)
					]
			}
		,	m_vCapacity
			{	i_vCapacity
			}
		,	m_aExtraBuffer
			{	new	(	::std::nothrow
					)
				::std::byte
					[	static_cast<::std::size_t>
						(	ByteSize
							(	(	i_vCapacity
								/	12u
								)
							*	EyesSize
							).	get
								()
						)
					]
			}
		,	m_vExtraCapacity
			{	i_vCapacity
			/	12u
			}
		{}

		constexpr inline
		(	compl
			VolumeComputer
		)	()
			noexcept
		{
			delete
				[]
				m_aExtraBuffer
			;
			delete
				[]
				m_aBuffer
			;
		}

		template
			<	typename
					t_tBody
			>
		auto constexpr inline
		(	emplace_back
		)	(	::std::in_place_type_t
				<	t_tBody
				>
			)	&
			noexcept
		{
			auto const
				vCount
			=	m_vCount
				++
			;
			auto const
				aBuffer
			=	m_aBuffer
			;
			auto const
				aTagStart
			=	aBuffer
			+	m_vCapacity
			*	BodySize
			;

			View32
				vView32
			{	aBuffer
			,	m_vCapacity
			,	vCount
			};

			switch
				(	t_tBody
					::	Tag
				)
			{	case
					ETag::Circle
				:	ConstructCircle
					(	vView32
					);
				break;
				case
					ETag::Ellipse
				:	ConstructEllipse
					(	vView32
					);
				break;
				case
					ETag::Rectangle
				:	ConstructRectangle
					(	vView32
					);
				break;
				case
					ETag::Square
				:	ConstructSquare
					(	vView32
					);
				break;
				case
					ETag::Triangle
				:	ConstructTriangle
					(	vView32
					);
				break;
				case
					ETag::Cube
				:	ConstructCube
					(	vView32
					);
				break;
				case
					ETag::Cuboid
				:	ConstructCuboid
					(	vView32
					);
				break;
				case
					ETag::Pyramid
				:	ConstructPyramid
					(	vView32
					);
				break;
				case
					ETag::Sphere
				:	ConstructSphere
					(	vView32
					);
				break;
				case
					ETag::Cylinder
				:	ConstructCylinder
					(	vView32
					);
				break;
				case
					ETag::Cone
				:	ConstructCone
					(	vView32
					);
				break;
				case
					ETag::Ellipsoid
				:	ConstructEllipsoid
					(	vView32
					);
				break;
				case
					ETag::Head
				:	auto const
						vExtraCount
					=	m_vExtraCount
						++
					;

					ConstructHead
					(	vView32
					,	View32
						{	m_aExtraBuffer
						,	m_vExtraCapacity
						,	vExtraCount
						}
					);
				break;
			}

			::std::construct_at
			(	::std::bit_cast<ETag*>
				(	aTagStart
				+	vCount
				*	TagSize
				)
			,	t_tBody
				::	Tag
			);
		}

		[[nodiscard]]
		auto constexpr inline
		(	begin
		)	()	const&
			noexcept
		->	Body3DIterator
		{	return
			{	View32
				{	m_aBuffer
				,	m_vCapacity
				,	0
				}
			,	(	m_aBuffer
				+	m_vCapacity
				*	BodySize
				)
			};
		}

		[[nodiscard]]
		auto constexpr inline
		(	end
		)	()	const&
			noexcept
		->	Body3DSentinel
		{	return
			{	m_vCount
			};
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

	VolumeComputer
		vElements
	{	static_cast<::std::uint32_t>
		(	vRandomSequence
			.	size
				()
		)
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

	for	(	auto const
				rBody
		:	vElements
		)
	{
		vLoopSum
		+=	rBody
			.	ComputeVolume
				()
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
