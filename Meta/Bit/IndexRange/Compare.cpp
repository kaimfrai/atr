export module Meta.Bit.IndexRange.Compare;

import Meta.Bit.IndexRange;
import Meta.Arithmetic.Integer;
import Meta.Memory.Size;

import Std;

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr
	(	operator ==
	)	(	IndexRange<Memory::SizeOf<UIntMax>>
				i_vLeft
		,	IndexRange<Memory::SizeOf<UIntMax>>
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
	)	(	IndexRange<Memory::SizeOf<UIntMax>>
				i_vLeft
		,	IndexRange<Memory::SizeOf<UIntMax>>
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
