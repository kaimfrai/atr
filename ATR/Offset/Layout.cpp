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

import Std;

using ::ATR::Layout::Bit;
using ::ATR::Layout::Fork;
using ::ATR::Layout::Group;
using ::ATR::Layout::Value;

using ::Meta::BitSize;
using ::Meta::ByteSize;
using ::Meta::Memory::BitAlign_Of;
using ::Meta::Memory::BitSize_Of;
using ::Meta::Memory::ByteWidth;

using namespace ::Meta::Literals;

export namespace
	ATR::Offset
{
	template
		<	typename
				t_tMember
		,	::std::size_t
				t_vExtent
		,	BitSize
				t_vOffset
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator->*
	)	(	Value<t_tMember[t_vExtent]> const
			&	i_rObject
		,	Member<t_vOffset, t_tMember>
		)
		noexcept
	->	decltype(auto)
	{	return
		(	i_rObject
			.	Data
				[	static_cast<ByteWidth<t_tMember>>
					(	t_vOffset
					)
					.	Value
				]
		);
	}

	template
		<	typename
				t_tMember
		,	::std::size_t
				t_vExtent
		,	BitSize
				t_vOffset
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator->*
	)	(	Value<t_tMember[t_vExtent]>
			&	i_rObject
		,	Member<t_vOffset, t_tMember>
		)
		noexcept
	->	decltype(auto)
	{	return
		(	i_rObject
			.	Data
				[	static_cast<ByteWidth<t_tMember>>
					(	t_vOffset
					)
					.	Value
				]
		);
	}

	template
		<	ByteSize
				t_vBytes
		,	BitSize
				t_vOffset
		,	typename
				t_tData
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator->*
	)	(	Bit<t_vBytes>
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
		<	ByteSize
				t_vBytes
		,	BitSize
				t_vOffset
		,	typename
				t_tData
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator->*
	)	(	Bit<t_vBytes> const
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
	auto constexpr inline
	(	operator->*
	)	(	Fork<t_tpData...>
			&	i_rObject
		,	Member<t_vOffset, t_tData>
				i_vMember
		)
		noexcept
	->	decltype(auto)
	{
		auto static constexpr
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
	auto constexpr inline
	(	operator->*
	)	(	Fork<t_tpData...> const
			&	i_rObject
		,	Member<t_vOffset, t_tData>
				i_vMember
		)
		noexcept
	->	decltype(auto)
	{
		auto static constexpr
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
				t_tNorth
		,	typename
				t_tSouth
		,	BitSize
				t_vOffset
		,	typename
				t_tData
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator->*
	)	(	Group<t_tNorth, t_tSouth>
			&	i_rObject
		,	Member<t_vOffset, t_tData>
				i_vMember
		)
		noexcept
	->	decltype(auto)
	{
		auto static constexpr
			vNorthSize
		=	BitSize_Of
			<	typename
				Group<t_tNorth, t_tSouth>
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
				t_tNorth
		,	typename
				t_tSouth
		,	BitSize
				t_vOffset
		,	typename
				t_tData
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator->*
	)	(	Group<t_tNorth, t_tSouth> const
			&	i_rObject
		,	Member<t_vOffset, t_tData>
				i_vMember
		)
		noexcept
	->	decltype(auto)
	{
		auto static constexpr
			vNorthSize
		=	BitSize_Of
			<	typename
				Group<t_tNorth, t_tSouth>
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
}
