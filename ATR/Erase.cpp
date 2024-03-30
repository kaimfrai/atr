export module ATR.Erase;

import Std;

export namespace
	ATR
{
	struct
		RErasure
	{
		::std::byte
		*	m_aData
		;

		[[nodiscard]]
		auto constexpr inline
		(	data
		)	(	this RErasure
					i_rErasure
			)
			noexcept
		->	::std::byte*
		{	return
				i_rErasure
				.	m_aData
			;
		}

		template
			<	typename
					t_tObject
			>
		[[nodiscard]]
		auto constexpr inline
		(	As
		)	(	this RErasure
					i_rErasure
			)
			noexcept
		->	t_tObject&
		{	return
				*
				::std::launder
				(	::std::bit_cast<t_tObject*>
					(	i_rErasure
					)
				)
			;
		}
	};

	struct
		CErasure
	{
		::std::byte const
		*	m_aData
		;

		[[nodiscard]]
		auto constexpr inline
		(	data
		)	(	this CErasure
					i_rErasure
			)
			noexcept
		->	::std::byte const*
		{	return
				i_rErasure
				.	m_aData
			;
		}

		template
			<	typename
					t_tObject
			>
		[[nodiscard]]
		auto constexpr inline
		(	As
		)	(	this CErasure
					i_rErasure
			)
			noexcept
		->	t_tObject const&
		{	return
				*
				::std::launder
				(	::std::bit_cast<t_tObject const*>
					(	i_rErasure
					)
				)
			;
		}
	};

	struct
		XErasure
	{
		::std::byte
		*	m_aData
		;

		[[nodiscard]]
		auto constexpr inline
		(	data
		)	(	this XErasure
					i_xErasure
			)
			noexcept
		->	::std::byte*
		{	return
				i_xErasure
				.	m_aData
			;
		}

		template
			<	typename
					t_tObject
			>
		[[nodiscard]]
		auto constexpr inline
		(	As
		)	(	this XErasure
					i_xErasure
			)
			noexcept
		->	t_tObject&&
		{	return
			static_cast<t_tObject&&>
			(	*
				::std::launder
				(	::std::bit_cast<t_tObject*>
					(	i_xErasure
					)
				)
			);
		}
	};

	template
		<	typename
				t_tObject
		>
	[[nodiscard]]
	auto constexpr inline
	(	ForwardErased
	)	(	t_tObject
			&	i_rObject
		)
		noexcept
	->	RErasure
	{	return
		::std::bit_cast<RErasure>
		(	::std::addressof
			(	i_rObject
			)
		);
	}

	template
		<	typename
				t_tObject
		>
	[[nodiscard]]
	auto constexpr inline
	(	ForwardErased
	)	(	t_tObject const
			&	i_rObject
		)
		noexcept
	->	CErasure
	{	return
		::std::bit_cast<CErasure>
		(	::std::addressof
			(	i_rObject
			)
		);
	}

	template
		<	typename
				t_tObject
		>
	[[nodiscard]]
	auto constexpr inline
	(	ForwardErased
	)	(	t_tObject
			&&	i_rObject
		)
		noexcept
	->	XErasure
	{	return
		::std::bit_cast<XErasure>
		(	::std::addressof
			(	i_rObject
			)
		);
	}

	template
		<	typename
				t_tObject
		>
	[[nodiscard]]
	auto constexpr inline
	(	ForwardErased
	)	(	t_tObject const
			&&
		)
		noexcept
	=	delete;

	[[nodiscard]]
	auto constexpr inline
	(	AsErasure
	)	(	::std::byte
			(&	i_rBuffer
			)	[]
		)
		noexcept
	->	RErasure
	{	return
		{	i_rBuffer
		};
	}

	[[nodiscard]]
	auto constexpr inline
	(	AsErasure
	)	(	::std::byte const
			(&	i_rBuffer
			)	[]
		)
		noexcept
	->	CErasure
	{	return
		{	i_rBuffer
		};
	}

	[[nodiscard]]
	auto constexpr inline
	(	AsErasure
	)	(	::std::byte
			(&&	i_rBuffer
			)	[]
		)
		noexcept
	->	XErasure
	{	return
		{	i_rBuffer
		};
	}

	template
		<	typename
				t_tObject
		>
	using
		ErasedType
	=	decltype
		(	ForwardErased
			(	::std::declval
				<	t_tObject
				>()
			)
		)
	;
}
