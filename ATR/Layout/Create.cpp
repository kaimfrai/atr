export module ATR.Layout.Create;

import ATR.Layout.Fork;
import ATR.Layout.Offset;
import ATR.Member.Constant;
import ATR.Member.Constants;

import Meta.Memory.Size;
import Meta.Token.Type;

import Std;

using ::Meta::BitSize;
using ::Meta::RestoreTypeEntity;

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
			{};
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
			{};
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
			{};
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
		{};
	}

	template
		<	auto
				t_vTypeCounts
		,	template
				<	typename
				,	::std::size_t
				>
			typename
				t_t1Transform
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
		<	t_t1Transform
			<	RestoreTypeEntity
				<	t_vTypeCounts
					.	Buffer
						[	t_vpIndex
						]
					.	Type
				>
			,	t_vTypeCounts
				.	Buffer
					[	t_vpIndex
					]
				.	Count
			>
			...
		>{};
	}

	template
		<	auto const
			&	t_rComposition
		,	short
				t_vDistrictIndex
		,	template
				<	typename
				,	::std::size_t
				>
			typename
				t_t1Transform
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
	->	decltype(auto)
	{
		auto static constexpr
		&	rDistrict
		=	t_rComposition
			.	Layout
				[	t_vDistrictIndex
				]
		;

		return
		(	CreateLayout
			<	rDistrict
				.	Buffer
					[	t_vpIndex
					]
			,	t_t1Transform
			>(	::std::make_index_sequence
				<	rDistrict
					.	ElementCounts
						[	t_vpIndex
						]
				>{}
			)
		+	...
		);
	}
}

export namespace
	ATR::Layout
{
	template
		<	typename
				t_tElement
		,	::std::size_t
				t_vExtent
		>
	using
		ArrayTransform
	=	t_tElement
			[	t_vExtent
			]
	;

	template
		<	auto const
			&	t_rComposition
		,	short
				t_vDistrictIndex
			=	0
		,	template
				<	typename
				,	::std::size_t
				>
			typename
				t_t1Transform
			=	ArrayTransform
		>
	using
		CreateType
	=	decltype
		(	CreateLayout_For
			<	t_rComposition
			,	t_vDistrictIndex
			,	t_t1Transform
			>(	::std::make_index_sequence
				<	Member::ByteAlignCount
				>{}
			)
		)
	::	Entity
	;

	template
		<	auto const
			&	t_rComposition
		,	typename
				t_tMemberType
		,	BitSize
				t_vOffset
		,	short
				t_vDistrictIndex
		,	void const
			*	t_aInitializer
		,	typename
			...	t_tpIndirectOffset
		>
	auto constexpr inline
		Offset_For
	=	Offset_For
		<	t_rComposition
		,	typename
				RestoreTypeEntity
				<	t_rComposition
					.	GetDistrictType
						(	t_vDistrictIndex
						)
				>
			::	template
				Rebind
				<	CreateType
					<	t_rComposition
					,	t_vDistrictIndex
					>
				>
		,	t_rComposition
			.	GetDistrictOffset
				(	t_vDistrictIndex
				)
		,	t_rComposition
			.	GetDistrictDistrictIndex
				(	t_vDistrictIndex
				)
		,	t_aInitializer
		,	Offset
			<	t_tMemberType
			,	t_vOffset
			>
		,	t_tpIndirectOffset
			...
		>
	;

	template
		<	auto const
			&	t_rComposition
		,	typename
				t_tMemberType
		,	BitSize
				t_vOffset
		,	typename
			...	t_tpIndirectOffset
		>
	auto constexpr inline
		Offset_For
		<	t_rComposition
		,	t_tMemberType
		,	t_vOffset
		,	0
		,	nullptr
		,	t_tpIndirectOffset
			...
		>
	=	Offset
		<	t_tMemberType
		,	t_vOffset
		,	t_tpIndirectOffset
			...
		>{}
	;

	template
		<	auto const
			&	t_rComposition
		,	typename
				t_tMemberType
		,	BitSize
				t_vOffset
		>
	auto constexpr inline
		Offset_For
		<	t_rComposition
		,	t_tMemberType
		,	t_vOffset
		,	-1
		,	nullptr
		>
	=	Offset
		<	t_tMemberType
		,	t_vOffset
		>{}
	;

	template
		<	auto const
			&	t_rComposition
		,	typename
				t_tMemberType
		,	BitSize
				t_vOffset
		,	void const
			*	t_aInitializer
		>
	auto constexpr inline
		Offset_For
		<	t_rComposition
		,	Member::ConstantType
			<	t_tMemberType
			>
		,	t_vOffset
		,	-1
		,	t_aInitializer
		>
	=	Offset
		<	Member::ConstantValue
			<	*	static_cast<t_tMemberType const*>
					(	t_aInitializer
					)
			>
		,	t_vOffset
		>{}
	;
}
