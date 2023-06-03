export module Meta.Bit.Index.Set;

import Meta.Bit.Index;
import Meta.Bit.Index.Shift;

import Std;

export namespace
	Meta::Bit
{
	auto constexpr inline
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

	[[nodiscard]]
	auto constexpr inline
	(	Set
	)	(	::std::integral auto
			&&	i_rField
		,	Index_For<decltype(i_rField)>
				i_nIndex
		)
		noexcept
	->	decltype(auto(i_rField))
	{	return
		Set
		(	i_rField
		,	i_nIndex
		);
	}

	auto constexpr inline
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

	[[nodiscard]]
	auto constexpr inline
	(	Unset
	)	(	::std::integral auto
			&&	i_rField
		,	Index_For<decltype(i_rField)>
				i_nIndex
		)
		noexcept
	->	decltype(auto(i_rField))
	{	return
		Unset
		(	i_rField
		,	i_nIndex
		);
	}
}
