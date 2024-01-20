export module Meta.Bit.LowestOne;

import Meta.Bit.Index;
import Meta.Math.Prev;

import Std;

using ::Meta::Math::Prev;

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr inline
	(	LowestOne
	)	(	::std::integral auto
				i_vField
		)
		noexcept
	->	decltype(i_vField)
	{	return
		(	i_vField
		&=	-
			i_vField
		);
	}

	[[nodiscard]]
	auto constexpr inline
	(	IndexLowestOne
	)	(	::std::integral auto
				i_vField
		)
		noexcept
	->	Index_For<decltype(i_vField)>
	{
		if	(i_vField == 0u)
			::std::unreachable();

		return
		Index_For<decltype(i_vField)>
		{	::std::countr_zero
			(	i_vField
			)
		};
	}

	auto constexpr inline
	(	UnsetLowestOne
	)	(	::std::integral auto
			&	i_rField
		,	decltype(auto(i_rField))
				i_vMask
		)
		noexcept
	->	decltype(i_rField)
	{	return
		(	i_rField
		&=	Prev
			(	i_vMask
			)
		);
	}

	auto constexpr inline
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
	auto constexpr inline
	(	UnsetLowestOne
	)	(	::std::integral auto
			&&	i_rField
		,	decltype(auto(i_rField))
				i_vMask
		)
		noexcept
	->	decltype(auto(i_rField))
	{	return
		UnsetLowestOne
		(	i_rField
		,	i_vMask
		);
	}

	[[nodiscard]]
	auto constexpr inline
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
