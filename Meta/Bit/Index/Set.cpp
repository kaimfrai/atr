export module Meta.Bit.Index.Set;

import Meta.Bit.Index;
import Meta.Bit.Index.Shift;

import Std;

export namespace
	Meta::Bit
{
	auto constexpr
	(	Set
	)	(	::std::integral auto
			&	i_rField
		,	Index_For<decltype(i_rField)>
				i_nIndex
		)
		noexcept
	->	decltype(i_rField)
	{	return
		(	i_rField
		|=	Power
			(	i_nIndex
			)
		);
	}

	auto constexpr
	(	Unset
	)	(	::std::integral auto
			&	i_rField
		,	Index_For<decltype(i_rField)>
				i_nIndex
		)
		noexcept
	->	decltype(i_rField)
	{	return
		(	i_rField
		&=	AntiPower
			(	i_nIndex
			)
		);
	}
}
