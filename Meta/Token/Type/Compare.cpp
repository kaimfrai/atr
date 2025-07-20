export module Meta.Token.Type.Compare;

import Meta.Token.TypeID;
import Meta.Memory.Size.Compare;

import std;

export namespace
	Meta
{
	// Compares the types based on identity, alignment, and size.
	// If only one of the pointers is nullptr the behaviour is undefined.
	[[nodiscard]]
	auto constexpr inline
	(	operator<=>
	)	(	TypeID
				i_vLeft
		,	TypeID
				i_vRight
		)
		noexcept
	->	::std::partial_ordering
	{
		if	(	i_vLeft
			==	i_vRight
			)
		{	return
				::std::partial_ordering::equivalent
			;
		}

		if	(	::std::strong_ordering const
					vCompareConstraint
				=	*i_vLeft.Constraint
				<=>	*i_vRight.Constraint
			;	not
				::std::is_eq
				(	vCompareConstraint
				)
			)
		{	return
				vCompareConstraint
			;
		}

		return
			::std::partial_ordering::unordered
		;
	}
}
