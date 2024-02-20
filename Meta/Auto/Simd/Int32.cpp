module;

#include <immintrin.h>

export module Meta.Auto.Simd.Int32;

import Meta.Auto.Simd.Tag;

import Std;

export namespace
	Meta
{
	template
		<>
	struct
		SimdMask
		<	::std::int32_t
				[	8uz
				]
		>
	{
		__m256i
			m_vRaw
		;
	};

	template
		<>
	struct
		Auto
		<	::std::int32_t
				[	8uz
				]
		,	(SimdTag)
		>
	{
		__m256i
			m_vRaw
		;

		[[nodiscard]]
		auto friend constexpr inline
		(	operator<<
		)	(	Auto
					i_vLeft
			,	Auto
					i_vRight
			)
			noexcept
		->	Auto
		{	return
			{	.	m_vRaw
				=	_mm256_sllv_epi32
					(	i_vLeft
						.	m_vRaw
					,	i_vRight
						.	m_vRaw
					)
			};
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator<<
		)	(	Auto
					i_vLeft
			,	int
					i_vRight
			)
			noexcept
		->	Auto
		{	return
			{	.	m_vRaw
				=	_mm256_slli_epi32
					(	i_vLeft
						.	m_vRaw
					,	i_vRight
					)
			};
		}
	};

	template
		<>
	struct
		SimdMask
		<	::std::int32_t
				[	16uz
				]
		>
	{
		__m256i
			m_vRaw
			[	2uz
			]
		;
	};

	template
		<>
	struct
		Auto
		<	::std::int32_t
				[	16uz
				]
		,	(SimdTag)
		>
	{
		__m256i
			m_vRaw
			[	2uz
			]
		;

		[[nodiscard]]
		auto friend constexpr inline
		(	operator<<
		)	(	Auto
					i_vLeft
			,	Auto
					i_vRight
			)
			noexcept
		->	Auto
		{	return
			{	.	m_vRaw
				=	{	_mm256_sllv_epi32
						(	i_vLeft
							.	m_vRaw
								[	0uz
								]
						,	i_vRight
							.	m_vRaw
								[	0uz
								]
						)
					,	_mm256_sllv_epi32
						(	i_vLeft
							.	m_vRaw
								[	1uz
								]
						,	i_vRight
							.	m_vRaw
								[	1uz
								]
						)
					}
			};
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator<<
		)	(	Auto
					i_vLeft
			,	int
					i_vRight
			)
			noexcept
		->	Auto
		{	return
			{	.	m_vRaw
				=	{	_mm256_slli_epi32
						(	i_vLeft
							.	m_vRaw
								[	0uz
								]
						,	i_vRight
						)
					,	_mm256_slli_epi32
						(	i_vLeft
							.	m_vRaw
								[	1uz
								]
						,	i_vRight
						)
					}
			};
		}
	};
}
