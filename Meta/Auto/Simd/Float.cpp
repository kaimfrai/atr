module;

#include <immintrin.h>

export module Meta.Auto.Simd.Float;

export import Meta.Auto.Simd.Int32;
export import Meta.Auto.Simd.Tag;

import Std;

export namespace
	Meta
{
	template
		<>
	struct
		SimdMask
		<	float
				[	8uz
				]
		>
	{
		__m256
			m_vRaw
		;
	};

	template
		<>
	struct
		Auto
		<	float
				[	8uz
				]
		,	(SimdTag)
		,	(MaskedTag)
		>
	{
		__m256
			m_vRaw
		;
		__m256
			m_vMask
		;
	};

	template
		<>
	struct
		Auto
		<	float
				[	8uz
				]
		,	(SimdTag)
		>
	{
		using
			MaskedType
		=	Auto
			<	float
					[	8uz
					]
			,	(SimdTag)
			,	(MaskedTag)
			>
		;

		__m256
			m_vRaw
		;

		auto constexpr inline
		(	operator=
		)	(	MaskedType
					i_vValue
			)	&
			noexcept
		->	Auto&
		{
				m_vRaw
			=	_mm256_blendv_ps
				(	m_vRaw
				,	i_vValue
					.	m_vRaw
				,	i_vValue
					.	m_vMask
				)
			;

			return
			*	this
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	where
		)	(	SimdMask<float[8uz]>
					i_vMask
			)	const
			noexcept
		->	MaskedType
		{	return
			{	.	m_vRaw
				=	m_vRaw
			,	.	m_vMask
				=	i_vMask
					.	m_vRaw
			};
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator*
		)	(	Auto
					i_vLeft
			,	Auto
					i_vRight
			)
			noexcept
		->	Auto
		{	return
			{	.	m_vRaw
				=	_mm256_mul_ps
					(	i_vLeft
						.	m_vRaw
					,	i_vRight
						.	m_vRaw
					)
			};
		}
	};

	template
		<>
	struct
		Auto
		<	float
				[	16uz
				]
		,	(SimdTag)
		>
	{
		__m256
			m_vRaw
			[	2uz
			]
		;

		[[nodiscard]]
		auto inline
		(	operator[]
		)	(	Simd<::std::int32_t[8uz]>
					i_vIndex
			)	const
			noexcept
		->	Simd<float[8uz]>
		{
			auto const
				vBottom
			=	_mm256_permutevar8x32_ps
				(	m_vRaw
					[	0uz
					]
				,	i_vIndex
					.	m_vRaw
				)
			;
			auto const
				vTop
			=	_mm256_permutevar8x32_ps
				(	m_vRaw
					[	1uz
					]
				,	i_vIndex
					.	m_vRaw
				)
			;

			return
			{	.	m_vRaw
				=	_mm256_blendv_ps
					(	vBottom
					,	vTop
					,	(	i_vIndex
						<<	28
						)
						.	m_vRaw
					)
			};
		}
	};

	template
		<>
	struct
		Auto
		<	float
			(&)	[	8uz
				]
		,	(SimdTag)
		>
	{
		using
			value_type
		=	Auto
			<	float
					[	8uz
					]
			,	(SimdTag)
			>
		;

		float
		*	m_aData
		;

		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator
			value_type
		)	()	const
			noexcept
		{	return
			value_type
			{	.	m_vRaw
				=	_mm256_load_ps
					(	m_aData
					)
			};
		}

		auto constexpr inline
		(	operator=
		)	(	value_type
					i_vValue
			)	const&
			noexcept
		->	Auto const&
		{
			_mm256_store_ps
			(	m_aData
			,	i_vValue
				.	m_vRaw
			);

			return
			*	this
			;
		}
	};

	template
		<>
	struct
		Auto
		<	float const
			(&)	[	8uz
				]
		,	(SimdTag)
		>
	{
		using
			value_type
		=	Auto
			<	float
					[	8uz
					]
			,	(SimdTag)
			>
		;

		float const
		*	m_aData
		;

		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator
			value_type
		)	()	const
			noexcept
		{	return
			value_type
			{	.	m_vRaw
				=	_mm256_load_ps
					(	m_aData
					)
			};
		}
	};

	template
		<>
	struct
		Auto
		<	float const
			(&)	[	8uz
				]
		,	(SimdTag)
		,	(MaskedTag)
		>
	{
		using
			value_type
		=	MaskedSimd
			<	float
					[	8uz
					]
			>
		;

		float const
		*	m_aData
		;

		__m256
			m_vMask
		;

		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator
			value_type
		)	()	const
			noexcept
		{	return
			value_type
			{	.	m_vRaw
				=	_mm256_maskload_ps
					(	m_aData
					,	m_vMask
					)
			,	.	m_vMask
				=	m_vMask
			};
		}
	};
}
