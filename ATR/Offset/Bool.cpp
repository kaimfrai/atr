export module ATR.Offset.Bool;

import ATR.Offset.Field;
import ATR.Offset.Member;

import Meta.Memory.Size;
import Meta.Bit.Field;

import Std;

using ::Meta::Bit::Field;
using ::Meta::BitSize;

using namespace ::Meta::Literals;

export namespace
	ATR::Offset
{
	template
		<	BitSize
				t_nOffset
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	::std::byte
			*	i_aObject
		,	Member
			<	t_nOffset
			,	bool
			>
		)
		noexcept
	->	decltype(auto)
	{	return
			i_aObject
		->*	Member
			<	t_nOffset
			,	Field<1_bit>
			>{}
		;
	}

	template
		<	BitSize
				t_nOffset
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	::std::byte const
			*	i_aObject
		,	Member
			<	t_nOffset
			,	bool const
			>
		)
		noexcept
	->	bool
	{	return
		static_cast<bool>
		(	i_aObject
		->*	Member
			<	t_nOffset
			,	Field<1_bit> const
			>{}
		);
	}
}
