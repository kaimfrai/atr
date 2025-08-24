export module Meta.Auto.Simd.Float;

export import Meta.Auto.Simd.Tag;
import Meta.Auto.Simd.Int32;
import Meta.IndexPack;
import Meta.Size;

import std;

using ::Meta::IndexPack;

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
		vec<float, 8>
			m_vRaw
		;
		SimdMask<8uz>
			m_vMask
		;

		template
			<	USize
					t_vBatch
			>
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
				{	i_vMask
				?	*::std::bit_cast<vec<float, 8> const*>
					(	i_aData
					)
				:	vec<float, 8>{}
				}
			,	.	m_vMask
				=	i_vMask
			};
		}

		template
			<	USize
					t_vBatch
			>
		auto constexpr inline
		(	StoreAligned
		)	(	float
				*	o_aData
			)	const
			noexcept
		->	void
		{
			auto const
			&	[	...
					rpIndex
				]
			=	IndexPack
				<	8uz
				>
			;
			(	...
			,	(	::std::assume_aligned<t_vBatch * alignof(float)>
					(	o_aData
					)[	rpIndex
					]
				=	m_vRaw
					[	rpIndex
					]
				)
			);
		}
	};

	template
		<	USize
				t_vSize
		>
	struct
		Var
		<	float
				[	t_vSize
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
					[	t_vSize
					]
			>
		;

		vec<float, t_vSize>
			m_vRaw
		;

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
			{	i_vLeft
				.	m_vRaw
			+	i_vRight
				.	m_vRaw
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

		vec<float, 8>
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
				=	::std::bit_cast<vec<bool, 8>>
					(	i_vValue
						.	m_vMask
					)
				?	i_vValue
					.	m_vRaw
				:	m_vRaw
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
				=	i_vLeft
					.	m_vRaw
				+	i_vRight
						.	m_vRaw
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
				=	i_vLeft
					.	m_vRaw
				*	i_vRight
						.	m_vRaw
			};
		}

		template
			<	USize
					t_vBatch
			>
		[[nodiscard]]
		auto static constexpr inline
		(	LoadAligned
		)	(	float const
				*	i_aData
			)
			noexcept
		->	Var
		{
			auto const
			&	[	...
					rpIndex
				]
			=	IndexPack
				<	8uz
				>
			;
			return
			{	.	m_vRaw
				{	::std::assume_aligned<t_vBatch * alignof(float)>
					(	i_aData
					)[	rpIndex
					]
					...
				}
			};
		}

		template
			<	USize
					t_vBatch
			>
		auto constexpr inline
		(	StoreAligned
		)	(	float
				*	o_aData
			)	const
			noexcept
		->	void
		{
			auto const
			&	[	...
					rpIndex
				]
			=	IndexPack
				<	8uz
				>
			;
			(	...
			,	(	::std::assume_aligned<t_vBatch * alignof(float)>
					(	o_aData
					)[	rpIndex
					]
				=	m_vRaw
					[	rpIndex
					]
				)
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
			::	LoadAligned<8uz>
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
			.	template
				StoreAligned<8uz>
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

		SimdMask<8uz>
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
			::	template
				LoadAligned<8uz>
				(	m_aData
				,	m_vMask
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
			::	LoadAligned<8uz>
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
		vec<float, 16>
			m_vRaw
		;
		SimdMask<16uz>
			m_vMask
		;

		template
			<	USize
					t_vBatch
			>
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
				{	i_vMask
				?	*
					::std::bit_cast<vec<float, 16> const*>
					(	i_aData
					)
				:	vec<float, 16>{}
				}
			,	.	m_vMask
				=	i_vMask
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

		vec<float, 16>
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
			};
		}

		template
			<	USize
					t_vSelectSize
			>
		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	Simd<::std::int32_t[t_vSelectSize]>
					i_vIndex
			)	const
			noexcept
		->	Simd<float[t_vSelectSize]>
		{
			auto const
			&	[	...
					rpIndex
				]
			=	i_vIndex
				.	m_vRaw
			;
			return
			{	.	m_vRaw
				{	m_vRaw
					[	rpIndex
					]
					...
				}
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
				=	::std::bit_cast<vec<bool, 16>>
					(	i_vValue
						.	m_vMask
					)
				?	i_vValue
					.	m_vRaw
				:	m_vRaw
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
			=	::std::bit_cast<vec<bool, 16>>
				(	i_vValue
					.	m_vMask
				)
			?	i_vValue
				.	m_vRaw
			:	m_vRaw
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
				=	i_vLeft
					.	m_vRaw
				+	i_vRight
					.	m_vRaw
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
				=	i_vLeft
					.	m_vRaw
				*	i_vRight
					.	m_vRaw
			};
		}

		template
			<	USize
					t_vBatch
			>
		[[nodiscard]]
		auto static constexpr inline
		(	LoadAligned
		)	(	float const
				*	i_aData
			)
			noexcept
		->	Var
		{
			auto const
			&	[	...
					rpIndex
				]
			=	IndexPack
				<	16uz
				>
			;

			return
			{	.	m_vRaw
				{	::std::assume_aligned<t_vBatch * alignof(float)>
					(	i_aData
					)
					[	rpIndex
					]
					...
				}
			};
		}

		template
			<	USize
					t_vBatch
			>
		auto constexpr inline
		(	StoreAligned
		)	(	float
				*	o_aData
			)	const
			noexcept
		->	void
		{
			auto const
			&	[	...
					rpIndex
				]
			=	IndexPack
				<	16uz
				>
			;
			(	...
			,	(	::std::assume_aligned<t_vBatch * alignof(float)>
					(	o_aData
					)[	rpIndex
					]
				=	m_vRaw
					[	rpIndex
					]
				)
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
			::	LoadAligned<16uz>
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
			.	template
				StoreAligned<16uz>
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

		SimdMask<16uz>
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
			::	template
				LoadAligned<16uz>
				(	m_aData
				,	m_vMask
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
			::	LoadAligned<16uz>
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
		<	typename
				t_tElement
		,	USize
				t_vSize
		>
	[[nodiscard]]
	auto constexpr inline
	(	reduce
	)	(	Simd<t_tElement[t_vSize]>
				i_vArgument
		)
		noexcept
	->	t_tElement
	{
		auto const
		&	[	...
				rpElement
			]
		=	i_vArgument
			.	m_vRaw
		;
		if constexpr
			(	sizeof(i_vArgument)
			<=		2uz
				*	sizeof(USize)
			)
		{	return
			(	...
			+	rpElement
			);
		}
		else
		{
			auto static constexpr
				vHalfSize
			=	t_vSize
			/	2uz
			;
			auto const
			&	[	...
					vpIndex
				]
			=	IndexPack
				<	vHalfSize
				>
			;
			return
			reduce
			(	Simd<t_tElement[vHalfSize]>
				{	{	rpElement
					...	[	vpIndex
						]
					...
					}
				}
			+	Simd<t_tElement[vHalfSize]>
				{	{	rpElement
					...	[	vpIndex
						+	vHalfSize
						]
						...
					}
				}
			);
		}
	}
}
