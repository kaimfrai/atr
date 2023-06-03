export module Meta.Bit.Field.Compare;

import Meta.Arithmetic.Integer;
import Meta.Bit.Field;

import Std;

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr
	(	operator==
	)	(	Field_For<UIntMax>
				i_nLeft
		,	Field_For<UIntMax>
				i_nRight
		)
		noexcept
	->	bool
	{	return
			i_nLeft.get()
		==	i_nRight.get()
		;
	}

	[[nodiscard]]
	auto constexpr
	(	operator<=>
	)	(	Field_For<UIntMax>
				i_nLeft
		,	Field_For<UIntMax>
				i_nRight
		)
		noexcept
	->	::std::strong_ordering
	{	return
			i_nLeft.get()
		<=>	i_nRight.get()
		;
	}
}
