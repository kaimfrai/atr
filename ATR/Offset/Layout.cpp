export module ATR.Offset.Layout;

import ATR.Layout.Bit;
import ATR.Layout.Fork;
import ATR.Layout.Group;
import ATR.Layout.Value;
import ATR.Offset.Member;

import Meta.Memory.Alignment;
import Meta.Memory.Constraint;
import Meta.Memory.Size.Compare;
import Meta.Memory.Size;
import Meta.Token.Specifier;

import Std;

using ::ATR::Layout::Bit;
using ::ATR::Layout::Fork;
using ::ATR::Layout::Group;
using ::ATR::Layout::Value;

using ::Meta::BitSize;
using ::Meta::Memory::BitAlign_Of;
using ::Meta::Memory::BitSize_Of;
using ::Meta::Specifier::Mut;

using namespace ::Meta::Literals;

export namespace
	ATR::Offset
{
	template
		<	typename
				t_tMember
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	Value<t_tMember> const
			&	i_rObject
		,	Member<0_bit, ::std::add_const_t<t_tMember>>
		)
		noexcept
	->	decltype(auto)
	{	return
		(	i_rObject
			.	Data
		);
	}

	template
		<	typename
				t_tMember
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	Value<Mut<t_tMember>> const
			&	i_rObject
		,	Member<0_bit, Mut<t_tMember>>
		)
		noexcept
	->	decltype(auto)
	{	return
		(	i_rObject
			.	Data
		);
	}

	template
		<	typename
				t_tMember
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	Value<t_tMember>
			&	i_rObject
		,	Member<0_bit, t_tMember>
		)
		noexcept
	->	decltype(auto)
	{	return
		(	i_rObject
			.	Data
		);
	}

	template
		<	typename
			...	t_tpBit
		,	BitSize
				t_vOffset
		,	typename
				t_tData
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	Bit<t_tpBit...>
			&	i_rObject
		,	Member<t_vOffset, t_tData>
				i_vMember
		)
		noexcept
	->	decltype(auto)
	{
		static_assert
		(	(	BitAlign_Of<t_tData>
			>	0_align
			)
		and	(	BitAlign_Of<t_tData>
			<	4_align
			)
		,	"Attempted to access misaligned bit field!"
		);

		return
			i_rObject
			.	Buffer
		->*	i_vMember
		;
	}

	template
		<	typename
			...	t_tpBit
		,	BitSize
				t_vOffset
		,	typename
				t_tData
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	Bit<t_tpBit...> const
			&	i_rObject
		,	Member<t_vOffset, t_tData const>
				i_vMember
		)
		noexcept
	->	decltype(auto)
	{
		static_assert
		(	(	BitAlign_Of<t_tData>
			>	0_align
			)
		and	(	BitAlign_Of<t_tData>
			<	4_align
			)
		,	"Attempted to access misaligned bit field!"
		);

		return
			static_cast<::std::byte const(&)[]>
			(	i_rObject
				.	Buffer
			)
		->*	i_vMember
		;
	}

	template
		<	typename
			...	t_tpBit
		,	BitSize
				t_vOffset
		,	typename
				t_tData
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	Bit<t_tpBit...> const
			&	i_rObject
		,	Member<t_vOffset, Mut<t_tData>>
				i_vMember
		)
		noexcept
	->	decltype(auto)
	{	static_assert
		(	(	BitAlign_Of<t_tData>
			>	0_align
			)
		and	(	BitAlign_Of<t_tData>
			<	4_align
			)
		,	"Attempted to access misaligned bit field!"
		);

		return
			static_cast<::std::byte const(&)[]>
			(	i_rObject
				.	Buffer
			)
		->*	i_vMember
		;
	}

	template
		<	typename
			...	t_tpData
		,	BitSize
				t_vOffset
		,	typename
				t_tData
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	Fork<t_tpData...>
			&	i_rObject
		,	Member<t_vOffset, t_tData>
				i_vMember
		)
		noexcept
	->	decltype(auto)
	{
		auto constexpr
			vNorthSize
		=	BitSize_Of
			<	typename
				Fork<t_tpData...>
				::	NorthType
			>
		;
		if	constexpr
			(	vNorthSize
			>	t_vOffset
			)
		{	return
				i_rObject
				.	NorthArea
			->*	i_vMember
			;
		}
		else
		{	return
				i_rObject
				.	SouthArea
			->*	Member
				<	t_vOffset
				-	vNorthSize
				,	t_tData
				>{}
			;
		}
	}

	template
		<	typename
			...	t_tpData
		,	BitSize
				t_vOffset
		,	typename
				t_tData
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	Fork<t_tpData...> const
			&	i_rObject
		,	Member<t_vOffset, t_tData const>
				i_vMember
		)
		noexcept
	->	decltype(auto)
	{
		auto constexpr
			vNorthSize
		=	BitSize_Of
			<	typename
				Fork<t_tpData...>
				::	NorthType
			>
		;
		if	constexpr
			(	vNorthSize
			>	t_vOffset
			)
		{	return
				i_rObject
				.	NorthArea
			->*	i_vMember
			;
		}
		else
		{	return
				i_rObject
				.	SouthArea
			->*	Member
				<	t_vOffset
				-	vNorthSize
				,	t_tData const
				>{}
			;
		}
	}

	template
		<	typename
			...	t_tpData
		,	BitSize
				t_vOffset
		,	typename
				t_tData
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	Fork<t_tpData...> const
			&	i_rObject
		,	Member<t_vOffset, Mut<t_tData>>
				i_vMember
		)
		noexcept
	->	decltype(auto)
	{
		auto constexpr
			vNorthSize
		=	BitSize_Of
			<	typename
				Fork<t_tpData...>
				::	NorthType
			>
		;
		if	constexpr
			(	vNorthSize
			>	t_vOffset
			)
		{	return
				i_rObject
				.	NorthArea
			->*	i_vMember
			;
		}
		else
		{	return
				i_rObject
				.	SouthArea
			->*	Member
				<	t_vOffset
				-	vNorthSize
				,	Mut<t_tData>
				>{}
			;
		}
	}

	template
		<	typename
				t_tNorth
		,	typename
				t_tSouth
		,	BitSize
				t_vOffset
		,	typename
				t_tData
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	Group<t_tNorth, t_tSouth>
			&	i_rObject
		,	Member<t_vOffset, t_tData>
				i_vMember
		)
		noexcept
	->	decltype(auto)
	{
		auto constexpr
			vNorthSize
		=	(	BitSize_Of
				<	Group<t_tNorth, t_tSouth>
				>
			-	BitSize_Of
				<	t_tSouth
				>
			)
		;
		if	constexpr
			(	vNorthSize
			>	t_vOffset
			)
		{	return
				i_rObject
				.	NorthArea
			->*	i_vMember
			;
		}
		else
		{	return
				i_rObject
				.	SouthArea
			->*	Member
				<	t_vOffset
				-	vNorthSize
				,	t_tData
				>{}
			;
		}
	}

	template
		<	typename
				t_tNorth
		,	typename
				t_tSouth
		,	BitSize
				t_vOffset
		,	typename
				t_tData
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	Group<t_tNorth, t_tSouth> const
			&	i_rObject
		,	Member<t_vOffset, t_tData const>
				i_vMember
		)
		noexcept
	->	decltype(auto)
	{
		auto constexpr
			vNorthSize
		=	(	BitSize_Of
				<	Group<t_tNorth, t_tSouth>
				>
			-	BitSize_Of
				<	t_tSouth
				>
			)
		;
		if	constexpr
			(	vNorthSize
			>	t_vOffset
			)
		{	return
				i_rObject
				.	NorthArea
			->*	i_vMember
			;
		}
		else
		{	return
				i_rObject
				.	SouthArea
			->*	Member
				<	t_vOffset
				-	vNorthSize
				,	t_tData const
				>{}
			;
		}
	}

	template
		<	typename
				t_tNorth
		,	typename
				t_tSouth
		,	BitSize
				t_vOffset
		,	typename
				t_tData
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	Group<t_tNorth, t_tSouth> const
			&	i_rObject
		,	Member<t_vOffset, Mut<t_tData>>
				i_vMember
		)
		noexcept
	->	decltype(auto)
	{
		auto constexpr
			vNorthSize
		=	(	BitSize_Of
				<	Group<t_tNorth, t_tSouth>
				>
			-	BitSize_Of
				<	t_tSouth
				>
			)
		;
		if	constexpr
			(	vNorthSize
			>	t_vOffset
			)
		{	return
				i_rObject
				.	NorthArea
			->*	i_vMember
			;
		}
		else
		{	return
				i_rObject
				.	SouthArea
			->*	Member
				<	t_vOffset
				-	vNorthSize
				,	Mut<t_tData>
				>{}
			;
		}
	}
}
