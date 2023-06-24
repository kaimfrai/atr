export module Meta.Generic.MoveBackward;

export namespace
	Meta::Generic
{
	template
		<	typename
				t_tElement
		>
	[[nodiscard]]
	auto constexpr inline
	(	MoveBackward_Until
	)	(	t_tElement const
			*	i_aBegin
		,	t_tElement
			*	i_aInsert
		,	auto
				i_fSentinel
		)
		noexcept
	->	t_tElement*
	{
		while(	i_aInsert
			!=	i_aBegin
			)
		{
			auto const
				aPrevious
			=	i_aInsert
			-	1z
			;

			if	(	i_fSentinel
					(	*	aPrevious
					)
				)
			{	return
					i_aInsert
				;
			}

			*	i_aInsert
			=	*	aPrevious
			;
			i_aInsert
			=	aPrevious
			;
		}

		return
			i_aInsert
		;
	}
}
