export module Meta.Auto.Array.Bounded;

export import Meta.Auto.Primary;

import Std;

export namespace
	Meta
{
	///	Empty array
	template
		<	typename
				t_tElement
		>
	struct
		Auto
		<	t_tElement
				[]
		>
	{};

	template
		<	typename
				t_tElement
		,	::std::size_t
				t_vExtent
		>
	struct
		Auto
		<	t_tElement
				[	t_vExtent
				]
		>
	{
		t_tElement
			m_vRaw
			[	t_vExtent
			]
		;

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	::std::size_t
					i_vIndex
			)	&
			noexcept
		->	t_tElement&
		{	return
				m_vRaw
				[	i_vIndex
				]
			;
		}
	};

	template
		<	::std::size_t
				t_vBitCount
		>
	struct
		Bits
	{};


	template
		<>
	struct
		Auto
		<	bool
			&
		,	Bits
			<	16uz
			>
		>
	{
		::std::uint16_t
		*	m_aRaw
		;
		::std::uint16_t
			m_vMask
		;

		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator bool
		)	()	const
			noexcept
		{	return
				(*	m_aRaw
				bitand
					m_vMask
				)
			!=	0u
			;
		}

		auto constexpr inline
		(	operator=
		)	(	bool
					i_vValue
			)	&
			noexcept
		->	Auto&
		{
			auto
				vRaw
			=	*	m_aRaw
			;
				vRaw
			&=	compl
				m_vMask
			;
				vRaw
			|=	static_cast<::std::uint16_t>
				(	i_vValue
				)
			*	m_vMask
			;

			*	m_aRaw
			=	vRaw
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
		<	bool
				[	16uz
				]
		>
	{
		::std::uint16_t
			m_vRaw
		;

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	::std::ptrdiff_t
					i_vIndex
			)	&
			noexcept
		->	Auto<bool&, Bits<16uz>>
		{	return
			{	&	m_vRaw
			,	static_cast<::std::uint16_t>
				(	1uz
				<<	i_vIndex
				)
			};
		}

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	::std::ptrdiff_t
					i_vIndex
			)	const&
			noexcept
		->	bool
		{	return
			static_cast<bool>
			(	(	m_vRaw
				>>	i_vIndex
				)
			bitand
				1
			);
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator compl
		)	(	Auto
					i_vArray
			)
			noexcept
		->	Auto
		{	return
			{	static_cast<::std::uint16_t>
				(	compl
					i_vArray
					.	m_vRaw
				)
			};
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator <<
		)	(	Auto
					i_vArray
			,	::std::uint16_t
					i_vShift
			)
			noexcept
		->	Auto
		{	return
			{	static_cast<::std::uint16_t>
				(	i_vArray
					.	m_vRaw
				<<	i_vShift
				)
			};
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator bitor
		)	(	Auto
					i_vLeft
			,	Auto
					i_vRight
			)
			noexcept
		->	Auto
		{	(	i_vLeft
				.	m_vRaw
			|=	i_vRight
				.	m_vRaw
			);
			return
				i_vLeft
			;
		}

		auto constexpr inline
		(	operator|=
		)	(	Auto
					i_vRight
			)	&
			noexcept
		->	Auto&
		{	return
			*	this
			=	*	this
			bitor
				i_vRight
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	Count
		)	(	Auto
					i_vArray
			)
			noexcept
		->	auto
		{	return
			::std::popcount
			(	i_vArray
				.	m_vRaw
			);
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator==
		)	(	Auto
			,	Auto
			)
			noexcept
		->	bool
		=	default;
	};
}
