export module Meta.Bit.Count.Compare;

import Meta.Bit.Count;
import Meta.Arithmetic.Integer;

import std;

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr inline
	(	operator==
	)	(	Count_For<UIntMax>
				i_vLeft
		,	Count_For<UIntMax>
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
	auto constexpr inline
	(	operator<=>
	)	(	Count_For<UIntMax>
				i_vLeft
		,	Count_For<UIntMax>
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
