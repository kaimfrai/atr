export module ATR.Layout.Create;

import ATR.Layout.Fork;
import ATR.Member.Composition;
import ATR.Member.Constants;

import Meta.ID;
import Meta.Token.Type;

import Std;

using ::Meta::ProtoID;
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
					...
				>{}
			;
		}(	::std::make_index_sequence
			<	t_vTypeCounts
				.	Count
			>{}
		);
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
				.	Buffer
					[	t_vpIndex
					]
			>()
		+	...
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
