export module ATR.Offset.BoolArray;

import ATR.Offset.FieldArray;
import ATR.Offset.Member;

import Meta.Bit.Field;
import Meta.Memory.Size;
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
				t_vOffset
		,	USize
				t_vExtent
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator->*
	)	(	::std::byte
			(&	i_rObject
			)	[]
		,	Member
			<	t_vOffset
			,	bool[t_vExtent]
			>
		)
		noexcept
	->	decltype(auto)
	{	return
			i_rObject
		->*	Member
			<	t_vOffset
			,	Field<1_bit>
					[	t_vExtent
					]
			>{}
		;
	}

	template
		<	auto
				t_vOffset
		,	USize
				t_vExtent
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator->*
	)	(	::std::byte const
			(&	i_rObject
			)	[]
		,	Member
			<	t_vOffset
			,	bool
					[	t_vExtent
					]
			>
		)
		noexcept
	->	decltype(auto)
	{	return
			i_rObject
		->*	Member
			<	t_vOffset
			,	Field<1_bit>
					[	t_vExtent
					]
			>{}
		;
	}
}
