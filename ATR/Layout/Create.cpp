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
	auto constexpr
	(	MakeBit
	)	()
		noexcept
	->	Empty
	{	return
		{};
	}

	template
		<	typename
			...	t_tpData
		>
	[[nodiscard]]
	auto constexpr
	(	MakeBit
	)	(	TypeToken<t_tpData>
			...
		)
		noexcept
	->	Bit<t_tpData...>
	{	return
		{};
	}

	[[nodiscard]]
	auto constexpr
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
	auto constexpr
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
	auto constexpr
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
	auto constexpr
	(	MakeGroup
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
	auto constexpr
	(	MakeGroup
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
	auto constexpr
	(	MakeGroup
	)	(	Empty
		,	t_tSouth
		)
		noexcept
	->	t_tSouth
	{	return
		{};
	}

	[[nodiscard]]
	auto constexpr
	(	MakeGroup
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
	template
		<	Alignment
				t_vAlignment
			=	Member::MaxAlign
		,	::std::uint8_t
				t_vOffset
			=	0u
		>
	[[nodiscard]]
	auto constexpr
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

		if	constexpr
			(	t_vAlignment
			<=	3_align
			)
		{
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

			return
			[]	<	::std::size_t
					...	t_vpBitIndex
				>(	::std::index_sequence
					<	t_vpBitIndex
						...
					>
				)
			{	return
				MakeBit
				(	RestoreTypeToken
					<	rLayout
						.	Buffer
							[	t_vOffset
							+	t_vpBitIndex
							]
					>
					...
				);
			}(	::std::make_index_sequence
				<	vBitTypeCount
				>{}
			);
		}
		else
		{
			auto static constexpr
				vAlignCount
			=	rLayout
				.	Counter
				(	t_vAlignment
				)
			;

			auto const
				vFork
			=	[]	<	::std::size_t
						...	t_vpIndex
					>(	::std::index_sequence
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
				}(	::std::make_index_sequence
					<	vAlignCount
					>{}
				)
			;
			return
			MakeGroup
			(	vFork
			,	CreateLayout
				<	Alignment
					{	t_vAlignment
						.	Value
					-	1z
					}
				,	(	t_vOffset
					+	vAlignCount
					)
				>(	i_vTypeName
				)
			);
		}
	}
}
