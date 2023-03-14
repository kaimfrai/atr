export module ATR.Offset.Layout;

import ATR.Offset.Bool;
import ATR.Offset.BoolArray;
import ATR.Offset.Field;
import ATR.Offset.FieldArray;
import ATR.Offset.Mutable;
import ATR.Offset.Member;
import ATR.Layout;

import Meta.Memory.Size;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Constraint;
import Meta.Token.Specifier;

import Std;

using ::Meta::BitSize;
using ::Meta::Specifier::Mut;
using ::Meta::Memory::Constraint_Of;

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
	)	(	Layout<t_tMember> const
			*	i_aObject
		,	Member<0_bit, ::std::add_const_t<t_tMember>>
		)
		noexcept
	->	decltype(auto)
	{	return
		(	i_aObject
		->	Value
		);
	}

	template
		<	typename
				t_tMember
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	Layout<Mut<t_tMember>> const
			*	i_aObject
		,	Member<0_bit, Mut<t_tMember>>
		)
		noexcept
	->	decltype(auto)
	{	return
		(	i_aObject
		->	Value
		);
	}

	template
		<	typename
				t_tMember
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	Layout<t_tMember>
			*	i_aObject
		,	Member<0_bit, t_tMember>
		)
		noexcept
	->	decltype(auto)
	{	return
		(	i_aObject
		->	Value
		);
	}

	template
		<	typename
			...	t_tpMember
		,	BitSize
				t_nOffset
		,	typename
				t_tData
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	Layout<t_tpMember...>
			*	i_aObject
		,	Member<t_nOffset, t_tData>
				i_vMember
		)
		noexcept
	->	decltype(auto)
		requires
		(	sizeof...(t_tpMember)
		>=	2uz
		)
	{
		if	constexpr
			(	requires
				{	+i_aObject->Buffer;
				}
			)
		{	return
				+i_aObject->Buffer
			->*	i_vMember
			;
		}
		else
		{	auto constexpr
				vNorthSize
			=	Constraint_Of
				<	typename
						Layout<t_tpMember...>
					::	NorthType
				>
			.	Size
			;
			if	constexpr
				(	vNorthSize
				>	t_nOffset
				)
			{	return
					&i_aObject->NorthArea
				->*	i_vMember
				;
			}
			else
			{	return
					&i_aObject->SouthArea
				->*	Member
					<	t_nOffset
					-	vNorthSize
					,	t_tData
					>{}
				;
			}
		}
	}

	template
		<	typename
			...	t_tpMember
		,	BitSize
				t_nOffset
		,	typename
				t_tData
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	Layout<t_tpMember...> const
			*	i_aObject
		,	Member<t_nOffset, t_tData const>
				i_vMember
		)
		noexcept
	->	decltype(auto)
		requires
		(	sizeof...(t_tpMember)
		>=	2uz
		)
	{
		if	constexpr
			(	requires
				{	+i_aObject->Buffer;
				}
			)
		{	return
				static_cast<::std::byte const*>
				(	+i_aObject->Buffer
				)
			->*	i_vMember
			;
		}
		else
		{	auto constexpr
				vNorthSize
			=	Constraint_Of
				<	typename
						Layout<t_tpMember...>
					::	NorthType
				>
			.	Size
			;
			if	constexpr
				(	vNorthSize
				>	t_nOffset
				)
			{	return
					&i_aObject->NorthArea
				->*	i_vMember
				;
			}
			else
			{	return
					&i_aObject->SouthArea
				->*	Member
					<	t_nOffset
					-	vNorthSize
					,	t_tData const
					>{}
				;
			}
		}
	}

	template
		<	typename
			...	t_tpMember
		,	BitSize
				t_nOffset
		,	typename
				t_tData
		>
	[[nodiscard]]
	auto constexpr
	(	operator->*
	)	(	Layout<t_tpMember...> const
			*	i_aObject
		,	Member<t_nOffset, Mut<t_tData>>
				i_vMember
		)
		noexcept
	->	decltype(auto)
		requires
		(	sizeof...(t_tpMember)
		>=	2uz
		)
	{
		if	constexpr
			(	requires
				{	+i_aObject->Buffer;
				}
			)
		{	return
				static_cast<::std::byte const*>
				(	+i_aObject->Buffer
				)
			->*	i_vMember
			;
		}
		else
		{	auto constexpr
				vNorthSize
			=	Constraint_Of
				<	typename
						Layout<t_tpMember...>
					::	NorthType
				>
			.	Size
			;
			if	constexpr
				(	vNorthSize
				>	t_nOffset
				)
			{	return
					&i_aObject->NorthArea
				->*	i_vMember
				;
			}
			else
			{	return
					&i_aObject->SouthArea
				->*	Member
					<	t_nOffset
					-	vNorthSize
					,	Mut<t_tData>
					>{}
				;
			}
		}
	}
}
