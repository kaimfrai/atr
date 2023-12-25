import Evaluation.Dependency.PseudoRandomSequence;
import Evaluation.Dependency.VerifyLoopSum;

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
		auto inline
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
				vComputeVolumeMultiplier
			*	vHeight
			*	vWidth
			*	vDepth
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
			m_vView32
			.	m_vIndex
			+=	::std::experimental::native_simd<float>::size()
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
		::std::experimental::native_simd<float>
		*	m_aBuffer
		;
		::std::uint32_t
			m_vCapacity
		;
		::std::uint32_t
			m_vCount
		{};

	public:
		explicit(true) inline
		(	VolumeComputer
		)	(	::std::uint32_t
					i_vCapacity
			)
			noexcept
		:	m_aBuffer
			{	new	(	::std::nothrow
					)
				::std::experimental::native_simd<float>
					[	static_cast<::std::size_t>
						(	ByteSize
							(	i_vCapacity
							*	BodySize
							).	get
								()
						)
					/	sizeof(::std::experimental::native_simd<float>)
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
			,	float
					i_vRed
			,	float
					i_vGreen
			,	float
					i_vBlue
			,	float
					i_vAlpha
			,	float
					i_vLateral
			,	float
					i_vLongitudinal
			,	float
					i_vVertical
			,	float
					i_vHeight
			,	float
					i_vWidth
			,	float
					i_vDepth
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
					,	i_vRed
					,	i_vGreen
					,	i_vBlue
					,	i_vAlpha
					,	i_vLateral
					,	i_vLongitudinal
					,	i_vVertical
					,	i_vHeight
					);
				break;
				case
					ETag::Ellipse
				:	ConstructEllipse
					(	vView32
					,	i_vRed
					,	i_vGreen
					,	i_vBlue
					,	i_vAlpha
					,	i_vLateral
					,	i_vLongitudinal
					,	i_vVertical
					,	i_vHeight
					,	i_vWidth
					);
				break;
				case
					ETag::Rectangle
				:	ConstructRectangle
					(	vView32
					,	i_vRed
					,	i_vGreen
					,	i_vBlue
					,	i_vAlpha
					,	i_vLateral
					,	i_vLongitudinal
					,	i_vVertical
					,	i_vHeight
					,	i_vWidth
					);
				break;
				case
					ETag::Square
				:	ConstructSquare
					(	vView32
					,	i_vRed
					,	i_vGreen
					,	i_vBlue
					,	i_vAlpha
					,	i_vLateral
					,	i_vLongitudinal
					,	i_vVertical
					,	i_vHeight
					);
				break;
				case
					ETag::Triangle
				:	ConstructTriangle
					(	vView32
					,	i_vRed
					,	i_vGreen
					,	i_vBlue
					,	i_vAlpha
					,	i_vLateral
					,	i_vLongitudinal
					,	i_vVertical
					,	i_vHeight
					,	i_vWidth
					);
				break;
				case
					ETag::Cube
				:	ConstructCube
					(	vView32
					,	i_vRed
					,	i_vGreen
					,	i_vBlue
					,	i_vAlpha
					,	i_vLateral
					,	i_vLongitudinal
					,	i_vVertical
					,	i_vHeight
					);
				break;
				case
					ETag::Cuboid
				:	ConstructCuboid
					(	vView32
					,	i_vRed
					,	i_vGreen
					,	i_vBlue
					,	i_vAlpha
					,	i_vLateral
					,	i_vLongitudinal
					,	i_vVertical
					,	i_vHeight
					,	i_vWidth
					,	i_vDepth
					);
				break;
				case
					ETag::Pyramid
				:	ConstructPyramid
					(	vView32
					,	i_vRed
					,	i_vGreen
					,	i_vBlue
					,	i_vAlpha
					,	i_vLateral
					,	i_vLongitudinal
					,	i_vVertical
					,	i_vHeight
					,	i_vWidth
					,	i_vDepth
					);
				break;
				case
					ETag::Sphere
				:	ConstructSphere
					(	vView32
					,	i_vRed
					,	i_vGreen
					,	i_vBlue
					,	i_vAlpha
					,	i_vLateral
					,	i_vLongitudinal
					,	i_vVertical
					,	i_vHeight
					);
				break;
				case
					ETag::Cylinder
				:	ConstructCylinder
					(	vView32
					,	i_vRed
					,	i_vGreen
					,	i_vBlue
					,	i_vAlpha
					,	i_vLateral
					,	i_vLongitudinal
					,	i_vVertical
					,	i_vHeight
					,	i_vDepth
					);
				break;
				case
					ETag::Cone
				:	ConstructCone
					(	vView32
					,	i_vRed
					,	i_vGreen
					,	i_vBlue
					,	i_vAlpha
					,	i_vLateral
					,	i_vLongitudinal
					,	i_vVertical
					,	i_vHeight
					,	i_vDepth
					);
				break;
				case
					ETag::Ellipsoid
				:	ConstructEllipsoid
					(	vView32
					,	i_vRed
					,	i_vGreen
					,	i_vBlue
					,	i_vAlpha
					,	i_vLateral
					,	i_vLongitudinal
					,	i_vVertical
					,	i_vHeight
					,	i_vWidth
					,	i_vDepth
					);
				break;
				case
					ETag::Head
				:	ConstructHead
					(	vView32
					,	i_vRed
					,	i_vGreen
					,	i_vBlue
					,	i_vAlpha
					,	i_vLateral
					,	i_vLongitudinal
					,	i_vVertical
					,	i_vHeight
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
			:	vElements
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
					,	vWidth
					,	vDepth
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
			break;

			case
				2
			:	vElements
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
					,	vDepth
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
			break;

			case
				4
			:	vElements
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
					,	vDepth
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
			break;

			case
				6
			:	vElements
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
			break;

			case
				7
			:	vElements
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
			break;

			case
				8
			:	vElements
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
					,	vWidth
					,	vDepth
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
			break;

			case
				10
			:	vElements
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
					,	vWidth
					,	vDepth
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
			break;

			case
				12
			:	vElements
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
					,	vWidth
					,	vDepth
					)
				;
			break;
		}
	}

	::std::experimental::native_simd<float>
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

	return
		reduce
		(	vLoopSum
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
