export module Meta.Memory.Count.Compare;

import Meta.Memory.Count;

import Std;

export namespace
	Meta::Memory
{
	[[nodiscard]]
	auto constexpr
	(	operator ==
	)	(	Bits
				i_vLeft
		,	Bits
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
	auto constexpr
	(	operator <=>
	)	(	Bits
				i_vLeft
		,	Bits
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
