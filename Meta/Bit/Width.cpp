export module Meta.Bit.Width;

import Meta.Size;

import Std;

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr
	(	Width
	)	(	USize
				i_nBitField
		)
		noexcept
	->	USize
	{	return
		static_cast<USize>
		(	::std::bit_width
			(	i_nBitField
			)
		);
	}
}
