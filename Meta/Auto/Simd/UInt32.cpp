module;

#include <immintrin.h>

export module Meta.Auto.Simd.UInt32;

export import Meta.Auto.Primary;
export import Meta.Auto.Simd.Tag;

import Std;

export namespace
	Meta
{
	template
		<>
	struct
		SimdMask
		<	::std::uint32_t
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
		<	::std::uint32_t
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
	};
}