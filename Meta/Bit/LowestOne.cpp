export module Meta.Bit.LowestOne;

import Meta.Bit.Index;

import Std;

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
		static_cast<decltype(i_nField)>
		(	i_nField
		bitand
			-
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
		)
		noexcept
	->	decltype(i_rField)
	{	return
		(	i_rField
		=	static_cast<decltype(auto(i_rField))>
			(	i_rField
			bitand
				(	i_rField
				-	1
				)
			)
		);
	}
}
