export module Meta.Auto.Simd.Tag;

export import Meta.Auto.Var;
import Meta.IndexPack;
import Meta.Size;
import std;

using ::Meta::IndexPack;

export namespace
	Meta::Auto
{
	struct
		SimdTag
	{};

	template
		<	typename
				t_tElement
		>
	using
		Simd
	=	Var
		<	t_tElement
		,	SimdTag
		>
	;

	template
		<	typename
				t_tTarget
		>
	struct
		SimdFillFunction
	{
		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	::std::remove_extent_t<t_tTarget>
					i_vSource
			)
			noexcept
		->	Simd<t_tTarget>
		{
			auto const
			&	[	...
					rpDublicate
				]
			=	IndexPack
				<	::std::extent_v
					<	t_tTarget
					>
				>
			;
			return
			{	.	m_vRaw
				{	(	(void)rpDublicate
					,	i_vSource
					)
					...
				}
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

	struct
		MaskedTag
	{};

	template
		<	typename
				t_tElement
		>
	using
		MaskedSimd
	=	Var
		<	t_tElement
		,	SimdTag
		,	MaskedTag
		>
	;

	template
		<	typename
				t_tElement
		>
	[[nodiscard]]
	auto constexpr inline
	(	Unmask
	)	(	MaskedSimd<t_tElement>
				i_vMasked
		)
		noexcept
	->	Simd<t_tElement>
	{	return
		{	.	m_vRaw
			=	i_vMasked
				.	m_vRaw
		};
	}

	template
		<	USize
				t_vSize
		>
	using
		SimdMask
		[[clang::ext_vector_type(t_vSize)]]
	=	bool
	;

	template
		<	typename
				t_tElement
		,	USize
				t_vSize
		>
	struct
		Var
		<	t_tElement
				[	t_vSize
				]
		,	SimdTag
		,	MaskedTag
		>
	{
		t_tElement
			m_vRaw
			[[clang::ext_vector_type(t_vSize)]]
		;
		SimdMask<t_vSize>
			m_vMask
		;
	};

	template
		<	typename
				t_tElement
		,	USize
				t_vSize
		>
	struct
		Var
		<	t_tElement const
			(&)	[	t_vSize
				]
		,	SimdTag
		,	MaskedTag
		>
	{
		using
			value_type
		=	MaskedSimd
			<	t_tElement
					[	t_vSize
					]
			>
		;

		t_tElement const
		*	m_aData
		;

		SimdMask<t_vSize>
			m_vMask
		;

		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator
			value_type
		)	()	const
			noexcept
		{
			auto const
			&	[	...
					rpIndex
				]
			=	IndexPack
				<	t_vSize
				>
			;
			auto const
				aAlignedData
			=	::std::assume_aligned
				<	t_vSize
				*	alignof(t_tElement)
				>(	m_aData
				)
			;
			return
			{	.	m_vRaw
				{	m_vMask
				?	decltype(value_type::m_vRaw)
					{	aAlignedData
						[	rpIndex
						]
						...
					}
				:	decltype(value_type::m_vRaw)
					{}
				}
			,	.	m_vMask
				=	m_vMask
			};
		}
	};

	template
		<	typename
				t_tElement
		,	USize
				t_vSize
		>
	struct
		Var
		<	t_tElement
				[	t_vSize
				]
		,	SimdTag
		>
	{
		using
			ElementType
		=	t_tElement
		;

		using
			MaskedType
		=	MaskedSimd
			<	t_tElement
					[	t_vSize
					]
			>
		;

		t_tElement
			m_vRaw
			[[clang::ext_vector_type(t_vSize)]]
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
				=	i_vValue
					.	m_vMask
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
		)	(	USize
					i_vIndex
			)	const
			noexcept
		->	t_tElement
		{	return
				m_vRaw
				[	i_vIndex
				]
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	SimdMask<t_vSize>
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
		)	(	Simd<int[t_vSelectSize]>
					i_vIndex
			)	const
			noexcept
		->	Simd<t_tElement[t_vSelectSize]>
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

		auto friend constexpr inline
		(	operator+=
		)	(	Var
				&	i_rLeft
			,	t_tElement
					i_vRight
			)
			noexcept
		->	Var&
		{	return
				i_rLeft
			+=	SimdFill<t_tElement[t_vSize]>
				(	i_vRight
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
			{	i_vLeft
				.	m_vRaw
			*	i_vRight
				.	m_vRaw
			};
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator*
		)	(	Var
					i_vLeft
			,	t_tElement
					i_vRight
			)
			noexcept
		->	Var
		{	return
				i_vLeft
			*	SimdFill<t_tElement[t_vSize]>
				(	i_vRight
				)
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator%
		)	(	Var
					i_vLeft
			,	t_tElement
					i_vRight
			)
			noexcept
		->	Var
		{
			auto const
			&	[	...
					rpElements
				]
			=	i_vLeft
				.	m_vRaw
			;
			return
			Var
			{	.	m_vRaw
				{	static_cast<t_tElement>
					(	rpElements
					%	i_vRight
					)
					...
				}
			};
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator>>
		)	(	Var
					i_vLeft
			,	int
					i_vRight
			)
			noexcept
		->	Var
		{	return
			{	i_vLeft
				.	m_vRaw
			>>	i_vRight
			};
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator<<
		)	(	Var
					i_vLeft
			,	int
					i_vRight
			)
			noexcept
		->	Var
		{	return
			{	i_vLeft
				.	m_vRaw
			<<	i_vRight
			};
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator<<
		)	(	Var
					i_vLeft
			,	Simd<int[t_vSize]>
					i_vRight
			)
			noexcept
		->	Var
		{	return
			{	i_vLeft
				.	m_vRaw
			<<	i_vRight
				.	m_vRaw
			};
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator xor
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
			xor	i_vRight
				.	m_vRaw
			};
		}

		auto friend constexpr inline
		(	operator^=
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
				xor	i_vRight
				)
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	rotl
		)	(	Var
					i_vLeft
			,	int
					i_vRight
			)
			noexcept
		->	Var
		{
			auto const
			&	[	...
					rpElement
				]
			=	i_vLeft
				.	m_vRaw
			;
			return
			{	.	m_vRaw
				{	::std::rotl
					(	rpElement
					,	i_vRight
					)
					...
				}
			};
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	reduce
		)	(	Var
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

		template
			<	int
					t_vShift
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	ElementShiftRight
		)	(	Var
					i_vValue
			)
			noexcept
		->	Var
		{
			auto const
			&	[	...
					rpElement
				]
			=	i_vValue
				.	m_vRaw
			;
			auto const
			&	[	...
					rpBackIndex
				]
			=	IndexPack
				<	t_vSize
				-	t_vShift
				>
			;
			return
			{	.	m_vRaw
				{	rpElement
				...	[	rpBackIndex
					+	t_vShift
					]
					...
				}
			};
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	HighestBit
		)	(	Var
					i_vSource
			)
			noexcept
		->	SimdMask<t_vSize>
		{
			auto const
			&	[	...
					rpElement
				]
			=	i_vSource
				.	m_vRaw
			;
			auto static constexpr
				vBitWidth
			=	::std::numeric_limits<t_tElement>
				::	digits
			+	::std::numeric_limits<t_tElement>
				::	is_signed
			;
			return
			{	static_cast<bool>
				(	(	rpElement
					>>	(	vBitWidth
						-	1
						)
					)
				)
				...
			};
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator==
		)	(	Var
					i_vLeft
			,	Var
					i_vRight
			)
			noexcept
		->	SimdMask<t_vSize>
		{	return
			HighestBit
			(	Simd<int[t_vSize]>
				{	i_vLeft
					.	m_vRaw
				==	i_vRight
					.	m_vRaw
				}
			);
		}
	};

	template
		<	typename
				t_tElement
		,	USize
				t_vSize
		>
	struct
		Var
		<	t_tElement
			(&)	[	t_vSize
				]
		,	SimdTag
		>
	{
		using
			value_type
		=	Var
			<	::std::remove_cv_t<t_tElement>
					[	t_vSize
					]
			,	SimdTag
			>
		;

		t_tElement
		*	m_aData
		;

		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator
			value_type
		)	()	const
			noexcept
		{
			auto const
			&	[	...
					rpIndex
				]
			=	IndexPack
				<	t_vSize
				>
			;
			auto const
				aAlignedData
			=	::std::assume_aligned
				<	t_vSize
				*	alignof(t_tElement)
				>(	m_aData
				)
			;
			return
			{	.	m_vRaw
				{	aAlignedData
					[	rpIndex
					]
					...
				}
			};
		}

		auto constexpr inline
		(	operator=
		)	(	value_type
					i_vValue
			)	const&
			noexcept
		->	Var const&
		{
			auto const
			&	[	...
					rpIndex
				]
			=	IndexPack
				<	t_vSize
				>
			;
			auto const
				aAlignedData
			=	::std::assume_aligned
				<	t_vSize
				*	alignof(t_tElement)
				>(	m_aData
				)
			;
			(	...
			,	(	aAlignedData
					[	rpIndex
					]
				=	i_vValue
					[	rpIndex
					]
				)
			);

			return
			*	this
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator=
		)	(	MaskedSimd
				<	t_tElement
					(&)	[	t_vSize
						]
				>	i_rRight
			)	const
			noexcept
		->	value_type
		requires
			::std::is_const_v<t_tElement>
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
		)	(	SimdMask<t_vSize>
					i_vMask
			)	const
			noexcept
		->	MaskedSimd<t_tElement(&)[t_vSize]>
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
}
