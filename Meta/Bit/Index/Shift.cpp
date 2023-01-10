export module Meta.Bit.Index.Shift;

import Meta.Bit.Index;
import Meta.Arithmetic.Integer;
import Meta.Memory.Size;

import Std;

export namespace
	Meta::Bit
{
	[[nodiscard]]
	auto constexpr
	(	operator >>
	)	(	::std::integral auto
				i_nField
		,	Index<Memory::SizeOf<decltype(i_nField)>>
				i_nIndex
		)
		noexcept
	->	decltype(i_nField)
	{	return
		static_cast<decltype(i_nField)>
		(	i_nField
		>>	i_nIndex
		.	get()
		);
	}

	auto constexpr
	(	operator >>=
	)	(	::std::integral auto
			&	i_rField
		,	Index<Memory::SizeOf<decltype(i_rField)>>
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
	(	operator <<
	)	(	::std::integral auto
				i_nField
		,	Index<Memory::SizeOf<decltype(i_nField)>>
				i_nIndex
		)
		noexcept
	->	decltype(i_nField)
	{	return
		static_cast<decltype(i_nField)>
		(	i_nField
		<<	i_nIndex
		.	get()
		);
	}

	auto constexpr
	(	operator <<=
	)	(	::std::integral auto
			&	i_rField
		,	Index<Memory::SizeOf<decltype(i_rField)>>
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
		<<	i_nIndex.get()
		);
	}
}
