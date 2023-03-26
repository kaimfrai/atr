export module ATR.Offset.BoolArray;

import ATR.Offset.FieldArray;
import ATR.Offset.Member;

import Meta.Memory.Size;
import Meta.Bit.Field;
import Meta.Size;

import Std;

using ::Meta::Bit::Field;
using ::Meta::USize;

using namespace ::Meta::Literals;

export namespace
	ATR::Offset
{
	template
		<	auto
				t_nOffset
		,	USize
				t_nExtent
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	::std::byte
			(&	i_rObject
			)	[]
		,	Member
			<	t_nOffset
			,	bool[t_nExtent]
			>
		)
		noexcept
	->	decltype(auto)
	{	return
			i_rObject
		->*	Member
			<	t_nOffset
			,	Field<1_bit>
					[	t_nExtent
					]
			>{}
		;
	}

	template
		<	auto
				t_nOffset
		,	USize
				t_nExtent
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	::std::byte const
			(&	i_rObject
			)	[]
		,	Member
			<	t_nOffset
			,	bool const
					[	t_nExtent
					]
			>
		)
		noexcept
	->	decltype(auto)
	{	return
			i_rObject
		->*	Member
			<	t_nOffset
			,	Field<1_bit> const
					[	t_nExtent
					]
			>{}
		;
	}
}
