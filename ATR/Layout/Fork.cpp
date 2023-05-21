export module ATR.Layout.Fork;

import ATR.Layout.Value;

import Meta.Token.Type;
import Meta.Token.TypeID;

import Std;

using ::Meta::TypeToken;
using ::Meta::Type;
using ::Meta::TypeID;
using ::Meta::RestoreTypeEntity;

namespace
	ATR::Layout
{
	template
		<	typename
				t_tNorth
		,	typename
				t_tSouth
		>
	struct
		SplitPair
	{
		using
			NorthType
		=	t_tNorth
		;

		using
			SouthType
		=	t_tSouth
		;
	};

	template
		<	template
				<	typename
					...
				>
			typename
				t_t1Fork
		,	typename
			...	t_tpMember
		,	::std::size_t
			...	t_vpNorthIndex
		,	::std::size_t
			...	t_vpSouthIndex
		>
	[[nodiscard]]
	auto constexpr
	(	SplitLayoutType
	)	(	TypeToken
			<	t_t1Fork
				<	t_tpMember
					...
				>
			>
		,	::std::index_sequence
			<	t_vpNorthIndex
				...
			>
		,	::std::index_sequence
			<	t_vpSouthIndex
				...
			>
		)
		noexcept
	{
		TypeID static constexpr
			vTypes
			[]
		{	Type<t_tpMember>
			...
		};
		return
		SplitPair
		<	t_t1Fork
			<	RestoreTypeEntity
				<	vTypes
						[	t_vpNorthIndex
						]
				>
				...
			>
		,	t_t1Fork
			<	RestoreTypeEntity
				<	vTypes
						[	t_vpSouthIndex
						+	sizeof...(t_vpNorthIndex)
						]
				>
				...
			>
		>{};
	};

	template
		<	typename
				t_tFork
		,	::std::size_t
				t_vTotalCount
		>
	using
		SplitPair_Of
	=	decltype
		(	SplitLayoutType
			(	Type<t_tFork>
			,	::std::make_index_sequence
				<	(	t_vTotalCount
					-	(	t_vTotalCount
						>>	1uz
						)
					)
				>{}
			,	::std::make_index_sequence
				<	(	t_vTotalCount
					>>	1uz
					)
				>{}
			)
		)
	;
}

export namespace
	ATR::Layout
{
	template
		<	typename
			...	t_tpData
		>
	struct
		Fork
	{
		static_assert
		(	(	sizeof...(t_tpData)
			>	3uz
			)
		,	"Expected more than 3 data types in this specialization!"
		);

		using
			SplitPair
		=	SplitPair_Of
			<	Fork<t_tpData...>
			,	sizeof...(t_tpData)
			>
		;

		using
			NorthType
		=	typename
			SplitPair
			::	NorthType
		;

		NorthType
			NorthArea
		;

		using
			SouthType
		=	SplitPair
			::	SouthType
		;

		SouthType
			SouthArea
		;
	};

	template
		<	typename
				t_tNorth
		,	typename
				t_tSouth
		>
	struct
		Fork
		<	t_tNorth
		,	t_tSouth
		>
	{
		using
			NorthType
		=	Value
			<	t_tNorth
			>
		;

		NorthType
			NorthArea
		;

		using
			SouthType
		=	Value
			<	t_tSouth
			>
		;

		SouthType
			SouthArea
		;
	};

	template
		<	typename
				t_tFirstNorth
		,	typename
				t_tSecondNorth
		,	typename
				t_tSouth
		>
	struct
		Fork
		<	t_tFirstNorth
		,	t_tSecondNorth
		,	t_tSouth
		>
	{
		using
			NorthType
		=	Fork
			<	t_tFirstNorth
			,	t_tSecondNorth
			>
		;

		NorthType
			NorthArea
		;

		using
			SouthType
		=	Value
			<	t_tSouth
			>
		;

		SouthType
			SouthArea
		;
	};
}
