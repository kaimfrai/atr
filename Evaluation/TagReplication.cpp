import Evaluation.Dependency.PseudoRandomSequence;

import Evaluation.TagReplication.Tag;
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
		TagSize
	{	sizeof(ETag)
	};

	struct
		Body3DReference
	{
		::std::byte const
		*	m_aData
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
						(	m_aData
						)
					;
				case
					ETag::Ellipse
				:	return
						ComputeVolumeEllipse
						(	m_aData
						)
					;
				case
					ETag::Rectangle
				:	return
						ComputeVolumeRectangle
						(	m_aData
						)
					;
				case
					ETag::Square
				:	return
						ComputeVolumeSquare
						(	m_aData
						)
					;
				case
					ETag::Triangle
				:	return
						ComputeVolumeTriangle
						(	m_aData
						)
					;
				case
					ETag::Cube
				:	return
						ComputeVolumeCube
						(	m_aData
						)
					;
				case
					ETag::Cuboid
				:	return
						ComputeVolumeCuboid
						(	m_aData
						)
					;
				case
					ETag::Pyramid
				:	return
						ComputeVolumePyramid
						(	m_aData
						)
					;
				case
					ETag::Sphere
				:	return
						ComputeVolumeSphere
						(	m_aData
						)
					;
				case
					ETag::Cylinder
				:	return
						ComputeVolumeCylinder
						(	m_aData
						)
					;
				case
					ETag::Cone
				:	return
						ComputeVolumeCone
						(	m_aData
						)
					;
				case
					ETag::Ellipsoid
				:	return
						ComputeVolumeEllipsoid
						(	m_aData
						)
					;
				case
					ETag::Head
				:	return
						ComputeVolumeHead
						(	m_aData
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
		::std::byte const
		*	m_aDataEnd
		;
	};

	struct
		Body3DIterator
	{
		::std::byte const
		*	m_aData
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
			m_aData
			+=	BodySize
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
			{	m_aData
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
				.	m_aData
			==	i_aSentinel
				.	m_aDataEnd
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
		{}

		constexpr inline
		(	compl
			VolumeComputer
		)	()
			noexcept
		{
			auto const
				vCount
			=	m_vCount
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

			for	(	auto
						vIndex
					=	0z
				;	(	vIndex
					<	vCount
					)
				;	++	vIndex
				)
			{
				if	(	auto const
							vTag
						=	*
							::std::launder
							(	::std::bit_cast<ETag*>
								(	aTagStart
								+	vIndex
								*	TagSize
								)
							)
					;	vTag
					==	ETag::Head
					)
				{
					auto const
						aHeadStart
					=	aBuffer
					+	vIndex
					*	BodySize
					;
					auto const
						aHead
					=	::std::launder
						(	::std::bit_cast<Head*>
							(	aHeadStart
							)
						)
					;
					aHead
					->	compl
						Head
						()
					;
				}
			}

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

			::std::construct_at
			(	::std::bit_cast<t_tBody*>
				(	aBuffer
				+	vCount
				*	BodySize
				)
			);

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
			{	m_aBuffer
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
			{	m_aBuffer
			+	m_vCapacity
			*	BodySize
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