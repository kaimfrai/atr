export module Meta.Memory.Size.Arithmetic;

import Meta.Memory.Size;

export namespace
	Meta::Memory
{
	[[nodiscard]]
	auto constexpr
	(	operator +
	)	(	BitSize
				i_nSize
		)
		noexcept
	->	BitSize
	{	return
		{	+
			i_nSize
		.	get()
		};
	}

	[[nodiscard]]
	auto constexpr
	(	operator -
	)	(	BitSize
				i_nSize
		)
		noexcept
	->	BitSize
	{	return
		{	-
			i_nSize
		.	get()
		};
	}

	template
		<	auto
				t_nWidth
		>
	auto constexpr
	(	operator +=
	)	(	Size<t_nWidth>
			&	i_rSize
		,	BitSize
				i_vOffset
		)
		noexcept
	->	Size<t_nWidth>&
	{	(	i_rSize.get()
		+=	static_cast<Size<t_nWidth>>
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
				t_nWidth
		>
	auto constexpr
	(	operator -=
	)	(	Size<t_nWidth>
			&	i_rSize
		,	BitSize
				i_vOffset
		)
		noexcept
	->	Size<t_nWidth>&
	{	(	i_rSize.get()
		-=	static_cast<Size<t_nWidth>>
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
				t_nWidth
		>
	auto constexpr
	(	operator ++
	)	(	Size<t_nWidth>
			&	i_rSize
		)
		noexcept
	->	Size<t_nWidth>&
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
				t_nWidth
		>
	[[nodiscard("Use preincrement if you discard the value")]]
	auto constexpr
	(	operator ++
	)	(	Size<t_nWidth>
			&	i_rSize
		,	int
		)
		noexcept
	->	Size<t_nWidth>
	{	return
		Size<t_nWidth>
		{	i_rSize
		.	get()
			++
		};
	}

	template
		<	auto
				t_nWidth
		>
	auto constexpr
	(	operator --
	)	(	Size<t_nWidth>
			&	i_rSize
		)
		noexcept
	->	Size<t_nWidth>&
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
				t_nWidth
		>
	[[nodiscard("Use predecrement if you discard the value")]]
	auto constexpr
	(	operator --
	)	(	Size<t_nWidth>
			&	i_rSize
		,	int
		)
		noexcept
	->	Size<t_nWidth>
	{	return
		{	i_rSize
		.	get()
			--
		};
	}

	[[nodiscard]]
	auto constexpr
	(	operator +
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
	auto constexpr
	(	operator -
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
