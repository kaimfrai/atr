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
		<>
	struct
		Auto
		<	bool
			&
		,	16uz
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
		->	Auto<bool&, 16uz>
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
	};
}
