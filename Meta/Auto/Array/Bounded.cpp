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
		<>
	struct
		Var
		<	bool
			&
		>
	{
		::std::byte
		*	m_aRaw
		;
		::std::byte
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
			!=	::std::byte
				{}
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
			|=	static_cast<::std::byte>
				(	i_vValue
				*	static_cast<int>
					(	m_vMask
					)
				)
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
		alignas(::std::uint16_t)
		::std::byte
			m_vRaw
			[	sizeof(::std::uint16_t)
			]
		;

		[[nodiscard]]
		auto constexpr inline
		(	operator[]
		)	(	::std::ptrdiff_t
					i_vIndex
			)	&
			noexcept
		->	Var<bool&>
		{	return
			{	(	m_vRaw
				+	(	i_vIndex
					/	8z
					)
				)
			,	static_cast<::std::byte>
				(	1z
				<<	(	i_vIndex
					%	8z
					)
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
			(	(	::std::bit_cast<::std::uint16_t>
					(	m_vRaw
					)
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
			::std::bit_cast<Var>
			(	static_cast<::std::uint16_t>
				(	compl
					::std::bit_cast<::std::uint16_t>
					(	i_vArray
						.	m_vRaw
					)
				)
			);
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
			::std::bit_cast<Var>
			(	static_cast<::std::uint16_t>
				(	::std::bit_cast<::std::uint16_t>
					(	i_vArray
						.	m_vRaw
					)
				<<	i_vShift
				)
			);
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
		{	return
			::std::bit_cast<Var>
			(	static_cast<::std::uint16_t>
				(	::std::bit_cast<::std::uint16_t>
					(	i_vLeft
					)
				bitor
					::std::bit_cast<::std::uint16_t>
					(	i_vRight
					)
				)
			);
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
			(	::std::bit_cast<::std::uint16_t>
				(	i_vArray
					.	m_vRaw
				)
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
