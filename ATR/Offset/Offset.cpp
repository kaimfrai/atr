export module ATR.Member.Offset;

import ATR.Offset.Array;
import ATR.Offset.Bool;
import ATR.Offset.BoolArray;
import ATR.Offset.Field;
import ATR.Offset.FieldArray;
import ATR.Offset.Layout;
import ATR.Offset.Member;
import ATR.Offset.Mutable;
import ATR.Offset.Object;

import Meta.Memory.Size;
import Meta.Token.Specifier;

using ::Meta::BitSize;
using ::Meta::Specifier::Mut;

export namespace
	ATR::Member
{
	template
		<	BitSize
				t_nOffset
		,	typename
				t_tData
		>
	struct
		Offset
	:	Offset
		<	t_nOffset
		,	t_tData const
		>
	{
		using
			Offset
			<	t_nOffset
			,	t_tData const
			>
		::	operator()
		;

		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	auto
				&	i_rObject
			)
			noexcept
		->	decltype(auto)
		{	return
				i_rObject
			->*	::ATR::Offset::Member
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
		Offset
		<	t_nOffset
		,	t_tData const
		>
	{
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	auto const
				&	i_rObject
			)
			noexcept
		->	decltype(auto)
		{	return
				i_rObject
			->*	::ATR::Offset::Member
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
		Offset
		<	t_nOffset
		,	Mut<t_tData>
		>
	{
		[[nodiscard]]
		static auto constexpr
		(	operator()
		)	(	auto const
				&	i_rObject
			)
			noexcept
		->	decltype(auto)
		{	return
				i_rObject
			->*	::ATR::Offset::Member
				<	t_nOffset
				,	Mut<t_tData>
				>{}
			;
		}
	};
}
