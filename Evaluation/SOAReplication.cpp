import Evaluation.Dependency.Fraction;
import Evaluation.Dependency.PiFraction;
import Evaluation.Dependency.PseudoRandomSequence;
import Evaluation.Dependency.RandomAccessIteratorBase;
import Evaluation.Dependency.TransformReduce;
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
		View32<float const>
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
		Body3DValue
	{
		::std::experimental::fixed_size_simd<float, sizeof(::std::uint64_t)>
			m_vData
			[	sizeof(Body3D)
			/	sizeof(float)
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
					=	::std::experimental::fixed_size_simd<float, sizeof(::std::uint64_t)>
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
		View32<float const>
			m_vView32
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
			.	m_vView32
			.	m_vIndex
			+=	static_cast<Body3DIterator::difference_type>
				(	::std::experimental::fixed_size_simd<float, sizeof(::std::uint64_t)>
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
					.	m_vView32
					.	m_vIndex
				-	i_aRight
					.	m_vView32
					.	m_vIndex
				)
			/	static_cast<Body3DIterator::difference_type>
				(	::std::experimental::fixed_size_simd<float, sizeof(::std::uint64_t)>
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
				.	m_vView32
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
				.	m_vView32
				.	m_vIndex
			==	i_aRight
				.	m_vView32
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
				.	m_vView32
				.	m_vIndex
			<=>	i_aRight
				.	m_vView32
				.	m_vIndex
			;
		}
	};

	struct
		VolumeComputer
	{
		::std::experimental::fixed_size_simd<float, sizeof(::std::uint64_t)>
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
				::std::experimental::fixed_size_simd<float, sizeof(::std::uint64_t)>
					[	static_cast<::std::size_t>
						(	ByteSize
							(	i_vCapacity
							*	BodySize
							).	get
								()
						)
					/	sizeof(::std::experimental::fixed_size_simd<float, sizeof(::std::uint64_t)>)
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

		auto inline
		(	emplace_back
		)	(	::std::experimental::fixed_size_simd<unsigned char, sizeof(::std::uint64_t)>
					i_vType
			,	::std::experimental::fixed_size_simd<float, sizeof(::std::uint64_t)>
					i_vRed
			,	::std::experimental::fixed_size_simd<float, sizeof(::std::uint64_t)>
					i_vGreen
			,	::std::experimental::fixed_size_simd<float, sizeof(::std::uint64_t)>
					i_vBlue
			,	::std::experimental::fixed_size_simd<float, sizeof(::std::uint64_t)>
					i_vAlpha
			,	::std::experimental::fixed_size_simd<float, sizeof(::std::uint64_t)>
					i_vLateral
			,	::std::experimental::fixed_size_simd<float, sizeof(::std::uint64_t)>
					i_vLongitudinal
			,	::std::experimental::fixed_size_simd<float, sizeof(::std::uint64_t)>
					i_vVertical
			,	::std::experimental::fixed_size_simd<float, sizeof(::std::uint64_t)>
					i_vHeight
			,	::std::experimental::fixed_size_simd<float, sizeof(::std::uint64_t)>
					i_vWidth
			,	::std::experimental::fixed_size_simd<float, sizeof(::std::uint64_t)>
					i_vDepth
			)	&
			noexcept
		{
			auto const
				vCount
			=	::std::exchange
				(	m_vCount
				,	m_vCount
				+	sizeof(::std::uint64_t)
				)
			;
			auto const
				aBuffer
			=	m_aBuffer
			;

			View32<float>
				vView32
			{	.	m_aBuffer
				=	aBuffer
			,	.	m_vCapacity
				=	m_vCapacity
			,	.	m_vIndex
				=	vCount
			};

			::std::experimental::fixed_size_simd<float, sizeof(::std::uint64_t)> const
				vWidth
			{	[	i_vType
				,	i_vHeight
				,	i_vWidth
				]	(	::std::size_t
							i_vIndex
					)
				{
					auto const
						vType
					=	static_cast<ETag>
						(	i_vType
							[	i_vIndex
							]
						)
					;
					return
						(vType == ETag::Circle)		* i_vHeight[i_vIndex]
					+	(vType == ETag::Ellipse)	* i_vWidth[i_vIndex]
					+	(vType == ETag::Rectangle)	* i_vWidth[i_vIndex]
					+	(vType == ETag::Square)		* i_vHeight[i_vIndex]
					+	(vType == ETag::Triangle)	* i_vWidth[i_vIndex]
					+	(vType == ETag::Cube)		* i_vHeight[i_vIndex]
					+	(vType == ETag::Cuboid)		* i_vWidth[i_vIndex]
					+	(vType == ETag::Pyramid)	* i_vWidth[i_vIndex]
					+	(vType == ETag::Sphere)		* i_vHeight[i_vIndex]
					+	(vType == ETag::Cylinder)	* i_vHeight[i_vIndex]
					+	(vType == ETag::Cone)		* i_vHeight[i_vIndex]
					+	(vType == ETag::Ellipsoid)	* i_vWidth[i_vIndex]
					+	(vType == ETag::Head)		* i_vHeight[i_vIndex]
					;
				}
			};

			::std::experimental::fixed_size_simd<float, sizeof(::std::uint64_t)> const
				vDepth
			{	[	i_vType
				,	i_vHeight
				,	i_vDepth
				]	(	::std::size_t
							i_vIndex
					)
				{
					auto const
						vType
					=	static_cast<ETag>
						(	i_vType
							[	i_vIndex
							]
						)
					;
					return
						(vType == ETag::Circle)		* 1.0f
					+	(vType == ETag::Ellipse)	* 1.0f
					+	(vType == ETag::Rectangle)	* 1.0f
					+	(vType == ETag::Square)		* 1.0f
					+	(vType == ETag::Triangle)	* 1.0f
					+	(vType == ETag::Cube)		* i_vHeight[i_vIndex]
					+	(vType == ETag::Cuboid)		* i_vDepth[i_vIndex]
					+	(vType == ETag::Pyramid)	* i_vDepth[i_vIndex]
					+	(vType == ETag::Sphere)		* i_vHeight[i_vIndex]
					+	(vType == ETag::Cylinder)	* i_vDepth[i_vIndex]
					+	(vType == ETag::Cone)		* i_vDepth[i_vIndex]
					+	(vType == ETag::Ellipsoid)	* i_vDepth[i_vIndex]
					+	(vType == ETag::Head)		* i_vHeight[i_vIndex]
					;
				}
			};

			::std::experimental::fixed_size_simd<float, sizeof(::std::uint64_t)> const
				vMultiplier
			{	[	i_vType
				]	(	::std::size_t
							i_vIndex
					)
				{
					auto const
						vType
					=	static_cast<ETag>
						(	i_vType
							[	i_vIndex
							]
						)
					;
					return
						(vType == ETag::Circle)		* PiFraction<1z, 4z>{}
					+	(vType == ETag::Ellipse)	* PiFraction<1z, 4z>{}
					+	(vType == ETag::Rectangle)	* 1.0f
					+	(vType == ETag::Square)		* 1.0f
					+	(vType == ETag::Triangle)	* Fraction<1z, 2z>{}
					+	(vType == ETag::Cube)		* 1.0f
					+	(vType == ETag::Cuboid)		* 1.0f
					+	(vType == ETag::Pyramid)	* Fraction<1z, 3z>{}
					+	(vType == ETag::Sphere)		* PiFraction<1z, 6z>{}
					+	(vType == ETag::Cylinder)	* PiFraction<1z, 4z>{}
					+	(vType == ETag::Cone)		* PiFraction<1z, 12z>{}
					+	(vType == ETag::Ellipsoid)	* PiFraction<1z, 6z>{}
					+	(vType == ETag::Head)		* PiFraction<1z, 6z>{}
					;
				}
			};

			vView32
				[0z, i_vRed]
				[1z, i_vGreen]
				[2z, i_vBlue]
				[3z, i_vAlpha]
				[4z, i_vLateral]
				[5z, i_vLongitudinal]
				[6z, i_vVertical]
				[7z, i_vHeight]
				[8z, vWidth]
				[9z, vDepth]
				[10z, vMultiplier]
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	begin
		)	()	const&
			noexcept
		->	Body3DIterator
		{	return
			{	.	m_vView32
				=	View32<float const>
					{	.	m_aBuffer
						=	m_aBuffer
					,	.	m_vCapacity
						=	m_vCapacity
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
			{	.	m_vView32
				=	View32<float const>
					{	.	m_aBuffer
						=	m_aBuffer
					,	.	m_vCapacity
						=	m_vCapacity
					,	.	m_vIndex
						=	m_vCount
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
				::std::experimental::fixed_size_simd<unsigned char, sizeof(::std::uint64_t)>
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
			->	::std::experimental::fixed_size_simd<float, sizeof(::std::uint64_t)>
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
