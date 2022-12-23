export module Meta.Bit.LowestOne;

import Meta.Bit.Field;
import Meta.Size;

import Std;

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr
	(	IndexLowestOne
	)	(	Field
				i_nField
		)
		noexcept
	->	USize
	{	if	(i_nField.Value == 0uz)
			::std::unreachable();

		return
		static_cast<USize>
		(	::std::countr_zero
			(	i_nField.Value
			)
		);
	}

	[[nodiscard]]
	auto constexpr
	(	UnsetLowestOne
	)	(	Field
				i_nField
		)
		noexcept
	->	Field
	{	return
		{	i_nField.Value
		bitand
			(	i_nField.Value
			-	1uz
			)
		};
	}
}
