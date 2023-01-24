export module Meta.Bit.LowestOne;

import Meta.Bit.Index;
import Meta.Math.Prev;

import Std;

using ::Meta::Math::Prev;

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr
	(	LowestOne
	)	(	::std::integral auto
				i_nField
		)
		noexcept
	->	decltype(i_nField)
	{	return
		(	i_nField
		&=	-
			i_nField
		);
	}

	[[nodiscard]]
	auto constexpr
	(	IndexLowestOne
	)	(	::std::integral auto
				i_nField
		)
		noexcept
	->	Index_For<decltype(i_nField)>
	{
		if	(i_nField == 0u)
			::std::unreachable();

		return
		Index_For<decltype(i_nField)>
		{	::std::countr_zero
			(	i_nField
			)
		};
	}

	auto constexpr
	(	UnsetLowestOne
	)	(	::std::integral auto
			&	i_rField
		,	decltype(auto(i_rField))
				i_nMask
		)
		noexcept
	->	decltype(i_rField)
	{	return
		(	i_rField
		&=	Prev
			(	i_nMask
			)
		);
	}

	auto constexpr
	(	UnsetLowestOne
	)	(	::std::integral auto
			&	i_rField
		)
		noexcept
	->	decltype(i_rField)
	{	return
		UnsetLowestOne
		(	i_rField
		,	i_rField
		);
	}

	[[nodiscard]]
	auto constexpr
	(	UnsetLowestOne
	)	(	::std::integral auto
			&&	i_rField
		,	decltype(auto(i_rField))
				i_nMask
		)
		noexcept
	->	decltype(auto(i_rField))
	{	return
		UnsetLowestOne
		(	i_rField
		,	i_nMask
		);
	}

	[[nodiscard]]
	auto constexpr
	(	UnsetLowestOne
	)	(	::std::integral auto
			&&	i_rField
		)
		noexcept
	->	decltype(auto(i_rField))
	{	return
		UnsetLowestOne
		(	i_rField
		,	i_rField
		);
	}
}
