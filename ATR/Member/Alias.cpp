export module ATR.Member.Alias;

import ATR.Member.SortKey;
import ATR.Member.List;

import Meta.ID.StringView;
import Meta.ID.Concept;
import Meta.Token.Type;

import Std;

using ::Meta::ProtoID;
using ::Meta::Type;

export namespace
	ATR::Member
{
	template
		<	auto
				t_nMemberCount
		>
	[[nodiscard]]
	auto constexpr
	(	Alias
	)	(	List<t_nMemberCount>
				i_nList
		,	ProtoID auto
				i_vOrigin
		,	ProtoID auto
				i_vTarget
		)
		noexcept
	->	List<t_nMemberCount>
	{
		auto const
			vExchangePosition
		=	::std::find_if
			(	i_nList.begin()
			,	i_nList.end().base()
			,	[]	(	auto const
						&	i_rMember
					)
				{	return
						i_rMember.Name
					==	decltype(i_vOrigin)::StringView
					;
				}
			)
		;
		if	(vExchangePosition == i_nList.end())
		{
			((void)"Cannot exchange non-existing member!", std::unreachable());
		}

		(	vExchangePosition->SortKey
		=	AliasSortKey
		);
		(	vExchangePosition->Type
		=	Type<decltype(i_vTarget)>
		);

		::std::sort
		(	i_nList.begin()
		,	i_nList.end().base()
		);

		return i_nList;
	}
}
