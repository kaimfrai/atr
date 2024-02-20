module;

#include <immintrin.h>

export module Meta.Auto.Simd.Float;

export import Meta.Auto.Simd.Tag;
import Meta.Auto.Simd.Int32;

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
		=	MaskedSimd
			<	float
					[	8uz
					]
			>
		;

		__m256
			m_vRaw
		;

		[[nodiscard]]
		auto constexpr inline
		(	operator=
		)	(	MaskedType
					i_vValue
			)	const&
			noexcept
		->	Auto
		{	return
			{	.	m_vRaw
				=	_mm256_blendv_ps
					(	m_vRaw
					,	i_vValue
						.	m_vRaw
					,	i_vValue
						.	m_vMask
					)
			};
		}

		auto constexpr inline
		(	operator=
		)	(	MaskedType
					i_vValue
			)	&
			noexcept
		->	Auto&
		{	return
			*	this
			=	(	auto
					(*	this
					)
				=	i_vValue
				)
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
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
		=	Simd
			<	float
					[	8uz
					]
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

		[[nodiscard]]
		auto constexpr inline
		(	operator=
		)	(	MaskedSimd
				<	float const
					(&)	[	8uz
						]
				>	i_rRight
			)	const
			noexcept
		->	value_type
		{	return
				static_cast<value_type>
				(	*	this
				)
			=	static_cast<decltype(i_rRight)::value_type>
				(	i_rRight
				)
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	SimdMask
				<	float
						[	8uz
						]
				>	i_vMask
			)	const
			noexcept
		->	MaskedSimd<float const(&)[8uz]>
		{	return
			{	.	m_aData
				=	m_aData
			,	.	m_vMask
				=	i_vMask
					.	m_vRaw
			};
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator*
		)	(	Auto
					i_rLeft
			,	value_type
					i_vRight
			)
			noexcept
		->	value_type
		{	return
				static_cast<value_type>
				(	i_rLeft
				)
			*	i_vRight
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator*
		)	(	value_type
					i_vLeft
			,	Auto
					i_rRight
			)
			noexcept
		->	value_type
		{	return
				i_vLeft
			*	static_cast<value_type>
				(	i_rRight
				)
			;
		}
	};

	template
		<>
	struct
		SimdMask
		<	float
				[	16uz
				]
		>
	{
		__m256
			m_vRaw
			[	2uz
			]
		;
	};

	template
		<>
	struct
		Auto
		<	float
				[	16uz
				]
		,	(SimdTag)
		,	(MaskedTag)
		>
	{
		__m256
			m_vRaw
			[	2uz
			]
		;
		__m256
			m_vMask
			[	2uz
			]
		;
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
		using
			MaskedType
		=	MaskedSimd
			<	float
					[	16uz
					]
			>
		;

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

		[[nodiscard]]
		auto inline
		(	operator[]
		)	(	Simd<::std::int32_t[16uz]>
					i_vIndex
			)	const
			noexcept
		->	Simd<float[16uz]>
		{
			auto const
				vBottom0
			=	_mm256_permutevar8x32_ps
				(	m_vRaw
					[	0uz
					]
				,	i_vIndex
					.	m_vRaw
						[	0uz
						]
				)
			;
			auto const
				vTop0
			=	_mm256_permutevar8x32_ps
				(	m_vRaw
					[	1uz
					]
				,	i_vIndex
					.	m_vRaw
						[	0uz
						]
				)
			;
			auto const
				vBottom1
			=	_mm256_permutevar8x32_ps
				(	m_vRaw
					[	0uz
					]
				,	i_vIndex
					.	m_vRaw
						[	1uz
						]
				)
			;
			auto const
				vTop1
			=	_mm256_permutevar8x32_ps
				(	m_vRaw
					[	1uz
					]
				,	i_vIndex
					.	m_vRaw
						[	1uz
						]
				)
			;

			return
			{	.	m_vRaw
				=	{	_mm256_blendv_ps
						(	vBottom0
						,	vTop0
						,	(	i_vIndex
							<<	28
							)
							.	m_vRaw
								[	0uz
								]
						)
					,	_mm256_blendv_ps
						(	vBottom1
						,	vTop1
						,	(	i_vIndex
							<<	28
							)
							.	m_vRaw
								[	1uz
								]
						)
					}
			};
		}

		auto constexpr inline
		(	operator=
		)	(	MaskedType
					i_vValue
			)	&
			noexcept
		->	Auto&
		{
				m_vRaw
				[	0uz
				]
			=	_mm256_blendv_ps
				(	m_vRaw
					[	0uz
					]
				,	i_vValue
					.	m_vRaw
						[	0uz
						]
				,	i_vValue
					.	m_vMask
						[	0uz
						]
				)
			;
				m_vRaw
				[	1uz
				]
			=	_mm256_blendv_ps
				(	m_vRaw
					[	1uz
					]
				,	i_vValue
					.	m_vRaw
						[	1uz
						]
				,	i_vValue
					.	m_vMask
						[	1uz
						]
				)
			;

			return
			*	this
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	where
		)	(	SimdMask<float[16uz]>
					i_vMask
			)	const
			noexcept
		->	MaskedType
		{	return
			{	.	m_vRaw
				=	{	m_vRaw
						[	0uz
						]
					,	m_vRaw
						[	1uz
						]
					}
			,	.	m_vMask
				=	{	i_vMask
						.	m_vRaw
							[	0uz
							]
					,	i_vMask
						.	m_vRaw
							[	1uz
							]
					}
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
				=	{	_mm256_mul_ps
						(	i_vLeft
							.	m_vRaw
								[	0uz
								]
						,	i_vRight
							.	m_vRaw
								[	0uz
								]
						)
					,	_mm256_mul_ps
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
	};

	template
		<>
	struct
		Auto
		<	float
			(&)	[	16uz
				]
		,	(SimdTag)
		>
	{
		using
			value_type
		=	Simd
			<	float
					[	16uz
					]
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
				=	{	_mm256_load_ps
						(	m_aData
						)
					,	_mm256_load_ps
						(		m_aData
							+	8uz
						)
					}
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
					[	0uz
					]
			);
			_mm256_store_ps
			(		m_aData
				+	8uz
			,	i_vValue
				.	m_vRaw
					[	1uz
					]
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
			(&)	[	16uz
				]
		,	(SimdTag)
		>
	{
		using
			value_type
		=	Simd
			<	float
					[	16uz
					]
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
				=	{	_mm256_load_ps
						(	m_aData
						)
					,	_mm256_load_ps
						(		m_aData
							+	8uz
						)
					}
			};
		}
	};

	template
		<>
	struct
		Auto
		<	float const
			(&)	[	16uz
				]
		,	(SimdTag)
		,	(MaskedTag)
		>
	{
		using
			value_type
		=	MaskedSimd
			<	float
					[	16uz
					]
			>
		;

		float const
		*	m_aData
		;

		__m256
			m_vMask
			[	2uz
			]
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
				=	{	_mm256_maskload_ps
						(	m_aData
						,	m_vMask
							[	0uz
							]
						)
					,	_mm256_maskload_ps
						(		m_aData
							+	8uz
						,	m_vMask
							[	1uz
							]
						)
					}
			,	.	m_vMask
				=	{	m_vMask
						[	0uz
						]
					,	m_vMask
						[	1uz
						]
					}
			};
		}
	};
}
