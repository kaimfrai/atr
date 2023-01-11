export module Meta.Bit.Index.Compare;

import Meta.Bit.Index;
import Meta.Arithmetic.Integer;

import Std;

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr
	(	operator ==
	)	(	Index_For<UIntMax>
				i_vLeft
		,	Index_For<UIntMax>
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
	)	(	Index_For<UIntMax>
				i_vLeft
		,	Index_For<UIntMax>
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
