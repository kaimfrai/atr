export module Meta.Bit.Width;

import Meta.Bit.Count;
import Meta.Bit.Field;
import Meta.Size;

import Std;

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr
	(	Width
	)	(	Field
				i_nField
		)
		noexcept
	->	Bits
	{	return
		{	static_cast<USize>
			(	::std::bit_width
				(	i_nField.Value
				)
			)
		};
	}
}
