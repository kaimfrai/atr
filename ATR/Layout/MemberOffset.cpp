export module ATR.Layout.MemberOffset;

import ATR.Offset.Member;
import ATR.Offset.Array;
import ATR.Offset.Bool;
import ATR.Offset.BoolArray;
import ATR.Offset.Field;
import ATR.Offset.FieldArray;
import ATR.Offset.Layout;
import ATR.Offset.Mutable;
import ATR.Offset.Object;

import Meta.Token.Specifier;
import Meta.Memory.Size;

using ::Meta::BitSize;
using ::Meta::Specifier::Mut;

export namespace
	ATR
{
	template
		<	BitSize
				t_nOffset
		,	typename
				t_tData
		>
	struct
		MemberOffset
	:	MemberOffset
		<	t_nOffset
		,	t_tData const
		>
	{
		using
			MemberOffset
			<	t_nOffset
			,	t_tData const
			>
		::	operator ()
		;

		[[nodiscard]]
		static auto constexpr
		(	operator ()
		)	(	auto
				*	i_aObject
			)
			noexcept
		->	decltype
			(	i_aObject
			->*	Offset::Member
				<	t_nOffset
				,	t_tData
				>{}
			)
		{	return
				i_aObject
			->*	Offset::Member
				<	t_nOffset
				,	t_tData
				>{}
			;
		}
	};

	template
		<	BitSize
				t_nOffset
		,	typename
				t_tData
		>
	struct
		MemberOffset
		<	t_nOffset
		,	t_tData const
		>
	{
		[[nodiscard]]
		static auto constexpr
		(	operator ()
		)	(	auto const
				*	i_aObject
			)
			noexcept
		->	decltype
			(	i_aObject
			->*	Offset::Member
				<	t_nOffset
				,	t_tData const
				>{}
			)
		{	return
				i_aObject
			->*	Offset::Member
				<	t_nOffset
				,	t_tData const
				>{}
			;
		}
	};

	template
		<	BitSize
				t_nOffset
		,	typename
				t_tData
		>
	struct
		MemberOffset
		<	t_nOffset
		,	Mut<t_tData>
		>
	{
		[[nodiscard]]
		static auto constexpr
		(	operator ()
		)	(	auto const
				*	i_aObject
			)
			noexcept
		->	decltype
			(	i_aObject
			->*	Offset::Member
				<	t_nOffset
				,	Mut<t_tData>
				>{}
			)
		{	return
				i_aObject
			->*	Offset::Member
				<	t_nOffset
				,	Mut<t_tData>
				>{}
			;
		}
	};
}
