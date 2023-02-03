export module ATR.Member.SortKey;

import Meta.Token.Type;
import Meta.Trait.BitAlign;

using ::Meta::BitAlign_Of;
using ::Meta::Type;

export namespace
	ATR::Member
{
	auto constexpr inline
		AliasSortKey
	=	0uz
	;

	auto constexpr inline
		StaticSortKey
	=	compl
		AliasSortKey
	;

	template
		<	typename
				t_tData
		>
	auto constexpr inline
		AlignSortKey
	=	//	sort order inverse to alignment
		//	optimize empty members to be static
		StaticSortKey
	-	BitAlign_Of
		(	Type<t_tData>
		)
	.	get()
	;
}
