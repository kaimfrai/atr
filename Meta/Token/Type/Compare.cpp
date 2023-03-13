export module Meta.Token.Type.Compare;

import Meta.Token.TypeID;
import Meta.Memory.Size.Compare;

import Std;

export namespace
	Meta
{
	// Compares the types based on identity, alignment, and size.
	// If only one of the pointers is nullptr the behaviour is undefined.
	[[nodiscard]]
	auto constexpr
	(	operator
		<=>
	)	(	TypeID
				i_aLeft
		,	TypeID
				i_aRight
		)
		noexcept
	->	::std::partial_ordering
	{
		if	(	i_aLeft
			==	i_aRight
			)
		{	return
				::std::partial_ordering::equivalent
			;
		}

		if	(	::std::strong_ordering const
					vCompareAlign
				=	i_aLeft->Align
				<=>	i_aRight->Align
			;	not
				::std::is_eq
				(	vCompareAlign
				)
			)
		{	return
				vCompareAlign
			;
		}

		if	(	::std::strong_ordering const
					vCompareSize
				=	i_aLeft->Size
				<=>	i_aRight->Size
			;	not
				::std::is_eq
				(	vCompareSize
				)
			)
		{
			return
				vCompareSize
			;
		}

		return
			::std::partial_ordering::unordered
		;
	}
}
