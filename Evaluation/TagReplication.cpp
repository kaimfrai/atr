import Evaluation.Dependency.PseudoRandomSequence;
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

import Meta.Generic.RandomAccessIteratorBase;

import Std;

using ::Meta::Generic::RandomAccessIteratorBase;

namespace
	Bodies3D
{
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
		using
			ReferencedValue
		=	struct
				Body3DValue
		;

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

				default
			:	::std::unreachable
				();
			}
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
		Body3DIterator
	:	RandomAccessIteratorBase
		<	Body3DReference
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
			,	auto
				&&
				...	i_rpArgument
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
				,	::std::forward<decltype(i_rpArgument)>
					(	i_rpArgument
					)
					...
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

	for	(	auto const
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
		:	{	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Circle
						>
					,	vRed
					,	vGreen
					,	vBlue
					,	vAlpha
					,	vLateral
					,	vLongitudinal
					,	vVertical
					,	vHeight
					)
				;
			}
			break;

			case
				1
		:	{	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Ellipse
						>
					,	vRed
					,	vGreen
					,	vBlue
					,	vAlpha
					,	vLateral
					,	vLongitudinal
					,	vVertical
					,	vHeight
					,	vWidth
					)
				;
			}
			break;

			case
				2
		:	{	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Rectangle
						>
					,	vRed
					,	vGreen
					,	vBlue
					,	vAlpha
					,	vLateral
					,	vLongitudinal
					,	vVertical
					,	vHeight
					,	vWidth
					)
				;
			}
			break;

			case
				3
		:	{	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Square
						>
					,	vRed
					,	vGreen
					,	vBlue
					,	vAlpha
					,	vLateral
					,	vLongitudinal
					,	vVertical
					,	vHeight
					)
				;
			}
			break;

			case
				4
		:	{	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Triangle
						>
					,	vRed
					,	vGreen
					,	vBlue
					,	vAlpha
					,	vLateral
					,	vLongitudinal
					,	vVertical
					,	vHeight
					,	vWidth
					)
				;
			}
			break;

			case
				5
		:	{	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Cube
						>
					,	vRed
					,	vGreen
					,	vBlue
					,	vAlpha
					,	vLateral
					,	vLongitudinal
					,	vVertical
					,	vHeight
					)
				;
			}
			break;

			case
				6
		:	{	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Cuboid
						>
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
					)
				;
			}
			break;

			case
				7
		:	{	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Pyramid
						>
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
					)
				;
			}
			break;

			case
				8
		:	{	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Sphere
						>
					,	vRed
					,	vGreen
					,	vBlue
					,	vAlpha
					,	vLateral
					,	vLongitudinal
					,	vVertical
					,	vHeight
					)
				;
			}
			break;

			case
				9
		:	{	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Cylinder
						>
					,	vRed
					,	vGreen
					,	vBlue
					,	vAlpha
					,	vLateral
					,	vLongitudinal
					,	vVertical
					,	vHeight
					,	vDepth
					)
				;
			}
			break;

			case
				10
		:	{	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Cone
						>
					,	vRed
					,	vGreen
					,	vBlue
					,	vAlpha
					,	vLateral
					,	vLongitudinal
					,	vVertical
					,	vHeight
					,	vDepth
					)
				;
			}
			break;

			case
				11
		:	{	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Ellipsoid
						>
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
					)
				;
			}
			break;

			case
				12
		:	{	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Head
						>
					,	vRed
					,	vGreen
					,	vBlue
					,	vAlpha
					,	vLateral
					,	vLongitudinal
					,	vVertical
					,	vHeight
					,	vEyeRed
					,	vEyeGreen
					,	vEyeBlue
					,	vLeftEyeLateral
					,	vEyeLongitudinal
					,	vEyeVertical
					,	vEyeHeight
					,	vRightEyeLateral
					)
				;
			}
			break;

			default
		:	::std::unreachable
			();
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
