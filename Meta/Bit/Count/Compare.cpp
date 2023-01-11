export module Meta.Bit.Count.Compare;

import Meta.Bit.Count;
import Meta.Arithmetic.Integer;
import Meta.Memory.Size;

import Std;

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr
	(	operator ==
	)	(	Count<Memory::SizeOf<UIntMax>>
				i_vLeft
		,	Count<Memory::SizeOf<UIntMax>>
				i_vRight
		)
		noexcept
	->	bool
	{	return
		(	i_vLeft.get()
		==	i_vRight.get()
		);
	}

	[[nodiscard]]
	auto constexpr
	(	operator <=>
	)	(	Count<Memory::SizeOf<UIntMax>>
				i_vLeft
		,	Count<Memory::SizeOf<UIntMax>>
				i_vRight
		)
		noexcept
	->	::std::strong_ordering
	{	return
		(	i_vLeft.get()
		<=>	i_vRight.get()
		);
	}
}
