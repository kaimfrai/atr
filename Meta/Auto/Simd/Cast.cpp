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

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	Simd<::std::uint32_t[16uz]>
					i_vSource
			)
			noexcept
		->	Simd<float[16uz]>
		{	return
			{	.	m_vRaw
				=	{	_mm256_cvtepi32_ps
						(	i_vSource
							.	m_vRaw
								[	0
								]
						)
					,	_mm256_cvtepi32_ps
						(	i_vSource
							.	m_vRaw
								[	1
								]
						)
					}
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

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	Simd<::std::uint8_t const(&)[8uz]>
					i_vSource
			)
			noexcept
		->	Simd<::std::int32_t[8uz]>
		{
			::std::uint8_t
				vValue
				[	16uz
				]
			{};
			auto const
				aData
			=	::std::assume_aligned<8uz>
				(	i_vSource
					.	m_aData
				)
			;
			::std::copy
			(	aData
			,		aData
				+	8uz
			,	vValue
			);

			return
			{	.	m_vRaw
				=	_mm256_cvtepi8_epi32
					(	::std::bit_cast<__m128i>
						(	vValue
						)
					)
			};
		}

		[[nodiscard]]
		auto static inline
		(	operator()
		)	(	Simd<::std::uint8_t[16uz]>
					i_vSource
			)
			noexcept
		->	Simd<::std::int32_t[16uz]>
		{	return
			{	.	m_vRaw
				=	{	_mm256_cvtepi8_epi32
						(	i_vSource
							.	m_vRaw
						)
					,	_mm256_cvtepi8_epi32
						(	_mm_srli_si128
							(	i_vSource
								.	m_vRaw
							,	8
							)
						)
					}
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

		[[nodiscard]]
		auto static inline
		(	operator()
		)	(	Simd<::std::uint8_t[16uz]>
					i_vSource
			)
			noexcept
		->	Simd<::std::uint32_t[16uz]>
		{	return
			{	.	m_vRaw
				=	{	_mm256_cvtepu8_epi32
						(	i_vSource
							.	m_vRaw
						)
					,	_mm256_cvtepu8_epi32
						(	_mm_srli_si128
							(	i_vSource
								.	m_vRaw
							,	8
							)
						)
					}
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
