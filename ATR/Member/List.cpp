export module ATR.Member.List;

import ATR.DataMember;
import ATR.Member.SortKey;
import Meta.ID.StringView;
import Meta.ID.StringLiteral;
import Meta.ID.Alias;
import Meta.Data.Aggregate;
import Meta.Data.Aggregate.Array;
import Meta.Token.Type;
import Meta.Size;

import Std;

using ::Meta::USize;

export namespace
	ATR::Member
{
	template
		<	USize
				t_nMemberCount
		>
	struct
		List final
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
		->	List
		{
			auto vCopy = *this;
			auto const
				vExchangePosition
			=	::std::find_if
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
			::std::sort(vCopy.begin(), vCopy.end().base());

			return vCopy;
		}

		template
			<	Meta::USize
					t_nRight
			>
		friend auto constexpr
		(	operator +
		)	(	List const
				&	i_rLeft
			,	List<t_nRight> const
				&	i_rRight
			)
			noexcept
		->	List
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
				List
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
		)	(	List const
				&	i_rLeft
			,	List<t_nRight> const
				&	i_rRight
			)
			noexcept
		->	List
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

			List
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
		)	(	List const
				&	i_rLeft
			,	List const
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
		)	(	List const
				&
			,	List<t_nRightMemberCount> const
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
	(	List
	)	(	List<t_nMemberCount>
		)
	->	List
		<	t_nMemberCount
		>
	;

	template
		<	typename
			...	t_tpDataMember
		>
	(	List
	)	(	t_tpDataMember
			...
		)
	->	List
		<	sizeof...(t_tpDataMember)
		>
	;

	template
		<	Meta::StringLiteral
				t_vName
		,	typename
				t_tValue
		>
	List<1uz> constexpr inline
		New
	{	MemberInfo
		{	AlignSortKey<t_tValue>
		,	Meta::ID_T<t_vName>::StringView
		,	Meta::Type<t_tValue>
		}
	};
}
