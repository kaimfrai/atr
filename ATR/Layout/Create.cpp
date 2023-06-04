export module ATR.Layout.Create;

import ATR.Layout.Bit;
import ATR.Layout.Empty;
import ATR.Layout.Fork;
import ATR.Layout.ValidateOffsets;
import ATR.Layout.Value;
import ATR.Layout.Group;
import ATR.Member.Config;
import ATR.Member.Constants;

import Meta.ID;
import Meta.Memory.Alignment;
import Meta.Token.Type;

import Std;

using ::Meta::ProtoID;
using ::Meta::Memory::Alignment;
using ::Meta::RestoreTypeToken;
using ::Meta::TypeToken;

using namespace ::Meta::Literals;

namespace
	ATR::Layout
{
	[[nodiscard]]
	auto constexpr inline
	(	MakeFork
	)	()
		noexcept
	->	Empty
	{	return
		{};
	}

	template
		<	typename
				t_tData
		>
	[[nodiscard]]
	auto constexpr inline
	(	MakeFork
	)	(	TypeToken<t_tData>
		)
		noexcept
	->	Value<t_tData>
	{	return
		{};
	}

	template
		<	typename
			...	t_tpData
		>
	[[nodiscard]]
	auto constexpr inline
	(	MakeFork
	)	(	TypeToken<t_tpData>
			...
		)
		noexcept
	->	Fork
		<	t_tpData
			...
		>
	{	return
		{};
	}

	template
		<	typename
				t_tNorth
		,	typename
				t_tSouth
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator+
	)	(	t_tNorth
		,	t_tSouth
		)
		noexcept
	->	Group
		<	t_tNorth
		,	t_tSouth
		>
	{	return
		{};
	}

	template
		<	typename
				t_tNorth
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator+
	)	(	t_tNorth
		,	Empty
		)
		noexcept
	->	t_tNorth
	{	return
		{};
	}

	template
		<	typename
				t_tSouth
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator+
	)	(	Empty
		,	t_tSouth
		)
		noexcept
	->	t_tSouth
	{	return
		{};
	}

	[[nodiscard]]
	auto constexpr inline
	(	operator+
	)	(	Empty
		,	Empty
		)
		noexcept
	->	Empty
	{	return
		{};
	}
}

export namespace
	ATR::Layout
{
	[[nodiscard]]
	auto constexpr inline
	(	CreateLayout
	)	(	ProtoID auto
				i_vTypeName
		)
		noexcept
	{
		auto static constexpr
		&	rLayout
		=	Member::Config_Of
			<	decltype(i_vTypeName)
			>
			.	Layout
		;

		auto static constexpr
			vCount0
		=	rLayout
			.	Counter
				(	0_align
				)
		;
		auto static constexpr
			vBitTypeCount
		=	(	rLayout
				.	Counter
					(	1_align
					)
			+	rLayout
				.	Counter
					(	2_align
					)
			+	rLayout
				.	Counter
					(	3_align
					)
			)
		;
		auto static constexpr
			vCount4
		=	rLayout
			.	Counter
				(	4_align
				)
		;
		auto static constexpr
			vCount5
		=	rLayout
			.	Counter
				(	5_align
				)
		;
		auto static constexpr
			vCount6
		=	rLayout
			.	Counter
				(	6_align
				)
		;
		auto static constexpr
			vCount7
		=	rLayout
			.	Counter
				(	7_align
				)
		;

		auto const
			vBit
		=	[]	<	::std::size_t
					...	t_vpBitIndex
				>(	::std::index_sequence
					<	t_vpBitIndex
						...
					>
				)
			{
				if	constexpr
					(	sizeof...
						(	t_vpBitIndex
						)
					>	0uz
					)
				{	return
					Bit
					<	(	...
						+	rLayout
							.	Buffer
								[	vCount0
								+	t_vpBitIndex
								]
							.	GetSize
								()
						)
					>{};
				}
				else
				{	return
					Empty
					{};
				}
			}(	::std::make_index_sequence
				<	vBitTypeCount
				>{}
			)
		;

		auto const
			fMakeFork
		=	[]	<	::std::size_t
						t_vOffset
				,	::std::size_t
					...	t_vpIndex
				>(	::std::index_sequence
					<	t_vOffset
					>
				,	::std::index_sequence
					<	t_vpIndex
						...
					>
				)
			{	return
				MakeFork
				(	RestoreTypeToken
					<	rLayout
						.	Buffer
							[	t_vOffset
							+	t_vpIndex
							]
					>
					...
				);
			}
		;

		return
			vBit
		+	fMakeFork
			(	::std::index_sequence<vCount0 + vBitTypeCount>{}
			,	::std::make_index_sequence<vCount4>{}
			)
		+	fMakeFork
			(	::std::index_sequence<vCount0 + vBitTypeCount + vCount4>{}
			,	::std::make_index_sequence<vCount5>{}
			)
		+	fMakeFork
			(	::std::index_sequence<vCount0 + vBitTypeCount + vCount4 + vCount5>{}
			,	::std::make_index_sequence<vCount6>{}
			)
		+	fMakeFork
			(	::std::index_sequence<vCount0 + vBitTypeCount + vCount4 + vCount5 + vCount6>{}
			,	::std::make_index_sequence<vCount7>{}
			)
		;
	}
}
