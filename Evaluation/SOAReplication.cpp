import Evaluation.Dependency.Fraction;
import Evaluation.Dependency.PiFraction;
import Evaluation.Dependency.PseudoRandomSequence;
import Evaluation.Dependency.TransformReduce;
import Evaluation.Dependency.VerifyLoopSum;

import Evaluation.SOAReplication.SOAView;
import Evaluation.SOAReplication.Tag;

import Meta.Auto.Simd.Cast;
import Meta.Auto.Simd.Fill;
import Meta.Auto.Simd.Float;
import Meta.Generic.RandomAccessIteratorBase;

import Std;

using ::Meta::Auto::Simd;
using ::Meta::Auto::SimdCast;
using ::Meta::Auto::SimdFill;
using ::Meta::Auto::SimdMask;
using ::Meta::Generic::RandomAccessIteratorBase;

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
	)	(	Simd<::std::int32_t[Parallel]>
				i_vType
		,	::std::int32_t
				i_vMask
		)
		noexcept
	->	SimdMask<Parallel>
	{	return
		HighestBit
		(	SimdFill<::std::int32_t[Parallel]>(i_vMask)
		<<	i_vType
		);
	}

	struct
		Body3DValue
	;

	struct
		Body3DReference
	{
		using
			ReferencedValue
		=	Body3DValue
		;

		Body3DConstView<Parallel>
			m_rView
		;

		[[nodiscard]]
		auto inline
		(	ComputeVolume
		)	()	const
			noexcept
		->	auto
		{
			auto static constexpr
				vMultiplierArray
			=	::std::bit_cast<Simd<float[16]>, float const[16]>
				(	{	PiFraction<1, 4>
					,	PiFraction<1, 4>
					,	1.0f
					,	1.0f
					,	Fraction<1, 2>
					,	1.0f
					,	1.0f
					,	Fraction<1, 3>
					,	PiFraction<1, 6>
					,	PiFraction<1, 4>
					,	PiFraction<1, 12>
					,	PiFraction<1, 6>
					,	PiFraction<1, 6>
					,	0.0f
					,	0.0f
					,	0.0f
					}
				)
			;

			auto const
				vTypeInt32
			=	SimdCast<::std::int32_t>
				(	m_rView
					.	get
						<	10uz
						>()
				)
			;
			Simd<float[Parallel]> const
				vMultiplier
			=	vMultiplierArray
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
		alignas(Simd<float[Parallel]>)
		::std::byte
			m_vData
			[	Parallel
			*	Body3DView<Parallel>
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
					=	Parallel
				,	.	m_vIndex
					=	0
				}
			};
		}
	};

	struct
		Body3DIterator
	:	RandomAccessIteratorBase
		<	Body3DReference
		>
	{
		Body3DConstView<Parallel>
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
			+=	Parallel
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
			/	Parallel
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
		Body3DView<Parallel>
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
						(	Body3DView<Parallel>
							::	Alignment
						,	(	Body3DView<Parallel>
								::	CeilToBlockCapacity
									(	i_vCapacity
									)
							*	Body3DView<Parallel>
								::	TotalSize
							)
						)
					)
			,	.	m_vCapacity
				=	Body3DView<Parallel>
					::	CeilToBlockCapacity
						(	i_vCapacity
						)
			,	.	m_vIndex
				=	0u
			}
		{
		}

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
		)	(	Simd<::std::uint8_t[Parallel]>
					i_vType
			,	Simd<float[Parallel]>
					i_vRed
			,	Simd<float[Parallel]>
					i_vGreen
			,	Simd<float[Parallel]>
					i_vBlue
			,	Simd<float[Parallel]>
					i_vAlpha
			,	Simd<float[Parallel]>
					i_vLateral
			,	Simd<float[Parallel]>
					i_vLongitudinal
			,	Simd<float[Parallel]>
					i_vVertical
			,	Simd<float[Parallel]>
					i_vHeight
			,	Simd<float[Parallel]>
					i_vWidth
			,	Simd<float[Parallel]>
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
			+=	Parallel
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
				=	Body3DConstView<Parallel>
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
				=	Body3DConstView<Parallel>
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

	return
	reduce
	(	TransformReduce
		(	vElements
			.	begin
				()
		,	vElements
			.	end
				()
		,	[]	(	auto const
						rBody
				)
			{	return
					rBody
					.	ComputeVolume
						()
				;
			}
		)
	);
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
