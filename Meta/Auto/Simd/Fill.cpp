module;

#include <immintrin.h>

export module Meta.Auto.Simd.Fill;

import Meta.Auto.Simd.Float;
import Meta.Auto.Simd.UInt32;
import Meta.Auto.Simd.UInt8;

import Std;

export namespace
	Meta
{
	template
		<	typename
				t_tTarget
		>
	struct
		SimdFillFunction
	{};

	template
		<>
	struct
		SimdFillFunction
		<	float
				[	8uz
				]
		>
	{
		[[nodiscard]]
		auto static inline
		(	operator()
		)	(	float
					i_vSource
			)
			noexcept
		->	Simd<float[8uz]>
		{
			return
			{	.	m_vRaw
				=	_mm256_broadcast_ss
					(	&	i_vSource
					)
			};
		}
	};

	template
		<>
	struct
		SimdFillFunction
		<	::std::int32_t
				[	8uz
				]
		>
	{
		[[nodiscard]]
		auto static inline
		(	operator()
		)	(	::std::int32_t
					i_vSource
			)
			noexcept
		->	Simd<::std::int32_t[8uz]>
		{
			::std::int32_t
				vSource
				[	4uz
				]
			{	i_vSource
			};

			return
			{	.	m_vRaw
				=	_mm256_broadcastd_epi32
					(	::std::bit_cast<__m128i>
						(	vSource
						)
					)
			};
		}
	};

	template
		<>
	struct
		SimdFillFunction
		<	::std::uint32_t
				[	8uz
				]
		>
	{
		[[nodiscard]]
		auto static inline
		(	operator()
		)	(	::std::uint32_t
					i_vSource
			)
			noexcept
		->	Simd<::std::uint32_t[8uz]>
		{
			::std::uint32_t
				vSource
				[	4uz
				]
			{	i_vSource
			};

			return
			{	.	m_vRaw
				=	_mm256_broadcastd_epi32
					(	::std::bit_cast<__m128i>
						(	vSource
						)
					)
			};
		}
	};

	template
		<	typename
				t_tElement
		>
	SimdFillFunction<t_tElement> constexpr inline
		SimdFill
	{};
}
