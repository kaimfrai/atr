export module Meta.Auto.Simd.Array;

export import Meta.Auto.Simd.Tag;

import Meta.Size;

import Std;

export namespace
	Meta::Auto
{
	template
		<	SSize
				t_vBase
		>
	struct
		Multiple
	{
		SSize
			m_vIndex
		;

		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator SSize
		)	()	const
			noexcept
		{	return
				m_vIndex
			*	t_vBase
			;
		}

		auto constexpr inline
		(	operator+=
		)	(	Multiple
					i_vRight
			)
			noexcept
		->	Multiple
		{
			(	m_vIndex
			+=	i_vRight
				.	m_vIndex
			);
			return
			*	this
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator++
		)	()	&
			noexcept
		->	Multiple&
		{	++	m_vIndex
			;
			return
			*	this
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator-
		)	(	Multiple
					i_vLeft
			,	Multiple
					i_vRight
			)
			noexcept
		->	Multiple
		{	return
			{	i_vLeft
				.	m_vIndex
			-	i_vRight
				.	m_vIndex
			};
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator==
		)	(	Multiple
			,	Multiple
			)
		->	bool
		=	default;

		[[nodiscard]]
		auto friend constexpr inline
		(	operator<=>
		)	(	Multiple
			,	Multiple
			)
		->	::std::strong_ordering
		=	default;
	};

	template
		<	typename
				t_tElement
		,	USize
				t_vCount
		>
	struct
		Var
		<	t_tElement
			(&)	[]
				[	t_vCount
				]
		,	SimdTag
		,	MaskedTag
		>
	{
		using
			ElementType
		=	::std::remove_cv_t
			<	t_tElement
			>
		;

		t_tElement
		*	m_aData
		;

		SSize
			m_vCount
		;

		__m256
			m_vMask
		;

		using
			value_type
		=	MaskedSimd
			<	ElementType
					[	t_vCount
					]
			>
		;

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	Multiple<t_vCount>
					i_vIndex
			)
			noexcept
		->	value_type
		{	return
			value_type
			::	LoadAligned
				(	m_aData
				+	static_cast<SSize>
					(	i_vIndex
					)
				,	SimdMask<ElementType[8uz]>
					{	.	m_vRaw
						=	m_vMask
					}
				)
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	SSize
					i_vIndex
			)
			noexcept
		->	value_type
		{	return
			value_type
			::	LoadUnaligned
				(	m_aData
				+	i_vIndex
				,	SimdMask<ElementType[8uz]>
					{	.	m_vRaw
						=	m_vMask
					}
				)
			;
		}
	};

	template
		<	typename
				t_tElement
		,	USize
				t_vCount
		>
	struct
		Var
		<	t_tElement
			(&)	[]
				[	t_vCount
				]
		,	SimdTag
		>
	{
		using
			ElementType
		=	::std::remove_cv_t
			<	t_tElement
			>
		;

		t_tElement
		*	m_aData
		;

		SSize
			m_vCount
		;

		using
			value_type
		=	Simd
			<	ElementType
					[	t_vCount
					]
			>
		;

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	SimdMask<ElementType[t_vCount]>
					i_vMask
			)	const
			noexcept
		->	MaskedSimd
			<	t_tElement
				(&)	[]
					[	t_vCount
					]
			>
		{	return
			{	.	m_aData
				=	m_aData
			,	.	m_vCount
				=	m_vCount
			,	.	m_vMask
				=	i_vMask
					.	m_vRaw
			};
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	Multiple<t_vCount>
					i_vIndex
			)
			noexcept
		->	value_type
		{	return
			value_type
			::	LoadAligned
				(	m_aData
				+	static_cast<SSize>
					(	i_vIndex
					)
				)
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	SSize
					i_vIndex
			)
			noexcept
		->	value_type
		{	return
			value_type
			::	LoadUnaligned
				(	m_aData
				+	i_vIndex
				)
			;
		}
	};
}
