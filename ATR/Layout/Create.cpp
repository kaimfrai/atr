export module ATR.Layout.Create;

import ATR.Layout.Bit;
import ATR.Layout.Empty;
import ATR.Layout.Fork;
import ATR.Layout.Group;
import ATR.Layout.ValidateOffsets;
import ATR.Layout.Value;
import ATR.Member.Config;
import ATR.Member.Constants;

import Meta.ID;
import Meta.Memory.Size;
import Meta.Token.Type;

import Std;

using ::Meta::BitSize;
using ::Meta::ProtoID;
using ::Meta::RestoreTypeEntity;
using ::Meta::Type;
using ::Meta::TypeToken;

using namespace ::Meta::Literals;

namespace
	ATR::Layout
{
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
			{}
		;
	}

	[[nodiscard]]
	auto constexpr
	(	MakeFork
	)	()
		noexcept
	->	Empty
	{	return
			{}
		;
	}

	template
		<	typename
				t_tEntity
		>
	[[nodiscard]]
	auto constexpr
	(	MakeFork
	)	(	TypeToken
			<	t_tEntity
			>
		)
		noexcept
	->	Value<t_tEntity>
	{	return
			{}
		;
	}

	template
		<	typename
			...	t_tpEntity
		>
	[[nodiscard]]
	auto constexpr
	(	MakeFork
	)	(	TypeToken
			<	t_tpEntity
			>
			...
		)
		noexcept
	->	Fork<t_tpEntity...>
	{	return
			{}
		;
	}

	template
		<	auto
				t_vTypeCounts
		>
	[[nodiscard]]
	auto constexpr inline
	(	CreateLayout
	)	()
		noexcept
	{	return
		[]	<	::std::size_t
				...	t_vpIndex
			>(	::std::index_sequence
				<	t_vpIndex
					...
				>
			)
		{	return
				MakeFork
				(	Type
					<	RestoreTypeEntity
						<	t_vTypeCounts
								[	t_vpIndex
								]
							.	Type
						>
							[	t_vTypeCounts
									[	t_vpIndex
									]
								.	Count
							]
					>
					...
				)
			;
		}(	::std::make_index_sequence
			<	t_vTypeCounts
				.	Count
			>{}
		);
	}

	template
		<	BitSize
				t_vBitCount
		>
	[[nodiscard]]
	auto constexpr inline
	(	CreateBitLayout
	)	()
		noexcept
	{	return
		Bit
		<	t_vBitCount
		>{};
	}

	template
		<>
	[[nodiscard]]
	auto constexpr inline
	(	CreateBitLayout
		<	0_bit
		>
	)	()
		noexcept
	{	return
		Empty
		{};
	}

	template
		<	ProtoID
				t_tTypeName
		,	::std::size_t
			...	t_vpIndex
		>
	[[nodiscard]]
	auto constexpr inline
	(	CreateLayout_For
	)	(	::std::index_sequence
			<	t_vpIndex
				...
			>
		)
		noexcept
	{
		auto static constexpr
		&	rLayout
		=	Member::Config_Of
			<	t_tTypeName
			>
			.	Layout
		;
		return
		ValidateOffsets
		((	CreateLayout
			<	rLayout
				.	AlignTypeCounts
				.	Buffer
					[	t_vpIndex
					]
			>()
		+	...
		+	CreateBitLayout
			<	rLayout
				.	BitCount
					()
			>()
		));
	}
}

export namespace
	ATR::Layout
{
	template
		<	ProtoID
				t_tTypeName
		>
	using
		CreateType
	=	decltype
		(	CreateLayout_For<t_tTypeName>
			(	::std::make_index_sequence<Member::AlignmentCount>
				{}
			)
		)
	;
}
