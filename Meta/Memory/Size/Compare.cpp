export module Meta.Memory.Size.Compare;

import Meta.Memory.Size;

import std;

export namespace
	Meta::Memory
{
	[[nodiscard]]
	auto constexpr inline
	(	operator==
	)	(	BitSize
				i_vLeft
		,	BitSize
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
	)	(	BitSize
				i_vLeft
		,	BitSize
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
