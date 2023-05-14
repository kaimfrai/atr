export module ATR.Layout.Create;

import ATR.Layout.Bit;
import ATR.Layout.Empty;
import ATR.Layout.Fork;
import ATR.Layout.ValidateOffsets;
import ATR.Layout.Value;
import ATR.Layout.Group;
import ATR.Member.Config;

import Meta.Memory.Alignment;
import Meta.Token.Type;

import Std;

using ::Meta::Memory::Alignment;
using ::Meta::RestoreTypeToken;
using ::Meta::TypeToken;

using namespace ::Meta::Literals;

namespace
	ATR::Layout
{
	template
		<	Alignment
				t_vAlignment
		>
	struct
		AlignToken
	{};

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
	[[nodiscard]]
	auto constexpr
	(	CreateLayout
	)	(	auto
				i_vTypeName
		)
		noexcept
	{
		auto static constexpr
		&	rLayout
		=	Member::Config_Of
			<	i_vTypeName
			>
			.	Layout
		;

		auto static constexpr
			fMakeBit
		=	[]
			{	return
				[]	<	::std::size_t
						...	t_vpAlign4Index
					,	::std::size_t
						...	t_vpAlign2Index
					,	::std::size_t
						...	t_vpAlign1Index
					>(	::std::index_sequence
						<	t_vpAlign4Index
							...
						>
					,	::std::index_sequence
						<	t_vpAlign2Index
							...
						>
					,	::std::index_sequence
						<	t_vpAlign1Index
							...
						>
					)
				{	return
					MakeBit
					(	RestoreTypeToken
						<	rLayout
								[	3_align
								,	t_vpAlign4Index
								]
						>
						...
					,	RestoreTypeToken
						<	rLayout
								[	2_align
								,	t_vpAlign2Index
								]
						>
						...
					,	RestoreTypeToken
						<	rLayout
								[	1_align
								,	t_vpAlign1Index
								]
						>
						...
					);
				}(	::std::make_index_sequence
					<	rLayout
						.	Count
							(	3_align
							)
					>{}
				,	::std::make_index_sequence
					<	rLayout
						.	Count
							(	2_align
							)
					>{}
				,	::std::make_index_sequence
					<	rLayout
						.	Count
							(	1_align
							)
					>{}
				);
			}
		;

		auto static constexpr
			fMakeFork
		=	[]	<	Alignment
						t_vAlignment
				>(	AlignToken
					<	t_vAlignment
					>
				)
			{
				auto static constexpr
				&	rAlignTypes
				=	rLayout
						[	t_vAlignment
						]
				;

				return
				[]	<	::std::size_t
						...	t_vpIndex
					>(	::std::index_sequence
						<	t_vpIndex
							...
						>
					)
				{	return
					MakeFork
					(	RestoreTypeToken
						<	rAlignTypes
								[	t_vpIndex
								]
						>
						...
					);
				}(	::std::make_index_sequence
					<	rAlignTypes
						.	size
							()
					>{}
				);
			}
		;
		return
		ValidateOffsets
		(	MakeGroup
			(	fMakeFork
				(	AlignToken<7_align>
					{}
				)
			,	MakeGroup
				(	fMakeFork
					(	AlignToken<6_align>
						{}
					)
				,	MakeGroup
					(	fMakeFork
						(	AlignToken<5_align>
							{}
						)
					,	MakeGroup
						(	fMakeFork
							(	AlignToken<4_align>
								{}
							)
						,	fMakeBit
							()
						)
					)
				)
			)
		);
	}
}
