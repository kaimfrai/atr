export module ATR.Member.List;

import ATR.Member.Info;
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
		<	Info
		,	t_nMemberCount
		>
	{
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
	{	Info
		{	AlignSortKey<t_tValue>
		,	Meta::ID_T<t_vName>::StringView
		,	Meta::Type<t_tValue>
		}
	};
}
