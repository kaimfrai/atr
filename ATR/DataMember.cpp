export module ATR.DataMember;

import Meta.Token.Type;
import Meta.Token.Type.Compare;
import Meta.Trait.BitAlign;
import Meta.ID.StringView;
import Meta.Size;

import Std;

using ::Meta::BitAlign_Of;
using ::Meta::StringView;
using ::Meta::Type;
using ::Meta::TypeID;
using ::Meta::USize;

export namespace
	ATR
{
	USize constexpr inline
		AliasSortKey
	=	0uz
	;

	USize constexpr inline
		StaticSortKey
	=	compl
		AliasSortKey
	;

	template
		<	typename
				t_tData
		>
	USize constexpr inline
		MemberSortKey
	=	//	sort order inverse to alignment
		//	optimize empty members to be static
		StaticSortKey
	-	BitAlign_Of
		(	Type<t_tData>
		)
	.	get()
	;

	struct
		MemberInfo final
	{
		USize SortKey;
		StringView Name;
		TypeID Type;

		[[nodiscard]]
		friend auto constexpr
		(	operator <=>
		)	(	MemberInfo const&
			,	MemberInfo const&
			)
			noexcept
		=	default;
	};
}
