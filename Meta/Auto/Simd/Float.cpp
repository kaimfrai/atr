export module Meta.Auto.Simd.Float;

export import Meta.Auto.Simd.Tag;
import Meta.Auto.Simd.Int32;

import Std;

using
	SimdOp
=	::Std::SimdOp
	<	float
	>
;

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
		,	SimdTag
		,	MaskedTag
		>
	{
		__m256
			m_vRaw
		;
		__m256
			m_vMask
		;

		[[nodiscard]]
		auto static constexpr inline
		(	LoadAligned
		)	(	float const
				*	i_aData
			,	SimdMask<float[8uz]>
					i_vMask
			)
			noexcept
		->	Auto
		{	return
			{	.	m_vRaw
				=	::SimdOp::MaskedLoad<alignof(__m256)>
					(	i_aData
					,	i_vMask
						.	m_vRaw
					)
			,	.	m_vMask
				=	i_vMask
					.	m_vRaw
			};
		}

		auto constexpr inline
		(	StoreAligned
		)	(	float
				*	o_aData
			)	const
			noexcept
		->	void
		{	return
			::SimdOp::Store<alignof(__m256)>
			(	o_aData
			,	m_vRaw
			);
		}
	};

	template
		<>
	struct
		Auto
		<	float
				[	8uz
				]
		,	SimdTag
		>
	{
		using
			ElementType
		=	float
		;

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
				=	::SimdOp::Blend
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
		(	operator+
		)	(	Auto
					i_vLeft
			,	Auto
					i_vRight
			)
			noexcept
		->	Auto
		{	return
			{	.	m_vRaw
				=	::SimdOp::Add
					(	i_vLeft
						.	m_vRaw
					,	i_vRight
						.	m_vRaw
					)
			};
		}

		auto friend constexpr inline
		(	operator+=
		)	(	Auto
				&	i_rLeft
			,	Auto
					i_vRight
			)
			noexcept
		->	Auto&
		{	return
				i_rLeft
			=	(	i_rLeft
				+	i_vRight
				)
			;
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
				=	::SimdOp::Multiply
					(	i_vLeft
						.	m_vRaw
					,	i_vRight
						.	m_vRaw
					)
			};
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	reduce
		)	(	Auto
					i_vArgument
			)
			noexcept
		->	float
		{	return
			::SimdOp::Reduce
			(	i_vArgument
				.	m_vRaw
			);
		}

		[[nodiscard]]
		auto static constexpr inline
		(	LoadAligned
		)	(	float const
				*	i_aData
			)
			noexcept
		->	Auto
		{	return
			{	.	m_vRaw
				=	::SimdOp::Load<alignof(__m256)>
					(	i_aData
					,	::Std::SimdTarget
						<	float[8uz]
						>
					)
			};
		}

		[[nodiscard]]
		auto static constexpr inline
		(	LoadUnaligned
		)	(	float const
				*	i_aData
			)
			noexcept
		->	Auto
		{	return
			{	.	m_vRaw
				=	::SimdOp::Load<alignof(float)>
					(	i_aData
					,	::Std::SimdTarget
						<	float[8uz]
						>
					)
			};
		}

		auto constexpr inline
		(	StoreAligned
		)	(	float
				*	o_aData
			)	const
			noexcept
		->	void
		{	return
			::SimdOp::Store<alignof(__m256)>
			(	o_aData
			,	m_vRaw
			);
		}
	};

	template
		<>
	struct
		Auto
		<	float
			(&)	[	8uz
				]
		,	SimdTag
		>
	{
		using
			value_type
		=	Auto
			<	float
					[	8uz
					]
			,	SimdTag
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
			::	LoadAligned
				(	m_aData
				)
			;
		}

		auto constexpr inline
		(	operator=
		)	(	value_type
					i_vValue
			)	const&
			noexcept
		->	Auto const&
		{
			i_vValue
			.	StoreAligned
				(	m_aData
				)
			;

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
		,	SimdTag
		,	MaskedTag
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
			::	LoadAligned
				(	m_aData
				,	SimdMask<float[8uz]>
					{	.	m_vRaw
						=	m_vMask
					}
				)
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
		,	SimdTag
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
			::	LoadAligned
				(	m_aData
				)
			;
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
		,	SimdTag
		,	MaskedTag
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

		[[nodiscard]]
		auto static constexpr inline
		(	LoadAligned
		)	(	float const
				*	i_aData
			,	SimdMask<float[16uz]>
					i_vMask
			)
			noexcept
		->	Auto
		{	return
			{	.	m_vRaw
				=	{	::SimdOp::MaskedLoad<alignof(__m256)>
						(	i_aData
						,	i_vMask
							.	m_vRaw
								[	0uz
								]
						,	0z
						)
					,	::SimdOp::MaskedLoad<alignof(__m256)>
						(	i_aData
						,	i_vMask
							.	m_vRaw
								[	1uz
								]
						,	1z
						)
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
	};

	template
		<>
	struct
		Auto
		<	float
				[	16uz
				]
		,	SimdTag
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
		auto constexpr inline
		(	operator[]
		)	(	Simd<::std::int32_t[8uz]>
					i_vIndex
			)	const
			noexcept
		->	Simd<float[8uz]>
		{
			auto const
				vBottom
			=	::SimdOp::Permute
				(	m_vRaw
					[	0uz
					]
				,	i_vIndex
					.	m_vRaw
				)
			;
			auto const
				vTop
			=	::SimdOp::Permute
				(	m_vRaw
					[	1uz
					]
				,	i_vIndex
					.	m_vRaw
				)
			;

			return
			{	.	m_vRaw
				=	::SimdOp::Blend
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
		auto constexpr inline
		(	operator[]
		)	(	Simd<::std::int32_t[16uz]>
					i_vIndex
			)	const
			noexcept
		->	Simd<float[16uz]>
		{
			auto const
				vBottom0
			=	::SimdOp::Permute
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
			=	::SimdOp::Permute
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
			=	::SimdOp::Permute
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
			=	::SimdOp::Permute
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
				=	{	::SimdOp::Blend
						(	vBottom0
						,	vTop0
						,	(	i_vIndex
							<<	28
							)
							.	m_vRaw
								[	0uz
								]
						)
					,	::SimdOp::Blend
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
			=	::SimdOp::Blend
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
			=	::SimdOp::Blend
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
				=	{	::SimdOp::Multiply
						(	i_vLeft
							.	m_vRaw
								[	0uz
								]
						,	i_vRight
							.	m_vRaw
								[	0uz
								]
						)
					,	::SimdOp::Multiply
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
		auto static constexpr inline
		(	LoadAligned
		)	(	float const
				*	i_aData
			)
			noexcept
		->	Auto
		{	return
			{	.	m_vRaw
				=	{	::SimdOp::Load<alignof(__m256)>
						(	i_aData
						,	::Std::SimdTarget
							<	float[8uz]
							>
						,	0z
						)
					,	::SimdOp::Load<alignof(__m256)>
						(	i_aData
						,	::Std::SimdTarget
							<	float[8uz]
							>
						,	1z
						)
					}
			};
		}

		auto constexpr inline
		(	StoreAligned
		)	(	float
				*	o_aData
			)	const
			noexcept
		->	void
		{
			::SimdOp::Store<alignof(__m256)>
			(	o_aData
			,	m_vRaw
				[	0uz
				]
			,	0z
			);
			::SimdOp::Store<alignof(__m256)>
			(	o_aData
			,	m_vRaw
				[	1uz
				]
			,	1z
			);
		}
	};

	template
		<>
	struct
		Auto
		<	float
			(&)	[	16uz
				]
		,	SimdTag
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
			::	LoadAligned
				(	m_aData
				)
			;
		}

		auto constexpr inline
		(	operator=
		)	(	value_type
					i_vValue
			)	const&
			noexcept
		->	Auto const&
		{
			i_vValue
			.	StoreAligned
				(	m_aData
				)
			;

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
		,	SimdTag
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
			::	LoadAligned
				(	m_aData
				)
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
		,	SimdTag
		,	MaskedTag
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
			::	LoadAligned
				(	m_aData
				,	SimdMask<float[16uz]>
					{	.	m_vRaw
						=	{	m_vMask
								[	0uz
								]
							,	m_vMask
								[	1uz
								]
							}
					}
				)
			;
		}
	};
}
