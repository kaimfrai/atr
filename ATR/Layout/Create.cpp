export module ATR.Layout.Create;

import ATR.Layout.Fork;
import ATR.Member.Composition;
import ATR.Member.Constants;
import ATR.Member.Info;

import Meta.ID;
import Meta.String.Hash;
import Meta.Token.Type;
import Meta.Token.TypeID;

import Std;

using ::Meta::ProtoID;
using ::Meta::RestoreTypeEntity;
using ::Meta::Type;
using ::Meta::TypeID;

namespace
	ATR::Layout
{
	struct
		Empty
	{};

	template
		<	typename
		,	int
		>
	concept
		ProtoAny
	=	true
	;

	template
		<	typename
			...	t_tpData
		>
	class
		MakeFork
	;

	template
		<	::std::size_t
			...	t_tpIndex
		>
	struct
		Split
	{
		::std::index_sequence
		<	t_tpIndex
			...
		>	Indices
		;

		template
			<	ProtoAny
				<	(	(void)t_tpIndex
					,	0
					)
				>
				...	t_tpNorth
			,	typename
				...	t_tpSouth
			>
		auto static
		(	operator()
		)	(	t_tpNorth
				*
				...
			,	t_tpSouth
				*
				...
			)
			noexcept
		->	Fork
			<	typename
					MakeFork
					<	t_tpNorth
						...
					>
				::	Entity
			,	typename
					MakeFork
					<	t_tpSouth
						...
					>
				::	Entity
			>
		;
	};

	template
		<	typename
			...	t_tpData
		>
	class
		MakeFork
	{
		auto static constexpr inline
			vTotalCount
		=	sizeof...(t_tpData)
		;

		auto static constexpr inline
			vSouthCount
		=	vTotalCount
		>>	1uz
		;
		auto static constexpr inline
			vNorthCount
		=	vTotalCount
		-	vSouthCount
		;

	public:
		using
			Entity
		=	decltype
			(	Split
				{	::std::make_index_sequence
					<	vNorthCount
					>{}
				}(	static_cast<t_tpData*>
					(	nullptr
					)
					...
				)
			)
		;
	};

	template
		<>
	class
		MakeFork
		<>
	{
		template
			<	typename
				...	t_tpNorth
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	operator+
		)	(	MakeFork<t_tpNorth...>
			,	MakeFork<>
			)
			noexcept
		->	MakeFork<t_tpNorth...>
		{	return
				{}
			;
		}

		template
			<	typename
				...	t_tpSouth
			>
		[[nodiscard]]
		auto friend constexpr inline
		(	operator+
		)	(	MakeFork<>
			,	MakeFork<t_tpSouth...>
			)
			noexcept
		->	MakeFork<t_tpSouth...>
		{	return
				{}
			;
		}

		[[nodiscard]]
		auto friend constexpr inline
		(	operator+
		)	(	MakeFork<>
			,	MakeFork<>
			)
			noexcept
		->	MakeFork<>
		{	return
				{}
			;
		}

	public:
		using
			Entity
		=	Empty
		;
	};

	template
		<	typename
				t_tElement
		,	::std::size_t
				t_vExtent
		>
	class
		MakeFork
		<	t_tElement
				[	t_vExtent
				]
		>
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

	public:
		using
			Entity
		=	t_tElement
				[	t_vExtent
				]
		;
	};

	template
		<	typename
				t_tNorth
		,	typename
				t_tSouth
		>
	class
		MakeFork
		<	t_tNorth
		,	t_tSouth
		>
	{
	public:
		using
			Entity
		=	Fork
			<	t_tNorth
			,	t_tSouth
			>
		;

	private:
		union
		{	alignas(Entity)
			::std::byte
				Buffer
				[	sizeof(Entity)
				]
			{};

			Entity
				Layout
			;
		}	static constexpr inline
			Union
		{};

		static_assert
		(	(	static_cast<void const*>
				(	::std::addressof
					(	Union
						.	Layout
						.	NorthArea
					)
				)
			==	static_cast<void const*>
				(	::std::addressof
					(	Union
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
					(	Union
						.	Layout
						.	SouthArea
					)
				)
			==	static_cast<void const*>
				(	::std::addressof
					(	Union
						.	Buffer
							[	sizeof
								(	Union
									.	Layout
									.	NorthArea
								)
							]
					)
				)
			)
		,	"Unexpected offset in SouthArea!"
		);

		static_assert
		(	::std::is_standard_layout_v
			<	Entity
			>
		,	"Layouts are required to be standard layout!"
		);
		static_assert
		(	::std::is_trivially_default_constructible_v
			<	Entity
			>
		,	"Layouts are required to be trivially constructible!"
		);
		static_assert
		(	::std::is_trivially_destructible_v
			<	Entity
			>
		,	"Layouts are required to be trivially destructible!"
		);
		static_assert
		(	::std::is_trivially_copy_constructible_v
			<	Entity
			>
		,	"Layouts are required to be trivially constructible!"
		);
		static_assert
		(	::std::is_trivially_move_constructible_v
			<	Entity
			>
		,	"Layouts are required to be trivially constructible!"
		);
	};

	template
		<	typename
			...	t_tpNorth
		,	typename
			...	t_tpSouth
		>
	[[nodiscard]]
	auto constexpr inline
	(	operator+
	)	(	MakeFork<t_tpNorth...>
		,	MakeFork<t_tpSouth...>
		)
		noexcept
	->	MakeFork
		<	typename
				MakeFork
				<	t_tpNorth
					...
				>
			::	Entity
		,	typename
				MakeFork
				<	t_tpSouth
					...
				>
			::	Entity
		>
	{	return
			{}
		;
	}

	template
		<	auto
				t_vTypeCounts
		,	::std::size_t
			...	t_vpIndex
		>
	[[nodiscard]]
	auto constexpr inline
	(	CreateLayout
	)	(	::std::index_sequence
			<	t_vpIndex
				...
			>
		)
		noexcept
	->	decltype(auto)
	{	return
			MakeFork
			<	RestoreTypeEntity
				<	t_vTypeCounts
					.	Buffer
						[	t_vpIndex
						]
					.	Type
				>
					[	t_vTypeCounts
						.	Buffer
							[	t_vpIndex
							]
						.	Count
					]
				...
			>{}
		;
	}

	template
		<	short
				t_vDistrictIndex
		,	ProtoID
				t_tTypeName
		,	typename
			...	t_tpDistrict
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
	->	TypeID
	{
		auto static constexpr
		&	rDistrict
		=	Member::Composition_Of
			<	t_tTypeName
			,	t_tpDistrict
				...
			>
			.	Layout
				[	t_vDistrictIndex
				]
		;

		using
			tFork
		=	decltype
			(	(	CreateLayout
					<	rDistrict
						.	Buffer
							[	t_vpIndex
							]
					>(	::std::make_index_sequence
						<	rDistrict
							.	ElementCounts
								[	t_vpIndex
								]
						>{}
					)
				+	...
				)
			)
		;

		return
			Type
			<	typename
				tFork
				::	Entity
			>
		;
	}
}

export namespace
	ATR::Layout
{
	template
		<	ProtoID
				t_tTypeName
		,	typename
			...	t_tpDistrict
		>
	class
		DistrictType
	{
		auto static constexpr inline
		&	Composition
		=	Member::Composition_Of
			<	t_tTypeName
			,	t_tpDistrict
				...
			>
		;

		template
			<	::std::size_t
				...	t_tpDistrictIndex
			>
		[[nodiscard]]
		auto static constexpr inline
		(	Get
		)	(	short
					i_vDistrictIndex
			,	::std::index_sequence
				<	t_tpDistrictIndex
					...
				>
			)
			noexcept
		->	TypeID
		{
			TypeID static constexpr
				vDistrictTypes
					[]
			{	CreateLayout_For
				<	t_tpDistrictIndex
				,	t_tTypeName
				,	t_tpDistrict
					...
				>(	::std::make_index_sequence
					<	Member::ByteAlignCount
					>{}
				)
				...
			};

			return
				vDistrictTypes
				[	i_vDistrictIndex
				]
			;
		}

	public:
		[[nodiscard]]
		auto static constexpr inline
		(	operator[]
		)	(	short
					i_vDistrictIndex
			)
			noexcept
		->	TypeID
		{	return
				Get
				(	i_vDistrictIndex
				,	::std::make_index_sequence
					<	Composition
						.	LayoutCount
					>()
				)
			;
		}

		[[nodiscard]]
		auto static constexpr inline
		(	DistrictInfo
		)	(	short
					i_vDistrictIndex
			)
			noexcept
		->	Member::Info
		{
			auto
				vDistrictInfo
			=	Composition
				.	GetDistrictInfo
					(	i_vDistrictIndex
					)
			;

			vDistrictInfo
			.	Type
			=	operator[]
				(	i_vDistrictIndex
				)
			;

			return
				vDistrictInfo
			;
		}
	};

	template
		<	short
				t_vDistrictIndex
		,	ProtoID
				t_tTypeName
		,	typename
			...	t_tpDistrict
		>
	using
		CreateType
	=	RestoreTypeEntity
		<	DistrictType
			<	t_tTypeName
			,	t_tpDistrict
				...
			>
			{}[	t_vDistrictIndex
			]
		>
	;
}
