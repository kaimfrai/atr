export module Meta.Bit.Width;

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
	->	USize
	{	return
		static_cast<USize>
		(	::std::bit_width
			(	i_nField.Value
			)
		);
	}
}
