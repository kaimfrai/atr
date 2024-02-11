module;

#include <immintrin.h>

export module Meta.Auto.Simd.Cast;

import Meta.Auto.Simd.Float;
import Meta.Auto.Simd.Int32;
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
		SimdCastFunction
	{};

	template
		<>
	struct
		SimdCastFunction
		<	float
		>
	{
		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	Simd<::std::uint32_t[8uz]>
					i_vSource
			)
			noexcept
		->	Simd<float[8uz]>
		{	return
			{	.	m_vRaw
				=	_mm256_cvtepi32_ps
					(	i_vSource
						.	m_vRaw
					)
			};
		}
	};

	template
		<>
	struct
		SimdCastFunction
		<	::std::int32_t
		>
	{
		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	Simd<::std::uint8_t[8uz]>
					i_vSource
			)
			noexcept
		->	Simd<::std::int32_t[8uz]>
		{
			::std::uint64_t
				vValue
				[	2uz
				]
			{	i_vSource
				.	m_vRaw
			};

			return
			{	.	m_vRaw
				=	_mm256_cvtepi8_epi32
					(	::std::bit_cast<__m128i>
						(	vValue
						)
					)
			};
		}
	};

	template
		<>
	struct
		SimdCastFunction
		<	::std::uint32_t
		>
	{
		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	Simd<::std::uint8_t[8uz]>
					i_vSource
			)
			noexcept
		->	Simd<::std::uint32_t[8uz]>
		{
			::std::uint64_t
				vValue
				[	2uz
				]
			{	i_vSource
				.	m_vRaw
			};

			return
			{	.	m_vRaw
				=	_mm256_cvtepu8_epi32
					(	::std::bit_cast<__m128i>
						(	vValue
						)
					)
			};
		}
	};

	template
		<	typename
				t_tElement
		>
	SimdCastFunction<t_tElement> constexpr inline
		SimdCast
	{};
}
