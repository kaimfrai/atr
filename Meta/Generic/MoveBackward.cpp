export module Meta.Generic.MoveBackward;

import Meta.Size;

import Std;

export namespace
	Meta::Generic
{
	auto constexpr inline
	(	MoveBackwardIndex
	)	(	auto
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
		auto const
			aEnd
		=	i_aBegin
		+	i_vCount
		;
		::std::move_backward
		(	(	i_aBegin
			+	i_vIndex
			)
		,	aEnd
		,	(	aEnd
			+	i_vOffset
			)
		);
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
