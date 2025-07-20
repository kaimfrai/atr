export module Meta.Bit.Index.Set;

import Meta.Bit.Index;
import Meta.Bit.Index.Shift;

import std;

export namespace
	Meta::Bit
{
	auto constexpr inline
	(	Set
	)	(	::std::integral auto
			&	i_rField
		,	Index_For<decltype(i_rField)>
				i_vIndex
		)
		noexcept
	->	decltype(i_rField)
	{	return
		(	i_rField
		|=	Power
			(	i_vIndex
			)
		);
	}

	[[nodiscard]]
	auto constexpr inline
	(	Set
	)	(	::std::integral auto
			&&	i_rField
		,	Index_For<decltype(i_rField)>
				i_vIndex
		)
		noexcept
	->	decltype(auto(i_rField))
	{	return
		Set
		(	i_rField
		,	i_vIndex
		);
	}

	auto constexpr inline
	(	Unset
	)	(	::std::integral auto
			&	i_rField
		,	Index_For<decltype(i_rField)>
				i_vIndex
		)
		noexcept
	->	decltype(i_rField)
	{	return
		(	i_rField
		&=	AntiPower
			(	i_vIndex
			)
		);
	}

	[[nodiscard]]
	auto constexpr inline
	(	Unset
	)	(	::std::integral auto
			&&	i_rField
		,	Index_For<decltype(i_rField)>
				i_vIndex
		)
		noexcept
	->	decltype(auto(i_rField))
	{	return
		Unset
		(	i_rField
		,	i_vIndex
		);
	}
}
