export module Meta.Auto.Simd.Float;

export import Meta.Auto.Simd.Tag;
import Meta.Auto.Simd.Int32;

import std;
import Std;

using
	SimdOp
=	::Std::SimdOp
	<	float
	>
;

export namespace
	Meta::Auto
{
	template
		<>
	struct
		Var
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
		__mmask8
			m_vMask
		;

		[[nodiscard]]
		auto static constexpr inline
		(	LoadAligned
		)	(	float const
				*	i_aData
			,	SimdMask<8uz>
					i_vMask
			)
			noexcept
		->	Var
		{	return
			{	.	m_vRaw
				=	::SimdOp::MaskedLoad
					(	i_vMask
						.	m_vRaw
					,	::Std::AlignedPointer<void const, alignof(__m256)>
						{	i_aData
						}
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
			::SimdOp::Store
			(	::Std::AlignedPointer<void, alignof(__m256)>
				{	o_aData
				}
			,	m_vRaw
			);
		}
	};

	template
		<>
	struct
		Var
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
		->	Var
		{	return
			{	.	m_vRaw
				=	::SimdOp::Blend
					(	i_vValue
						.	m_vMask
					,	m_vRaw
					,	i_vValue
						.	m_vRaw
					)
			};
		}

		auto constexpr inline
		(	operator=
		)	(	MaskedType
					i_vValue
			)	&
			noexcept
		->	Var&
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
		)	(	SimdMask<8uz>
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
		)	(	Var
					i_vLeft
			,	Var
					i_vRight
			)
			noexcept
		->	Var
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
		)	(	Var
				&	i_rLeft
			,	Var
					i_vRight
			)
			noexcept
		->	Var&
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
		)	(	Var
					i_vLeft
			,	Var
					i_vRight
			)
			noexcept
		->	Var
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
		)	(	Var
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
		->	Var
		{	return
			{	.	m_vRaw
				=	::SimdOp::Load
					(	::Std::AlignedPointer<void const, alignof(__m256)>
						{	i_aData
						}
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
		->	Var
		{	return
			{	.	m_vRaw
				=	::SimdOp::Load<alignof(float)>
					(	::Std::AlignedPointer<void const, alignof(float)>
						{	i_aData
						}
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
			::SimdOp::Store
			(	::Std::AlignedPointer<void, alignof(__m256)>
				{	o_aData
				}
			,	m_vRaw
			);
		}
	};

	template
		<>
	struct
		Var
		<	float
			(&)	[	8uz
				]
		,	SimdTag
		>
	{
		using
			value_type
		=	Var
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
		->	Var const&
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
		Var
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

		__mmask8
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
				,	SimdMask<8uz>
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
		Var
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
		)	(	SimdMask<8uz>
					i_vMask
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
		)	(	Var
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
			,	Var
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
		Var
		<	float
				[	16uz
				]
		,	SimdTag
		,	MaskedTag
		>
	{
		__m512
			m_vRaw
		;
		__mmask16
			m_vMask
		;

		[[nodiscard]]
		auto static constexpr inline
		(	LoadAligned
		)	(	float const
				*	i_aData
			,	SimdMask<16uz>
					i_vMask
			)
			noexcept
		->	Var
		{	return
			{	.	m_vRaw
				=	::SimdOp::MaskedLoad
					(	i_vMask
						.	m_vRaw
					,	::Std::AlignedPointer<void const, alignof(__m512)>
						{	i_aData
						}
					)
			,	.	m_vMask
				=	i_vMask
					.	m_vRaw
			};
		}
	};

	template
		<>
	struct
		Var
		<	float
				[	16uz
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
					[	16uz
					]
			>
		;

		__m512
			m_vRaw
		;

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	SimdMask<16uz>
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
		auto constexpr inline
		(	operator[]
		)	(	Simd<::std::int32_t[8uz]>
					i_vIndex
			)	const
			noexcept
		->	Simd<float[8uz]>
		{
			struct M256_2 { __m256 f[2]; };
			auto [vBottomRaw, vTopRaw] = ::std::bit_cast<M256_2>(m_vRaw).f;
			auto const
				vBottom
			=	::SimdOp::Permute
				(	i_vIndex
					.	m_vRaw
				,	vBottomRaw
				)
			;
			auto const
				vTop
			=	::SimdOp::Permute
				(	i_vIndex
					.	m_vRaw
				,	vTopRaw
				)
			;

			return
			{	.	m_vRaw
				=	::SimdOp::Blend
					(	HighestBit
						(	i_vIndex
						<<	28
						)
						.	m_vRaw
					,	vBottom
					,	vTop
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
		{	return
			{	.	m_vRaw
				=	::SimdOp::Permute
					(	i_vIndex
						.	m_vRaw
					,	m_vRaw
					)
			};
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator=
		)	(	MaskedType
					i_vValue
			)	const&
			noexcept
		->	Var
		{	return
			{	.	m_vRaw
				=	::SimdOp::Blend
					(	i_vValue
						.	m_vMask
					,	m_vRaw
					,	i_vValue
						.	m_vRaw
					)
			};
		}

		auto constexpr inline
		(	operator=
		)	(	MaskedType
					i_vValue
			)	&
			noexcept
		->	Var&
		{
				m_vRaw
			=	::SimdOp::Blend
				(	i_vValue
					.	m_vMask
				,	m_vRaw
				,	i_vValue
					.	m_vRaw
				)
			;

			return
			*	this
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	where
		)	(	SimdMask<16uz>
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
		)	(	Var
					i_vLeft
			,	Var
					i_vRight
			)
			noexcept
		->	Var
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
		)	(	Var
				&	i_rLeft
			,	Var
					i_vRight
			)
			noexcept
		->	Var&
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
		)	(	Var
					i_vLeft
			,	Var
					i_vRight
			)
			noexcept
		->	Var
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
		)	(	Var
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
		->	Var
		{	return
			{	.	m_vRaw
				=	::SimdOp::Load
					(	::Std::AlignedPointer<void const, alignof(__m512)>
						{	i_aData
						}
					,	::Std::SimdTarget
						<	float[16uz]
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
		{
			::SimdOp::Store
			(	::Std::AlignedPointer<void, alignof(__m512)>
				{	o_aData
				}
			,	m_vRaw
			);
		}
	};

	template
		<>
	struct
		Var
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
		->	Var const&
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
		Var
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

		__mmask16
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
				,	SimdMask<16uz>
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
		Var
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

		[[nodiscard]]
		auto constexpr inline
		(	operator=
		)	(	MaskedSimd
				<	float const
					(&)	[	16uz
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
		)	(	SimdMask<16uz>
					i_vMask
			)	const
			noexcept
		->	MaskedSimd<float const(&)[16uz]>
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
		)	(	Var
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
			,	Var
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
}
