export module Meta.Memory.Size.Arithmetic;

import Meta.Memory.Size;

export namespace
	Meta::Memory
{
	[[nodiscard]]
	auto constexpr inline
	(	operator+
	)	(	BitSize
				i_vSize
		)
		noexcept
	->	BitSize
	{	return
		{	+
			i_vSize
		.	get()
		};
	}

	[[nodiscard]]
	auto constexpr inline
	(	operator-
	)	(	BitSize
				i_vSize
		)
		noexcept
	->	BitSize
	{	return
		{	-
			i_vSize
		.	get()
		};
	}

	template
		<	auto
				t_vWidth
		>
	auto constexpr inline
	(	operator+=
	)	(	Size<t_vWidth>
			&	i_rSize
		,	BitSize
				i_vOffset
		)
		noexcept
	->	Size<t_vWidth>&
	{	(	i_rSize
			.	get
				()
		+=	static_cast<Size<t_vWidth>>
			(	i_vOffset
			)
			.	get
				()
		);
		return
			i_rSize
		;
	}

	template
		<	auto
				t_vWidth
		>
	auto constexpr inline
	(	operator-=
	)	(	Size<t_vWidth>
			&	i_rSize
		,	BitSize
				i_vOffset
		)
		noexcept
	->	Size<t_vWidth>&
	{	(	i_rSize.get()
		-=	static_cast<Size<t_vWidth>>
			(	i_vOffset
			)
		.	get()
		);
		return
			i_rSize
		;
	}

	template
		<	auto
				t_vWidth
		>
	auto constexpr inline
	(	operator++
	)	(	Size<t_vWidth>
			&	i_rSize
		)
		noexcept
	->	Size<t_vWidth>&
	{
		(	++
			i_rSize
		.	get()
		);

		return
			i_rSize
		;
	}
	template
		<	auto
				t_vWidth
		>
	[[nodiscard("Use preincrement if you discard the value")]]
	auto constexpr inline
	(	operator++
	)	(	Size<t_vWidth>
			&	i_rSize
		,	int
		)
		noexcept
	->	Size<t_vWidth>
	{	return
		Size<t_vWidth>
		{	i_rSize
		.	get()
			++
		};
	}

	template
		<	auto
				t_vWidth
		>
	auto constexpr inline
	(	operator--
	)	(	Size<t_vWidth>
			&	i_rSize
		)
		noexcept
	->	Size<t_vWidth>&
	{	(	--
			i_rSize
		.	get()
		);
		return
			i_rSize
		;
	}

	template
		<	auto
				t_vWidth
		>
	[[nodiscard("Use predecrement if you discard the value")]]
	auto constexpr inline
	(	operator--
	)	(	Size<t_vWidth>
			&	i_rSize
		,	int
		)
		noexcept
	->	Size<t_vWidth>
	{	return
		{	i_rSize
		.	get()
			--
		};
	}

	[[nodiscard]]
	auto constexpr inline
	(	operator+
	)	(	BitSize
				i_vSize
		,	BitSize
				i_vOffset
		)
		noexcept
	->	BitSize
	{	return
		(	i_vSize
		+=	i_vOffset
		);
	}

	[[nodiscard]]
	auto constexpr inline
	(	operator-
	)	(	BitSize
				i_vSize
		,	BitSize
				i_vOffset
		)
		noexcept
	->	BitSize
	{	return
		(	i_vSize
		-=	i_vOffset
		);
	}
}
