export module Meta.Bit.Field.Compare;

import Meta.Arithmetic.Integer;
import Meta.Memory.Size;
import Meta.Bit.Field;

import Std;

export namespace
	Meta::Bit
{
	auto constexpr
	(	operator ==
	)	(	Field<Memory::SizeOf<UIntMax>>
				i_nLeft
		,	Field<Memory::SizeOf<UIntMax>>
				i_nRight
		)
		noexcept
	->	bool
	{	return
			i_nLeft.get()
		==	i_nRight.get()
		;
	}

	auto constexpr
	(	operator <=>
	)	(	Field<Memory::SizeOf<UIntMax>>
				i_nLeft
		,	Field<Memory::SizeOf<UIntMax>>
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
