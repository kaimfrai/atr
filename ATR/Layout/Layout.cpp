export module ATR.Layout.Layout;

import ATR.Layout.Alias;
import ATR.Layout.Bit.MakeLayout;
import ATR.Layout.Bit.MemberOffset;
import ATR.Layout.Concept;
import ATR.Layout.Member;
import ATR.Layout.MemberOffset;
import ATR.Layout.ValidateOffsets;

import Meta.Size;
import Meta.Lex.Transform;
import Meta.Memory.Size;
import Meta.Memory.Size.Compare;
import Meta.Token.Index;
import Meta.Token.Sequence;
import Meta.Token.CV;
import Meta.Token.Type;
import Meta.Data.Aggregate;
import Meta.ID.Concept;
import Meta.Math.Prev;

import Std;

using ::Meta::Math::Prev;
using ::Meta::Aggregate;
using ::Meta::CV;
using ::Meta::Type;
using ::Meta::TypeEntity;
using ::Meta::USize;
using ::Meta::ProtoID;

using namespace ::Meta::Literals;

export namespace
	ATR
{
	template
		<	typename
			...
		>
	struct
		Layout
	;
}

export template
	<	typename
		...	t_tpMember
	>
auto constexpr
(	MakeLayout
)	()
->	decltype(auto)
{
	if	constexpr
		((	...
		and	(	1_bit
			==	t_tpMember
			::	BitAlign
			)
		))
		return
		MakeBitLayout
		<	t_tpMember
			...
		>();
	else
		return
		::ATR::Layout
		<	t_tpMember
			...
		>{};
}

template
	<	Meta::TypeID const
		*	t_aTypes
	,	USize
		...	t_npIndex
	>
auto constexpr
(	SplitLayoutType
)	(	Meta::IndexToken<t_npIndex...>
	)
{
	return
	::MakeLayout
	<	::Meta::RestoreTypeEntity
		<	t_aTypes[t_npIndex]
		>
		...
	>()
	;
};

[[nodiscard]]
auto constexpr
(	LayoutSplitIndex
)	(	::std::initializer_list
		<	USize
		>	i_vAlignList
	)
->	USize
{
	auto const
		aFirst
	=	begin(i_vAlignList)
	;
	auto const
		aLast
	=	::std::next
		(	aFirst
		,	Prev
			(	ssize(i_vAlignList)
			)
		)
	;
	if	(	*aFirst
		==	*aLast
		)
		return
		::std::bit_floor<Meta::USize>
		(	Prev
			(	i_vAlignList
			.	size()
			)
		);
	else
	{	auto const
			aSplitPoint
		=	::std::upper_bound
			(	aFirst
			,	end(i_vAlignList)
			,	*aFirst
			)
		;
		return
		static_cast<Meta::USize>
		(	aSplitPoint
		-	aFirst
		);
	}
}

export namespace
	ATR
{
	template
		<	typename
			...	t_tpMember
		>
	struct
		Layout
	{
		static USize constexpr
			SplitIndex
		=	LayoutSplitIndex
			({	t_tpMember::SortKey
				...
			})
		;

		static Meta::TypeID constexpr
			MemberTypes
		[]{	Meta::Type<t_tpMember>
			...
		};


		using
			NorthType
		=	decltype
			(	SplitLayoutType<+MemberTypes>
				(	Meta::Sequence<SplitIndex>
				)
			)
		;

		NorthType
			NorthArea
		;

		using
			SouthType
		=	decltype
			(	SplitLayoutType<+MemberTypes>
				(	Meta::Sequence<sizeof...(t_tpMember) - SplitIndex>
				+=	Meta::Index<SplitIndex>
				)
			)
		;

		SouthType
			SouthArea
		;

		template
			<	typename
				...	t_tpTransform
			>
		[[nodiscard]]
		static auto constexpr
		(	OffsetOf
		)	(	ProtoMemberID<NorthType> auto
					i_vMemberID
			,	Meta::Lex::Transform<t_tpTransform...>
					i_vTransform
			)
		->	decltype(auto)
		{
			static_assert
			(	ValidateOffsets<Layout>()
			,	"Offsets of north or south areas have unexcepted values!"
			);

			return
				NorthType
			::	OffsetOf
				(	i_vMemberID
				,	i_vTransform
				)
			;
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoMemberID<NorthType> auto
					i_vMemberID
			)	&
			noexcept
		->	decltype(auto)
		{	return
			NorthArea
			[	i_vMemberID
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoMemberID<NorthType> auto
					i_vMemberID
			)	const&
			noexcept
		->	decltype(auto)
		{	return
			NorthArea
			[	i_vMemberID
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoMemberID<NorthType> auto
					i_vMemberID
			)	&&
			noexcept
		->	decltype(auto)
		{	return
			::std::move(NorthArea)
			[	i_vMemberID
			];
		}

		template
			<	typename
				...	t_tpTransform
			>
		[[nodiscard]]
		static auto constexpr
		(	OffsetOf
		)	(	ProtoMemberID<SouthType> auto
					i_vMemberID
			,	Meta::Lex::Transform<t_tpTransform...>
					i_vTransform
			)
		->	decltype(auto)
		{
			static_assert
			(	ValidateOffsets<Layout>()
			,	"Offsets of north or south areas have unexcepted values!"
			);

			return
				::Meta::Memory::SizeOf<NorthType>
			+	SouthType
			::	OffsetOf
				(	i_vMemberID
				,	i_vTransform
				)
			;
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoMemberID<SouthType> auto
					i_vMemberID
			)	&
			noexcept
		->	decltype(auto)
		{	return
			SouthArea
			[	i_vMemberID
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoMemberID<SouthType> auto
					i_vMemberID
			)	const&
			noexcept
		->	decltype(auto)
		{	return
			SouthArea
			[	i_vMemberID
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoMemberID<SouthType> auto
					i_vMemberID
			)	&&
			noexcept
		->	decltype(auto)
		{	return
			::std::move(SouthArea)
			[	i_vMemberID
			];
		}
	};

	template
		<>
	struct
		Layout<>
	{};

	template
		<	typename
				t_tData
		,	ProtoID
				t_tName
		>
	struct
		Layout
		<	::Member
			<	t_tData
			,	t_tName
			>
		>
	{
		Aggregate<t_tData>
			Value
		;

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	t_tName
			)	const&
			noexcept
		->	Aggregate<t_tData> const&
		{	return Value;	}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	t_tName
			)	&
			noexcept
		->	Aggregate<t_tData>&
		{	return Value;	}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	t_tName
			)	&&
			noexcept
		->	Aggregate
			<	TypeEntity
				<	Type<t_tData>
				-	CV
				>
			>
		{	return
			{	Value
			};
		}

		template
			<	typename
				...	t_tpTransform
			>
		[[nodiscard]]
		static auto constexpr
		(	OffsetOf
		)	(	t_tName
					i_vName
			,	Meta::Lex::Transform<t_tpTransform...>
					i_vTransform
			)
		->	decltype(auto)
		{	return
			MemberOffset
			<	decltype
				(	::std::declval
					<	TypeEntity
						<	i_vTransform
							(	Type<Layout>
							)
						>
					>()
					[	i_vName
					]
				)
			>{	0uz
			};
		}
	};
}
