export module Meta.Math.Next;

export namespace
	Meta::Math
{
	[[nodiscard]]
	auto constexpr inline
	(	Next
	)	(	auto
				i_vCurrent
		)
		noexcept
		(	noexcept
			(	++
				i_vCurrent
			)
		)
	->	decltype
		(	auto
			(	++
				i_vCurrent
			)
		)
	{	return
			++
			i_vCurrent
		;
	}

	[[nodiscard]]
	auto constexpr inline
	(	Next
	)	(	auto
				i_vCurrent
		,	auto
				i_vIncrement
		)
		noexcept
		(	noexcept
			(	i_vCurrent
			+=	i_vIncrement
			)
		)
	->	decltype
		(	auto
			(	i_vCurrent
			+=	i_vIncrement
			)
		)
	{	return
			i_vCurrent
		+=	i_vIncrement
		;
	}
}
