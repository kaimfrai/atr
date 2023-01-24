export module Meta.Math.Next;

export namespace
	Meta::Math
{
	[[nodiscard]]
	auto constexpr
	(	Next
	)	(	auto
				i_nCurrent
		)
		noexcept
		(	noexcept
			(	++
				i_nCurrent
			)
		)
	->	decltype
		(	auto
			(	++
				i_nCurrent
			)
		)
	{	return
			++
			i_nCurrent
		;
	}

	[[nodiscard]]
	auto constexpr
	(	Next
	)	(	auto
				i_nCurrent
		,	auto
				i_nIncrement
		)
		noexcept
		(	noexcept
			(	i_nCurrent
			+=	i_nIncrement
			)
		)
	->	decltype
		(	auto
			(	i_nCurrent
			+=	i_nIncrement
			)
		)
	{	return
			i_nCurrent
		+=	i_nIncrement
		;
	}
}