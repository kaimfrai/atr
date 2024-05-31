export module Meta.Auto.Array.Bounded;

export import Meta.Auto.Var;

import Std;

export namespace
	Meta::Auto
{
	///	Empty array
	template
		<	typename
				t_tElement
		>
	struct
		Var
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
		Var
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
		Var
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
		->	Var&
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
		Var
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
		->	Var<bool&, Bits<16uz>>
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
		)	(	Var
					i_vArray
			)
			noexcept
		->	Var
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
		)	(	Var
					i_vArray
			,	::std::uint16_t
					i_vShift
			)
			noexcept
		->	Var
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
		)	(	Var
					i_vLeft
			,	Var
					i_vRight
			)
			noexcept
		->	Var
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
		)	(	Var
					i_vRight
			)	&
			noexcept
		->	Var&
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
		)	(	Var
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
		)	(	Var
			,	Var
			)
			noexcept
		->	bool
		=	default;
	};
}
