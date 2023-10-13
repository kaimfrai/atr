export module ATR.Layout.Create;

import ATR.Layout.Fork;
import ATR.Member.Composition;
import ATR.Member.Constants;

import Meta.ID;
import Meta.Memory.Size;
import Meta.Token.Type;
import Meta.Token.TypeID;

import Std;

using ::Meta::ByteSize;
using ::Meta::ProtoID;
using ::Meta::RestoreTypeEntity;
using ::Meta::RestoreTypeToken;
using ::Meta::Type;
using ::Meta::TypeID;
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
	)	(	TypeToken<t_tNorth>
		,	TypeToken<t_tSouth>
		)
		noexcept
	->	TypeToken
		<	Fork
			<	t_tNorth
			,	t_tSouth
			>
		>
	{
		using
			tLayout
		=	Fork
			<	t_tNorth
			,	t_tSouth
			>
		;

		union
		{	alignas(tLayout)
			::std::byte
				Buffer
				[	sizeof(tLayout)
				]
			{};

			tLayout
				Layout
			;
		}	constexpr
			vUnion
		{};

		static_assert
		(	(	static_cast<void const*>
				(	::std::addressof
					(	vUnion
						.	Layout
						.	NorthArea
					)
				)
			==	static_cast<void const*>
				(	::std::addressof
					(	vUnion
						.	Buffer
							[	0uz
							]
					)
				)
			)
		,	"Unexpected offset in NorthArea!"
		);

		static_assert
		(	(	static_cast<void const*>
				(	::std::addressof
					(	vUnion
						.	Layout
						.	SouthArea
					)
				)
			==	static_cast<void const*>
				(	::std::addressof
					(	vUnion
						.	Buffer
							[	sizeof
								(	tLayout
									::	NorthArea
								)
							]
					)
				)
			)
		,	"Unexpected offset in SouthArea!"
		);

		static_assert
		(	::std::is_standard_layout_v
			<	tLayout
			>
		,	"Layouts are required to be standard layout!"
		);
		static_assert
		(	::std::is_trivially_default_constructible_v
			<	tLayout
			>
		,	"Layouts are required to be trivially constructible!"
		);
		static_assert
		(	::std::is_trivially_destructible_v
			<	tLayout
			>
		,	"Layouts are required to be trivially destructible!"
		);
		static_assert
		(	::std::is_trivially_copy_constructible_v
			<	tLayout
			>
		,	"Layouts are required to be trivially constructible!"
		);
		static_assert
		(	::std::is_trivially_move_constructible_v
			<	tLayout
			>
		,	"Layouts are required to be trivially constructible!"
		);

		return
			{}
		;
	}

	struct
		Empty
	{
		template
			<	typename
					t_tNorth
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	operator+
		)	(	TypeToken<t_tNorth>
			,	TypeToken<Empty>
			)
			noexcept
		->	TypeToken<t_tNorth>
		{	return
				{}
			;
		}
		template
			<	typename
					t_tSouth
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	operator+
		)	(	TypeToken<Empty>
			,	TypeToken<t_tSouth>
			)
			noexcept
		->	TypeToken<t_tSouth>
		{	return
				{}
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator+
		)	(	TypeToken<Empty>
			,	TypeToken<Empty>
			)
			noexcept
		->	TypeToken<Empty>
		{	return
				{}
			;
		}
	};

	[[nodiscard]]
	auto constexpr inline
	(	MakeFork
	)	()
		noexcept
	->	TypeToken<Empty>
	{	return
			{}
		;
	}

	template
		<	typename
				t_tElement
		,	::std::size_t
				t_vExtent
		>
	[[nodiscard]]
	auto constexpr inline
	(	MakeFork
	)	(	TypeToken<t_tElement[t_vExtent]>
		)
		noexcept
	->	TypeToken<t_tElement[t_vExtent]>
	{
		static_assert
		(	::std::is_standard_layout_v
			<	t_tElement
			>
		,	"Elements are required to be standard layout!"
		);
		static_assert
		(	::std::is_trivially_default_constructible_v
			<	t_tElement
			>
		,	"Elements are required to be trivially constructible!"
		);
		static_assert
		(	::std::is_trivially_destructible_v
			<	t_tElement
			>
		,	"Elements are required to be trivially destructible!"
		);
		static_assert
		(	::std::is_trivially_copy_constructible_v
			<	t_tElement
			>
		,	"Elements are required to be trivially constructible!"
		);
		static_assert
		(	::std::is_trivially_move_constructible_v
			<	t_tElement
			>
		,	"Elements are required to be trivially constructible!"
		);

		return
			{}
		;
	}

	template
		<	typename
				t_tNorth
		,	typename
				t_tSouth
		>
	[[nodiscard]]
	auto constexpr inline
	(	MakeFork
	)	(	TypeToken<t_tNorth>
				i_vNorth
		,	TypeToken<t_tSouth>
				i_vSouth
		)
		noexcept
	->	TypeToken
		<	Fork
			<	t_tNorth
			,	t_tSouth
			>
		>
	{	return
			i_vNorth
		+	i_vSouth
		;
	}

	template
		<	::std::size_t
			...	t_vpNorthIndex
		,	::std::size_t
			...	t_vpSouthIndex
		,	typename
			...	t_tpData
		>
	[[nodiscard]]
	auto constexpr inline
	(	SplitFork
	)	(	::std::index_sequence
			<	t_vpNorthIndex
				...
			>
		,	::std::index_sequence
			<	t_vpSouthIndex
				...
			>
		,	TypeToken
			<	t_tpData
			>
			...	i_vpData
		)
		noexcept
	->	decltype(auto)
	{
		TypeID static constexpr
			vTypes
			[]
		{	i_vpData
			...
		};

		auto static constexpr
			vNorthCount
		=	sizeof...(t_vpNorthIndex)
		;
		return
			MakeFork
			(	RestoreTypeToken
				<	vTypes
						[	t_vpNorthIndex
						]
				>
				...
			)
		+	MakeFork
			(	RestoreTypeToken
				<	vTypes
						[	vNorthCount
						+	t_vpSouthIndex
						]
				>
				...
			)
		;
	}

	template
		<	typename
			...	t_tpData
		>
	[[nodiscard]]
	auto constexpr inline
	(	MakeFork
	)	(	TypeToken
			<	t_tpData
			>
			...	i_vpData
		)
		noexcept
	{
		auto static constexpr
			vTotalCount
		=	sizeof...(t_tpData)
		;

		auto static constexpr
			vSouthCount
		=	vTotalCount
		>>	1uz
		;
		auto static constexpr
			vNorthCount
		=	vTotalCount
		-	vSouthCount
		;

		return
			SplitFork
			(	::std::make_index_sequence
				<	vNorthCount
				>{}
			,	::std::make_index_sequence
				<	vSouthCount
				>{}
			,	i_vpData
				...
			)
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
	->	decltype(auto)
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
		<	ByteSize
				t_vByteCount
		>
	[[nodiscard]]
	auto constexpr inline
	(	CreateBitLayout
	)	()
		noexcept
	{	return
			Type
			<	::std::byte
					[	t_vByteCount
						.	get
							()
					]
			>
		;
	}

	template
		<>
	[[nodiscard]]
	auto constexpr inline
	(	CreateBitLayout
		<	0_byte
		>
	)	()
		noexcept
	{	return
			Type<Empty>
		;
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
		=	Member::Composition_Of
			<	t_tTypeName
			>
			.	Layout
		;
		return
		(	CreateLayout
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
		);
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
			(	::std::make_index_sequence
				<	Member::AlignmentCount
				>{}
			)
		)
	::	Entity
	;
}
