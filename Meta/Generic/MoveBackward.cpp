export module Meta.Generic.MoveBackward;

import Meta.Size;

export namespace
	Meta::Generic
{
	template
		<	typename
				t_tElement
		>
	auto constexpr inline
	(	MoveBackwardIndex
	)	(	t_tElement
			*	i_aBegin
		,	SSize
				i_vIndex
		,	SSize
				i_vCount
		,	SSize
				i_vOffset
			=	1z
		)
		noexcept
	{
		for	(	SSize
					vLast
				=	i_vCount
				-	1z
			;	(	vLast
				>=	i_vIndex
				)
			;	--	vLast
			)
		{
			i_aBegin
				[	vLast
				+	i_vOffset
				]
			=	static_cast<t_tElement&&>
				(	i_aBegin
						[	vLast
						]
				)
			;
		}
	}

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
