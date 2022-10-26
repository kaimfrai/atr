export module ATR:Layout.Layout;

import :ID;
import :Layout.Alias;
import :Layout.Bit.MemberOffset;
import :Layout.Concept;
import :Layout.Member;
import :Layout.MemberOffset;
import :Layout.Split;
import :Layout.ValidateOffsets;

import Meta.Arithmetic;
import Meta.Data;
import Meta.Lex;

import <utility>;

using ::Meta::Aggregate;
using ::Meta::CV;
using ::Meta::Type;
using ::Meta::TypeEntity;
using ::Meta::USize;

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
		using NorthType = ::SplitLayoutNorth<t_tpMember...>;

		NorthType
			NorthArea
		;

		using SouthType = ::SplitLayoutSouth<t_tpMember...>;

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
				sizeof(NorthType)
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
		,	char const
			&
			...	t_rpName
		>
	struct
		Layout
		<	::Member
			<	t_tData
			,	t_rpName
				...
			>
		>
	{
		Aggregate<t_tData>
			Value
		;

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ID<t_rpName...>
			)	const&
			noexcept
		->	Aggregate<t_tData> const&
		{	return Value;	}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ID<t_rpName...>
			)	&
			noexcept
		->	Aggregate<t_tData>&
		{	return Value;	}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ID<t_rpName...>
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
		)	(	ID<t_rpName...>
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
