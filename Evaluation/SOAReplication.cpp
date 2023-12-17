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

	struct
		Body3D
	{
		float
			ColorRed
		;
		float
			ColorGreen
		;
		float
			ColorBlue
		;
		float
			ColorAlpha
		;
		float
			PointLateral
		;
		float
			PointLongitudinal
		;
		float
			PointVertical
		;
		float
			Height
		;
		float
			Width
		;
		float
			Depth
		;
		float
			ComputeVolumeMultiplier
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

	struct
		Body3DReference
	{
		View32
			m_vView32
		;

		[[nodiscard]]
		auto constexpr inline
		(	ComputeVolume
		)	()	const
			noexcept
		->	auto
		{
			auto const
				vHeight
			=	m_vView32
				[	7z
				]
			;
			auto const
				vWidth
			=	m_vView32
				[	8z
				]
			;
			auto const
				vDepth
			=	m_vView32
				[	9z
				]
			;
			auto const
				vComputeVolumeMultiplier
			=	m_vView32
				[	10z
				]
			;

			return
				vHeight
			*	vWidth
			*	vDepth
			*	vComputeVolumeMultiplier
			;
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

		auto constexpr inline
		(	operator++
		)	()	&
			noexcept
		->	Body3DIterator&
		{
			++	m_vView32
				.	m_vIndex
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
							*	BodySize
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
