export module Meta.Bit.IndexLowestOne;

import Meta.Size;

import Std;

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr
	(	IndexLowestOne
	)	(	USize
				i_nBitField
		)
		noexcept
	->	USize
	{	if	(i_nBitField == 0uz)
			::std::unreachable();

		return
		static_cast<USize>
		(	::std::countr_zero
			(	i_nBitField
			)
		);
	}
}
