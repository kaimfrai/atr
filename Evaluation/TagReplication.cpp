import Evaluation.Dependency.PseudoRandomSequence;
import Evaluation.Dependency.RandomAccessIteratorBase;
import Evaluation.Dependency.TransformReduce;
import Evaluation.Dependency.VerifyLoopSum;

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

	auto constexpr inline
		BodySize
	=	sizeof(Body3D)
	;
	auto constexpr inline
		TagSize
	=	sizeof(ETag)
	;

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
		Body3DValue
	{
		alignas(Body3D)
		::std::byte
			m_vData
			[	sizeof(Body3D)
			]
		;
		ETag
			m_vTag
		;

		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator
			Body3DReference
		)	()	const
			noexcept
		{	return
			{	m_vData
			,	m_vTag
			};
		}
	};

	struct
		ImplicitBody3DReference
	:	Body3DReference
	{
		explicit(false) constexpr inline
		(	ImplicitBody3DReference
		)	(	Body3DReference
					i_rReference
			)
			noexcept
		:	Body3DReference
			{	i_rReference
			}
		{}

		explicit(false) constexpr inline
		(	ImplicitBody3DReference
		)	(	Body3DValue const
				&	i_rValue
			)
			noexcept
		:	Body3DReference
			{	i_rValue
				.	operator
					Body3DReference
					()
			}
		{}
	};

	struct
		Body3DIterator
	:	RandomAccessIteratorBase
		<	Body3DReference
		,	Body3DValue
		>
	{
		::std::byte const
		*	m_aData
		;
		::std::byte const
		*	m_aTag
		;

		auto constexpr inline
		(	operator+=
		)	(	this Body3DIterator
				&	i_rThis
			,	Body3DIterator::difference_type
					i_vDifference
			)
			noexcept
		->	decltype(i_rThis)
		{
			i_rThis
			.	m_aData
			+=	static_cast<Body3DIterator::difference_type>
				(	BodySize
				)
			*	i_vDifference
			;
			i_rThis
			.	m_aTag
			+=	static_cast<Body3DIterator::difference_type>
				(	TagSize
				)
			*	i_vDifference
			;
			return
				i_rThis
			;
		}


		[[nodiscard]]
		auto friend constexpr inline
		(	operator-
		)	(	Body3DIterator
					i_aLeft
			,	Body3DIterator
					i_aRight
			)
			noexcept
		->	Body3DIterator::difference_type
		{	return
				(	i_aLeft
					.	m_aData
				-	i_aRight
					.	m_aData
				)
			/	static_cast<Body3DIterator::difference_type>
				(	BodySize
				)
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator*
		)	(	this Body3DIterator
					i_aThis
			)
			noexcept
		->	Body3DIterator::reference
		{	return
			{	i_aThis
				.	m_aData
			,	*
				::std::launder
				(	::std::bit_cast<ETag*>
					(	i_aThis
						.	m_aTag
					)
				)
			};
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator==
		)	(	Body3DIterator
					i_aLeft
			,	Body3DIterator
					i_aRight
			)
			noexcept
		->	bool
		{	return
				i_aLeft
				.	m_aData
			==	i_aRight
				.	m_aData
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator<=>
		)	(	Body3DIterator
					i_aLeft
			,	Body3DIterator
					i_aRight
			)
			noexcept
		->	decltype(auto)
		{	return
				i_aLeft
				.	m_aData
			<=>	i_aRight
				.	m_aData
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
					[	i_vCapacity
					*	(	BodySize
						+	TagSize
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
					=	0u
				;		vIndex
					<	vCount
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
		->	t_tBody&
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

			auto
			*	aBody
			=	::std::construct_at
				(	::std::bit_cast<t_tBody*>
					(	aBuffer
					+	vCount
					*	BodySize
					)
				)
			;

			::std::construct_at
			(	::std::bit_cast<ETag*>
				(	aTagStart
				+	vCount
				*	TagSize
				)
			,	t_tBody
				::	Tag
			);

			return
			*	aBody
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	begin
		)	()	const&
			noexcept
		->	Body3DIterator
		{	return
			{	.	m_aData
				=	m_aBuffer
			,	.	m_aTag
				=	(	m_aBuffer
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
		->	Body3DIterator
		{	return
			{	.	m_aData
				=	(	m_aBuffer
					+	m_vCapacity
					*	BodySize
					)
			,	.	m_aTag
				=	(	m_aBuffer
					+	m_vCapacity
					*	(	BodySize
						+	TagSize
						)
					)
			};
		}
	};
}

template
	<>
struct
	::std::common_type
	<	::Bodies3D::Body3DValue
	,	::Bodies3D::Body3DReference
	>
:	::std::type_identity
	<	::Bodies3D::ImplicitBody3DReference
	>
{};

template
	<>
struct
	::std::common_type
	<	::Bodies3D::Body3DReference
	,	::Bodies3D::Body3DValue
	>
:	::std::type_identity
	<	::Bodies3D::ImplicitBody3DReference
	>
{};

static_assert
(	::std::random_access_iterator
	<	::Bodies3D::Body3DIterator
	>
);
static_assert
(	::std::is_same_v
	<	typename
		::std::iterator_traits
		<	::Bodies3D::Body3DIterator
		>
		::	iterator_category
	,	::std::random_access_iterator_tag
	>
);

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

	VolumeComputer
		vElements
	{	static_cast<::std::uint32_t>
		(	i_vRandomSequence
			.	size
				()
		)
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
							<	Bodies3D::Circle
							>
						)
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
							<	Bodies3D::Ellipse
							>
						)
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
							<	Bodies3D::Head
							>
						)
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
					[	0z
					]
				=	vEyeRed
				;
				rHead
				.	Eyes
					[	1z
					]
				=	vEyeGreen
				;
				rHead
				.	Eyes
					[	2z
					]
				=	vEyeBlue
				;
				rHead
				.	Eyes
					[	3z
					]
				=	vLeftEyeLateral
				;
				rHead
				.	Eyes
					[	4z
					]
				=	vEyeLongitudinal
				;
				rHead
				.	Eyes
					[	5z
					]
				=	vEyeVertical
				;
				rHead
				.	Eyes
					[	6z
					]
				=	vEyeHeight
				;
				rHead
				.	Eyes
					[	7z
					]
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
		,	[]	(	auto const
						rBody
				)
			->	float
			{	return
					rBody
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
