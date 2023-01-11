export module Meta.Bit.Index.Shift;

import Meta.Bit.Index;
import Meta.Arithmetic.Integer;

import Std;

export namespace
	Meta::Bit
{
	auto constexpr
	(	operator >>=
	)	(	::std::integral auto
			&	i_rField
		,	Index_For<decltype(i_rField)>
				i_nIndex
		)
		noexcept
	->	decltype(i_rField)
	{	return
		(	i_rField
		>>=	i_nIndex
		.	get()
		);
	}

	[[nodiscard]]
	auto constexpr
	(	operator >>
	)	(	::std::integral auto
				i_nField
		,	Index_For<decltype(i_nField)>
				i_nIndex
		)
		noexcept
	->	decltype(i_nField)
	{	return
		(	i_nField
		>>=	i_nIndex
		);
	}

	auto constexpr
	(	operator <<=
	)	(	::std::integral auto
			&	i_rField
		,	Index_For<decltype(i_rField)>
				i_nIndex
		)
		noexcept
	->	decltype(i_rField)
	{	return
		(	i_rField
		<<=	i_nIndex
		.	get()
		);
	}

	[[nodiscard]]
	auto constexpr
	(	operator <<
	)	(	::std::integral auto
				i_nField
		,	Index_For<decltype(i_nField)>
				i_nIndex
		)
		noexcept
	->	decltype(i_nField)
	{	return
		(	i_nField
		<<=	i_nIndex
		);
	}

	template
		<	auto
				t_nWidth
		>
	[[nodiscard]]
	auto constexpr
	(	Power
	)	(	Index<t_nWidth>
				i_nIndex
		)
	->	UInt<t_nWidth>
	{	return
		static_cast<UInt<t_nWidth>>
		(	UInt<t_nWidth>{1u}
		<<	i_nIndex
		);
	}
}
