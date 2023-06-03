export module ATR.Member.Offset;

import ATR.Offset.Bool;
import ATR.Offset.BoolArray;
import ATR.Offset.Field;
import ATR.Offset.FieldArray;
import ATR.Offset.Layout;
import ATR.Offset.Member;
import ATR.Offset.Mutable;
import ATR.Offset.Object;
import ATR.Member.Info;

import Meta.Memory.Size;
import Meta.Token.Specifier;
import Meta.Token.Type;

using ::Meta::BitSize;
using ::Meta::Specifier::Mut;
using ::Meta::RestoreTypeEntity;

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
		auto static constexpr
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
		auto static constexpr
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
		auto static constexpr
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

	template
		<	Info
				t_vInfo
		>
	using
		Offset_For
	=	Offset
		<	t_vInfo
			.	Offset
		,	RestoreTypeEntity
			<	t_vInfo
				.	Type
			>
		>
	;
}
