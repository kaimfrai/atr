export module Meta.Bit.Field.Compare;

import Meta.Arithmetic.Integer;
import Meta.Bit.Field;

import std;

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr inline
	(	operator==
	)	(	Field_For<UIntMax>
				i_vLeft
		,	Field_For<UIntMax>
				i_vRight
		)
		noexcept
	->	bool
	{	return
			i_vLeft.get()
		==	i_vRight.get()
		;
	}

	[[nodiscard]]
	auto constexpr inline
	(	operator<=>
	)	(	Field_For<UIntMax>
				i_vLeft
		,	Field_For<UIntMax>
				i_vRight
		)
		noexcept
	->	::std::strong_ordering
	{	return
			i_vLeft.get()
		<=>	i_vRight.get()
		;
	}
}
