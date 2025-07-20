export module Meta.Bit.Index.Shift;

import Meta.Bit.Index;
import Meta.Arithmetic.Integer;

import std;

export namespace
	Meta::Bit
{
	auto constexpr inline
	(	operator>>=
	)	(	::std::integral auto
			&	i_rField
		,	Index_For<decltype(i_rField)>
				i_vIndex
		)
		noexcept
	->	decltype(i_rField)
	{	return
		(	i_rField
		>>=	i_vIndex
		.	get()
		);
	}

	[[nodiscard]]
	auto constexpr inline
	(	operator>>
	)	(	::std::integral auto
				i_vField
		,	Index_For<decltype(i_vField)>
				i_vIndex
		)
		noexcept
	->	decltype(i_vField)
	{	return
		(	i_vField
		>>=	i_vIndex
		);
	}

	auto constexpr inline
	(	operator<<=
	)	(	::std::integral auto
			&	i_rField
		,	Index_For<decltype(i_rField)>
				i_vIndex
		)
		noexcept
	->	decltype(i_rField)
	{	return
		(	i_rField
		<<=	i_vIndex
		.	get()
		);
	}

	[[nodiscard]]
	auto constexpr inline
	(	operator<<
	)	(	::std::integral auto
				i_vField
		,	Index_For<decltype(i_vField)>
				i_vIndex
		)
		noexcept
	->	decltype(i_vField)
	{	return
		(	i_vField
		<<=	i_vIndex
		);
	}

	template
		<	auto
				t_vWidth
		>
	[[nodiscard]]
	auto constexpr inline
	(	Power
	)	(	Index<t_vWidth>
				i_vIndex
		)
		noexcept
	->	UInt<t_vWidth>
	{	return
		static_cast<UInt<t_vWidth>>
		(	UInt<t_vWidth>{1u}
		<<	i_vIndex
		);
	}

	template
		<	auto
				t_vWidth
		>
	[[nodiscard]]
	auto constexpr inline
	(	AntiPower
	)	(	Index<t_vWidth>
				i_vIndex
		)
		noexcept
	->	UInt<t_vWidth>
	{	return
		static_cast<UInt<t_vWidth>>
		(	compl
			Power
			(	i_vIndex
			)
		);
	}
}
