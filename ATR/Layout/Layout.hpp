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

using ::Meta::Aggregate;
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
		template
			<	typename
				...	t_tpTransform
			>
		[[nodiscard]]
		static auto constexpr
		(	OffsetOf
		)	(	ID<t_rpName...>
			,	Meta::Lex::Transform<t_tpTransform...>
					i_vTransform
			)
		->	decltype(auto)
		{	return
			MemberOffset
			<	Meta::TypeEntity
				<	i_vTransform
					(	Meta::Type<Aggregate<t_tData>>
					)
				>
			>{	0uz
			};
		}

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
		->	Aggregate<t_tData>
		{	return Value;	}
	};
}
