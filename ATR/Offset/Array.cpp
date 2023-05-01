export module ATR.Offset.Array;

import ATR.Offset.Member;

import Meta.Memory.Size;
import Meta.Size;

import Std;

using ::Meta::USize;
using ::Meta::BitSize;

export namespace
	ATR::Offset
{
	template
		<	BitSize
				t_nOffset
		,	typename
				t_tData
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
			,	t_tData
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
			,	::std::array
				<	t_tData
				,	t_nExtent
				>
			>{}
		;
	}

	template
		<	BitSize
				t_nOffset
		,	typename
				t_tData
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
			,	t_tData const
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
			,	::std::array
				<	t_tData
				,	t_nExtent
				>	const
			>{}
		;
	}
}
