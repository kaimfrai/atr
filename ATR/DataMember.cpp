export module ATR.DataMember;

import Meta.Predicate.Empty;
import Meta.Token.Type;
import Meta.Token.Type.Compare;
import Meta.Size;
import Meta.Functional.Construct;
import Meta.Arithmetic.Literals;
import Meta.Token.Index;
import Meta.Token.Specifier;
import Meta.Token.Extent;
import Meta.Trait.BitAlign;
import Meta.Logic.Constraint;
import Meta.Data.Object;
import Meta.Data.Aggregate;
import Meta.ID.Alias;
import Meta.ID.StringView;
import Meta.ID.StringLiteral;
import Meta.ID.Concept;

import Std;

using ::Meta::USize;

export namespace
	ATR
{
	using ::Meta::Specifier::Mut;

	USize constexpr inline
		AliasSortKey
	=	0uz
	;

	USize constexpr inline
		StaticSortKey
	=	::std::numeric_limits<USize>::max()
	;

	template
		<	typename
				t_tData
		>
	USize constexpr inline
		MemberSortKey
	=	//	sort order inverse to alignment
		StaticSortKey
	-	(	not
			::std::is_empty_v<Meta::Data::Object<t_tData>>
		*	// optimize empty members to be static
			Meta::BitAlign_Of
			(	Meta::Type<t_tData>
			)
		.	get()
		)
	;

	struct
		MemberInfo final
	{
		USize SortKey;
		Meta::StringView Name;
		Meta::TypeID Type;

		[[nodiscard]]
		friend auto constexpr
		(	operator <=>
		)	(	MemberInfo const&
			,	MemberInfo const&
			)
			noexcept
		=	default;
	};

	template
		<	USize
				t_nMemberCount
		>
	struct
		MemberList final
	:	Meta::ArrayAggregate
		<	MemberInfo
		,	t_nMemberCount
		>
	{
		auto constexpr
		(	operator()
		)	(	MemberInfo const
				&	i_rExchange
			)	const
			noexcept
		->	MemberList
		{
			auto vCopy = *this;
			auto const
				vExchangePosition
			=	std::find_if
				(	vCopy.begin()
				,	vCopy.end().base()
				,	[	vName = i_rExchange.Name
					]	(	MemberInfo const
							&	i_rMember
						)
					{
						return i_rMember.Name == vName;
					}
				)
			;
			if	(vExchangePosition == vCopy.end())
				((void)"Cannot exchange non-existing member!", std::unreachable());

			*vExchangePosition = i_rExchange;
			std::sort(vCopy.begin(), vCopy.end().base());

			return vCopy;
		}

		template
			<	Meta::USize
					t_nRight
			>
		friend auto constexpr
		(	operator +
		)	(	MemberList const
				&	i_rLeft
			,	MemberList<t_nRight> const
				&	i_rRight
			)
			noexcept
		->	MemberList
			<	t_nMemberCount
			+	t_nRight
			>
		{
			if	constexpr
				(	t_nMemberCount
				==	0uz
				)
				return i_rRight;
			else
			if	constexpr
				(	t_nRight
				==	0uz
				)
				return i_rLeft;
			else
			{
				MemberList
				<	t_nMemberCount
				+	t_nRight
				>	vResult
				;

				auto const
					vLast
				=	std::set_union
					(	i_rLeft.begin()
					,	i_rLeft.end().base()
					,	i_rRight.begin()
					,	i_rRight.end().base()
					,	vResult.begin()
					)
				;

				if	(vLast != vResult.end())
				{
					((void)"Cannot merge MemberList with identical members!", std::unreachable());
				}
				return vResult;
			}
		}

		template
			<	Meta::USize
					t_nRight
			>
		friend auto constexpr
		(	operator -
		)	(	MemberList const
				&	i_rLeft
			,	MemberList<t_nRight> const
				&	i_rRight
			)
			noexcept
		->	MemberList
			<	t_nMemberCount
			-	t_nRight
			>
		{
			static_assert
			(	t_nMemberCount
			>=	t_nRight
			,	"Cannot subtract more MemberInfos than already exist!"
			);
			if	constexpr
				(	t_nRight
				==	0uz
				)
				return i_rLeft;
			else
			if	(	not
					std::ranges::includes
					(	i_rLeft
					,	i_rRight
					)
				)
			{
				((void)"Cannot subtract MemberInfos that are not contained!", std::unreachable());
			}

			MemberList
			<	t_nMemberCount
			-	t_nRight
			>	vResult
			;

			std::ranges::set_difference
			(	i_rLeft
			,	i_rRight
			,	begin(vResult)
			);
			return vResult;
		}

		friend auto constexpr
		(	operator ==
		)	(	MemberList const
				&	i_rLeft
			,	MemberList const
				&	i_rRight
			)
			noexcept
		->	bool
		=	default;

		template
			<	USize
					t_nRightMemberCount
			>
		friend auto constexpr
		(	operator ==
		)	(	MemberList const
				&
			,	MemberList<t_nRightMemberCount> const
				&
			)
			noexcept
		->	bool
		{
			static_assert
			(	t_nMemberCount != t_nRightMemberCount
			,	"Unexpected overload choice!"
			);
			return false;
		}
	};

	template
		<	Meta::USize
				t_nMemberCount
		>
	(	MemberList
	)	(	MemberList<t_nMemberCount>
		)
	->	MemberList
		<	t_nMemberCount
		>
	;

	template
		<	typename
			...	t_tpDataMember
		>
	(	MemberList
	)	(	t_tpDataMember
			...
		)
	->	MemberList
		<	sizeof...(t_tpDataMember)
		>
	;

	template
		<	Meta::ProtoID
				t_tName
		,	Meta::TypeID
				t_vType
		,	USize
				t_nMemberSortKey
		>
	MemberInfo constexpr inline
		MemberInstance
	{	.SortKey
	=	t_nMemberSortKey
	,	.Name
	=	t_tName::StringView
	,	.Type
	=	t_vType
	};

	template
		<	Meta::StringLiteral
				t_vName
		,	typename
				t_tValue
		>
	MemberList<1uz> constexpr inline
		Member
	{	MemberInstance
		<	Meta::ID_T<t_vName>
		,	Meta::Type<t_tValue>
		,	MemberSortKey<t_tValue>
		>
	};

	template
		<	Meta::StringLiteral
				t_vOriginID
		,	Meta::StringLiteral
				t_vTargetID
		>
	MemberInfo const constexpr inline
	&	Alias
	=	MemberInstance
		<	Meta::ID_T<t_vOriginID>
		,	Meta::Type<Meta::ID_T<t_vTargetID>>
		,	AliasSortKey
		>
	;

	inline namespace
		Literals
	{
		template
			<	char
				...	t_npNumeric
			>
		auto constexpr
		(	operator""_ext
		)	()
		->	::Meta::Token::Extent
			<	::Meta::Arithmetic::EvaluateNumericLiteral
				<	t_npNumeric
					...
				>()
			>
		{	return {};	}
	}

	template
		<	MemberList
				t_vList
		>
	struct
		DefineMembers final
	{
		static auto constexpr
		(	get
		)	()
			noexcept
		->	decltype(t_vList) const&
		{	return t_vList;	}

		static auto constexpr
		(	size
		)	()
			noexcept
		->	Meta::USize
		{	return t_vList.size();	}

		explicit(false) constexpr
		(	operator decltype(t_vList) const&
		)	()	const
			noexcept
		{	return t_vList;	}

		static auto constexpr
		(	operator[]
		)	(	USize
					i_nIndex
			)
			noexcept
		->	decltype(auto)
		{	return t_vList[i_nIndex];	}

		static auto constexpr
		(	operator()
		)	(	MemberInfo const
				&	i_rExchange
			)
			noexcept
		->	decltype(t_vList)
		{	return t_vList(i_rExchange);	}

		template
			<	USize
					t_nRight
			>
		friend auto constexpr
		(	operator +
		)	(	DefineMembers
			,	MemberList<t_nRight> const
				&	i_rRight
			)
			noexcept
		->	decltype(auto)
		{	return t_vList + i_rRight;	}

		friend auto constexpr
		(	operator *
		)	(	DefineMembers
			,	Meta::ProtoConstraint<Meta::IsStateless> auto
					i_fTransform
			)
			noexcept
		->	decltype(t_vList)
		{
			auto
				vList
			=	[]	<	::std::size_t
						...	t_npIndex
					>(	::std::index_sequence<t_npIndex...>
					)
				{	return
					decltype(t_vList)
					{	MemberInstance
						<	Meta::ID_Of<t_vList[t_npIndex].Name>
						,	(	Meta::RestoreTypeToken<t_vList[t_npIndex].Type>
							+	decltype(i_fTransform){}
							)
						,	t_vList[t_npIndex].SortKey
						>
						...
					};
				}(	::std::make_index_sequence
					<	t_vList
					.	size()
					>{}
				)
			;

			::std::sort(vList.begin(), vList.end().base());
			return vList;
		}

		template
			<	USize
					t_nRight
			>
		friend auto constexpr
		(	operator -
		)	(	DefineMembers
			,	MemberList<t_nRight> const
				&	i_rRight
			)
			noexcept
		->	decltype(auto)
		{	return t_vList - i_rRight;	}


		friend auto constexpr
		(	operator ==
		)	(	DefineMembers
			,	DefineMembers
			)
			noexcept
		->	bool
		=	default;

		template
			<	MemberList
					t_vRightList
			>
		friend auto constexpr
		(	operator ==
		)	(	DefineMembers
			,	DefineMembers<t_vRightList>
			)
			noexcept
		->	bool
		{	return false;	}
	};

	/// maps a string literal to a Layout
	template
		<	Meta::StringLiteral
		>
	DefineMembers
	<	MemberList<0uz>{}
	>	extern
		LayoutConfig
	;
}
