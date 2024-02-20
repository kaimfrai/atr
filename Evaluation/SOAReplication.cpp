import Evaluation.Dependency.Fraction;
import Evaluation.Dependency.PiFraction;
import Evaluation.Dependency.PseudoRandomSequence;
import Evaluation.Dependency.RandomAccessIteratorBase;
import Evaluation.Dependency.TransformReduce;
import Evaluation.Dependency.VerifyLoopSum;

import Evaluation.SOAReplication.SOAView;
import Evaluation.SOAReplication.Tag;

import Meta.Auto.Simd.Cast;
import Meta.Auto.Simd.Fill;
import Meta.Auto.Simd.Float;
import Meta.Auto.Simd.Int32;

import Std;

using ::Meta::Simd;
using ::Meta::SimdCast;
using ::Meta::SimdFill;
using ::Meta::SimdMask;

namespace
	Bodies3D
{
	::std::int32_t constexpr inline
		CircleMask
	=	1
	<<	(	31
		-	static_cast<::std::int32_t>(ETag::Circle)
		)
	;
	::std::int32_t constexpr inline
		EllipseMask
	=	1
	<<	(	31
		-	static_cast<::std::int32_t>(ETag::Ellipse)
		)
	;
	::std::int32_t constexpr inline
		RectangleMask
	=	1
	<<	(	31
		-	static_cast<::std::int32_t>(ETag::Rectangle)
		)
	;
	::std::int32_t constexpr inline
		SquareMask
	=	1
	<<	(	31
		-	static_cast<::std::int32_t>(ETag::Square)
		)
	;
	::std::int32_t constexpr inline
		TriangleMask
	=	1
	<<	(	31
		-	static_cast<::std::int32_t>(ETag::Triangle)
		)
	;
	::std::int32_t constexpr inline
		CubeMask
	=	1
	<<	(	31
		-	static_cast<::std::int32_t>(ETag::Cube)
		)
	;
	::std::int32_t constexpr inline
		CuboidMask
	=	1
	<<	(	31
		-	static_cast<::std::int32_t>(ETag::Cuboid)
		)
	;
	::std::int32_t constexpr inline
		PyramidMask
	=	1
	<<	(	31
		-	static_cast<::std::int32_t>(ETag::Pyramid)
		)
	;
	::std::int32_t constexpr inline
		SphereMask
	=	1
	<<	(	31
		-	static_cast<::std::int32_t>(ETag::Sphere)
		)
	;
	::std::int32_t constexpr inline
		CylinderMask
	=	1
	<<	(	31
		-	static_cast<::std::int32_t>(ETag::Cylinder)
		)
	;
	::std::int32_t constexpr inline
		ConeMask
	=	1
	<<	(	31
		-	static_cast<::std::int32_t>(ETag::Cone)
		)
	;
	::std::int32_t constexpr inline
		EllipsoidMask
	=	1
	<<	(	31
		-	static_cast<::std::int32_t>(ETag::Ellipsoid)
		)
	;
	::std::int32_t constexpr inline
		HeadMask
	=	1
	<<	(	31
		-	static_cast<::std::int32_t>(ETag::Head)
		)
	;
	::std::int32_t constexpr inline
		SeparateWidthMask
	=	EllipseMask
	bitor
		RectangleMask
	bitor
		TriangleMask
	bitor
		CuboidMask
	bitor
		PyramidMask
	bitor
		EllipsoidMask
	;
	::std::int32_t constexpr inline
		TwoDimensionalMask
	=	CircleMask
	bitor
		EllipseMask
	bitor
		RectangleMask
	bitor
		SquareMask
	bitor
		TriangleMask
	;
	::std::int32_t constexpr inline
		SeparateDepthMask
	=	CuboidMask
	bitor
		PyramidMask
	bitor
		EllipsoidMask
	bitor
		CylinderMask
	bitor
		ConeMask
	;

	[[nodiscard]]
	auto inline
	(	TypeMask
	)	(	Simd<::std::int32_t[8uz]>
				i_vType
		,	::std::int32_t
				i_vMask
		)
		noexcept
	->	SimdMask<float[8uz]>
	{	return
		// *HIGHEST* bit must be set
		::std::bit_cast<SimdMask<float[8uz]>>
		(	SimdFill<::std::int32_t[8uz]>(i_vMask)
		<<	i_vType
		);
	}

	struct
		Body3DReference
	{
		Body3DConstView
			m_rView
		;

		[[nodiscard]]
		auto inline
		(	ComputeVolume
		)	(	Simd<float[16uz]> const
					i_vMultiplierArray
			)	const
			noexcept
		->	auto
		{
			auto const
				vTypeInt32
			=	SimdCast<::std::int32_t>
				(	m_rView
					.	get
						<	10uz
						>()
				)
			;
			Simd<float[8uz]> const
				vMultiplier
			=	i_vMultiplierArray
				[	vTypeInt32
				]
			;
			auto const
				rHeight
			=	m_rView
				.	get
					<	7uz
					>()
			;
			auto const
				vWidth
			=	(	rHeight
				=	m_rView
					.	get
						<	8uz
						>()
					[	TypeMask
						(	vTypeInt32
						,	SeparateWidthMask
						)
					]
				)
			;
			auto const
				vDepth
			=	(	rHeight
				=	m_rView
					.	get
						<	9uz
						>()
					[	TypeMask
						(	vTypeInt32
						,	SeparateDepthMask
						)
					]
				)
			;

			auto const
				v2D
			=	vMultiplier
			*	rHeight
			*	vWidth
			;
			auto const
				v3D
			=	v2D
			*	vDepth
			;

			return
				v3D
			=	v2D
				[	TypeMask
					(	vTypeInt32
					,	TwoDimensionalMask
					)
				]
			;
		}
	};

	struct
		Body3DValue
	{
		alignas(Simd<float[8uz]>)
		::std::byte
			m_vData
			[	8uz
			*	Body3DView
				::	TotalSize
			]
		;

		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator Body3DReference
		)	()	const&
			noexcept
		{	return
			{	{	.	m_aBuffer
					=	m_vData
				,	.	m_vCapacity
					=	8
				,	.	m_vIndex
					=	0
				}
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
		Body3DConstView
			m_rSOAView
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
			.	m_rSOAView
			.	m_vIndex
			+=	8z
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
					.	m_rSOAView
					.	m_vIndex
				-	i_aRight
					.	m_rSOAView
					.	m_vIndex
				)
			/	8z
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
				.	m_rSOAView
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
				.	m_rSOAView
				.	m_vIndex
			==	i_aRight
				.	m_rSOAView
				.	m_vIndex
			;
		}

		[[nodiscard]]
		auto friend inline
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
				.	m_rSOAView
				.	m_vIndex
			<=>	i_aRight
				.	m_rSOAView
				.	m_vIndex
			;
		}
	};

	struct
		VolumeComputer
	{
		Body3DView
			m_rView
		{};

	public:
		explicit(true) inline
		(	VolumeComputer
		)	(	::std::uint32_t
					i_vCapacity
			)
			noexcept
		:	m_rView
			{	.	m_aBuffer
				=	static_cast<::std::byte*>
					(	::std::aligned_alloc
						(	Body3DView
							::	Alignment
						,	(	Body3DView
								::	CeilToBlockCapacity
									(	i_vCapacity
									)
							*	Body3DView
								::	TotalSize
							)
						)
					)
			,	.	m_vCapacity
				=	Body3DView
					::	CeilToBlockCapacity
						(	i_vCapacity
						)
			,	.	m_vIndex
				=	0u
			}
		{}

		constexpr inline
		(	compl
			VolumeComputer
		)	()
			noexcept
		{
			::std::free
			(	static_cast<void*>
				(	m_rView
					.	m_aBuffer
				)
			);
		}

		auto inline
		(	emplace_back
		)	(	Simd<::std::uint8_t[8uz]>
					i_vType
			,	Simd<float[8uz]>
					i_vRed
			,	Simd<float[8uz]>
					i_vGreen
			,	Simd<float[8uz]>
					i_vBlue
			,	Simd<float[8uz]>
					i_vAlpha
			,	Simd<float[8uz]>
					i_vLateral
			,	Simd<float[8uz]>
					i_vLongitudinal
			,	Simd<float[8uz]>
					i_vVertical
			,	Simd<float[8uz]>
					i_vHeight
			,	Simd<float[8uz]>
					i_vWidth
			,	Simd<float[8uz]>
					i_vDepth
			)	&
			noexcept
		{
				m_rView
				.	get<0uz>
					()
			=	i_vRed
			;
				m_rView
				.	get<1uz>
					()
			=	i_vGreen
			;
				m_rView
				.	get<2uz>
					()
			=	i_vBlue
			;
				m_rView
				.	get<3uz>
					()
			=	i_vAlpha
			;
				m_rView
				.	get<4uz>
					()
			=	i_vLateral
			;
				m_rView
				.	get<5uz>
					()
			=	i_vLongitudinal
			;
				m_rView
				.	get<6uz>
					()
			=	i_vVertical
			;
				m_rView
				.	get<7uz>
					()
			=	i_vHeight
			;
				m_rView
				.	get<8uz>
					()
			=	i_vWidth
			;
				m_rView
				.	get<9uz>
					()
			=	i_vDepth
			;
				m_rView
				.	get<10uz>
					()
			=	i_vType
			;
				m_rView
				.	m_vIndex
			+=	8uz
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	begin
		)	()	const&
			noexcept
		->	Body3DIterator
		{	return
			{	.	m_rSOAView
				=	Body3DConstView
					{	.	m_aBuffer
						=	m_rView
							.	m_aBuffer
					,	.	m_vCapacity
						=	m_rView
							.	m_vCapacity
					,	.	m_vIndex
						=	0
					}
			};
		}

		[[nodiscard]]
		auto constexpr inline
		(	end
		)	()	const&
			noexcept
		->	Body3DIterator
		{	return
			{	.	m_rSOAView
				=	Body3DConstView
					{	.	m_aBuffer
						=	m_rView
							.	m_aBuffer
					,	.	m_vCapacity
						=	m_rView
							.	m_vCapacity
					,	.	m_vIndex
						=	m_rView
							.	m_vIndex
					}
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
			.	SimdView
				()
		)
	{
		vElements
		.	emplace_back
			(		vType
				%	13
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

	float const
		vMultiplierArray
		[	16uz
		]
	{	PiFraction<1, 4>{}
	,	PiFraction<1, 4>{}
	,	1.0f
	,	1.0f
	,	Fraction<1, 2>{}
	,	1.0f
	,	1.0f
	,	Fraction<1, 3>{}
	,	PiFraction<1, 6>{}
	,	PiFraction<1, 4>{}
	,	PiFraction<1, 12>{}
	,	PiFraction<1, 6>{}
	,	PiFraction<1, 6>{}
	,	0.0f
	,	0.0f
	,	0.0f
	};

	return
		TransformReduce
		(	vElements
			.	begin
				()
		,	vElements
			.	end
				()
		,	[		vMultiplier
				=	::std::bit_cast<Simd<float[16uz]>>
					(	vMultiplierArray
					)
			]	(	auto const
						rBody
				)
			{	return
					rBody
					.	ComputeVolume
						(	vMultiplier
						)
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
