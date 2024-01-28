import Evaluation.Dependency.Fraction;
import Evaluation.Dependency.PiFraction;
import Evaluation.Dependency.PseudoRandomSequence;
import Evaluation.Dependency.RandomAccessIteratorBase;
import Evaluation.Dependency.TransformReduce;
import Evaluation.Dependency.VerifyLoopSum;

import Evaluation.SOAReplication.SOAView;
import Evaluation.SOAReplication.Tag;

import Std;

namespace
	Bodies3D
{
	unsigned constexpr inline
		CircleMask
	=	1u
	<<	(	31u
		-	static_cast<unsigned>(ETag::Circle)
		)
	;
	unsigned constexpr inline
		EllipseMask
	=	1u
	<<	(	31u
		-	static_cast<unsigned>(ETag::Ellipse)
		)
	;
	unsigned constexpr inline
		RectangleMask
	=	1u
	<<	(	31u
		-	static_cast<unsigned>(ETag::Rectangle)
		)
	;
	unsigned constexpr inline
		SquareMask
	=	1u
	<<	(	31u
		-	static_cast<unsigned>(ETag::Square)
		)
	;
	unsigned constexpr inline
		TriangleMask
	=	1u
	<<	(	31u
		-	static_cast<unsigned>(ETag::Triangle)
		)
	;
	unsigned constexpr inline
		CubeMask
	=	1u
	<<	(	31u
		-	static_cast<unsigned>(ETag::Cube)
		)
	;
	unsigned constexpr inline
		CuboidMask
	=	1u
	<<	(	31u
		-	static_cast<unsigned>(ETag::Cuboid)
		)
	;
	unsigned constexpr inline
		PyramidMask
	=	1u
	<<	(	31u
		-	static_cast<unsigned>(ETag::Pyramid)
		)
	;
	unsigned constexpr inline
		SphereMask
	=	1u
	<<	(	31u
		-	static_cast<unsigned>(ETag::Sphere)
		)
	;
	unsigned constexpr inline
		CylinderMask
	=	1u
	<<	(	31u
		-	static_cast<unsigned>(ETag::Cylinder)
		)
	;
	unsigned constexpr inline
		ConeMask
	=	1u
	<<	(	31u
		-	static_cast<unsigned>(ETag::Cone)
		)
	;
	unsigned constexpr inline
		EllipsoidMask
	=	1u
	<<	(	31u
		-	static_cast<unsigned>(ETag::Ellipsoid)
		)
	;
	unsigned constexpr inline
		HeadMask
	=	1u
	<<	(	31u
		-	static_cast<unsigned>(ETag::Head)
		)
	;
	unsigned constexpr inline
		HeightIsWidthMask
	=	CircleMask
	bitor
		SquareMask
	bitor
		CubeMask
	bitor
		SphereMask
	bitor
		CylinderMask
	bitor
		ConeMask
	bitor
		HeadMask
	;
	unsigned constexpr inline
		OneIsDepthMask
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
	unsigned constexpr inline
		HeightIsDepthMask
	=	CubeMask
	bitor
		SphereMask
	bitor
		HeadMask
	;
	unsigned constexpr inline
		Pi_4_Mask
	=	CircleMask
	bitor
		EllipseMask
	bitor
		CylinderMask
	;
	unsigned constexpr inline
		Half_Mask
	=	TriangleMask
	;
	unsigned constexpr inline
		Third_Mask
	=	PyramidMask
	;
	unsigned constexpr inline
		Pi_6_Mask
	=	SphereMask
	bitor
		EllipsoidMask
	bitor
		HeadMask
	;
	unsigned constexpr inline
		Pi_12_Mask
	=	ConeMask
	;

	[[nodiscard]]
	auto inline
	(	TypeMask
	)	(	Simd<unsigned>
				i_vType
		,	unsigned
				i_vMask
		)
		noexcept
	->	SimdMask<float>
	{	return
			// *HIGHEST* bit must be set
			::std::bit_cast<SimdMask<float>>
			(	Simd<unsigned>(i_vMask)
			<<	i_vType
			)
		;
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
		)	()	const
			noexcept
		->	auto
		{
			auto const
				vType
			=	to_native
				(	simd_cast<unsigned>
					(	m_rView
						.	get
							<	10uz
							,	unsigned char
							,	Simd<float>::size()
							>()
					)
				)
			;
			auto const
				vHeight
			=	m_rView
				.	get
					<	7uz
					,	float
					>()
			;
			auto
				vWidth
			=	m_rView
				.	get
					<	8uz
					,	float
					>()
			;
			auto
				vDepth
			=	m_rView
				.	get
					<	9uz
					,	float
					>()
			;
				where
				(	TypeMask
					(	vType
					,	HeightIsWidthMask
					)
				,	vWidth
				)
			=	vHeight
			;	where
				(	TypeMask
					(	vType
					,	HeightIsDepthMask
					)
				,	vDepth
				)
			=	vHeight
			;	where
				(	TypeMask
					(	vType
					,	OneIsDepthMask
					)
				,	vDepth
				)
			=	1.0f
			;

			Simd<float>
				vMultiplier
			=	1.0f
			;	where
				(	TypeMask
					(	vType
					,	Pi_4_Mask
					)
				,	vMultiplier
				)
			=	static_cast<float>(PiFraction<1, 4>{})
			;	where
				(	TypeMask
					(	vType
					,	Half_Mask
					)
				,	vMultiplier
				)
			=	static_cast<float>(Fraction<1, 2>{})
			;	where
				(	TypeMask
					(	vType
					,	Third_Mask
					)
				,	vMultiplier
				)
			=	static_cast<float>(Fraction<1, 3>{})
			;	where
				(	TypeMask
					(	vType
					,	Pi_6_Mask
					)
				,	vMultiplier
				)
			=	static_cast<float>(PiFraction<1, 6>{})
			;	where
				(	TypeMask
					(	vType
					,	Pi_12_Mask
					)
				,	vMultiplier
				)
			=	static_cast<float>(PiFraction<1, 12>{})
			;

			return
				vMultiplier
			*	vHeight
			*	vWidth
			*	vDepth
			;
		}
	};

	struct
		Body3DValue
	{
		alignas(Simd<float>)
		::std::byte
			m_vData
			[	Simd<float>
				::	size
					()
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
					=	Simd<float>
						::	size
							()
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
			+=	static_cast<Body3DIterator::difference_type>
				(	Simd<float>
					::	size
						()
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
					.	m_rSOAView
					.	m_vIndex
				-	i_aRight
					.	m_rSOAView
					.	m_vIndex
				)
			/	static_cast<Body3DIterator::difference_type>
				(	Simd<float>
					::	size
						()
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
						(	alignof(Simd<float>)
						,	(	i_vCapacity
							*	Body3DView
								::	TotalSize
							)
						)
					)
			,	.	m_vCapacity
				=	i_vCapacity
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
		)	(	FixedSimd<unsigned char, 8uz>
					i_vType
			,	Simd<float>
					i_vRed
			,	Simd<float>
					i_vGreen
			,	Simd<float>
					i_vBlue
			,	Simd<float>
					i_vAlpha
			,	Simd<float>
					i_vLateral
			,	Simd<float>
					i_vLongitudinal
			,	Simd<float>
					i_vVertical
			,	Simd<float>
					i_vHeight
			,	Simd<float>
					i_vWidth
			,	Simd<float>
					i_vDepth
			)	&
			noexcept
		{
			m_rView
			.	set<0uz>
				(	i_vRed
				)
			;
			m_rView
			.	set<1uz>
				(	i_vGreen
				)
			;
			m_rView
			.	set<2uz>
				(	i_vBlue
				)
			;
			m_rView
			.	set<3uz>
				(	i_vAlpha
				)
			;
			m_rView
			.	set<4uz>
				(	i_vLateral
				)
			;
			m_rView
			.	set<5uz>
				(	i_vLongitudinal
				)
			;
			m_rView
			.	set<6uz>
				(	i_vVertical
				)
			;
			m_rView
			.	set<7uz>
				(	i_vHeight
				)
			;
			m_rView
			.	set<8uz>
				(	i_vWidth
				)
			;
			m_rView
			.	set<9uz>
				(	i_vDepth
				)
			;
			m_rView
			.	set<10uz>
				(	i_vType
				)
			;
				m_rView
				.	m_vIndex
			+=	sizeof(::std::uint64_t)
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
			(	// FIXME operator % not working?
				FixedSimd<unsigned char, 8uz>
				(	[	vType
					]	(	::std::size_t
								i_vIndex
						)
					{	return
							vType
							[	i_vIndex
							]
						%	13
						;
					}
				)
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
			->	Simd<float>
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
