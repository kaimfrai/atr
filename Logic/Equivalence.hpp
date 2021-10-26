#pragma once

#include "Implication.hpp"
#include "Concepts.hpp"

template
	<	ProtoTerm
			t_tTerm
	>
auto consteval
(	operator <=>
)	(	t_tTerm
	,	t_tTerm
	)
->	bool
{	return true;	}


auto consteval
(	operator <=>
)	(	ProtoTerm auto
			i_vLeft
	,	ProtoTerm auto
			i_vRight
	)
->	bool
{
	return
	(	(	i_vLeft
		>=	i_vRight
		)
	and	(	i_vLeft
		<=	i_vRight
		)
	);
}
