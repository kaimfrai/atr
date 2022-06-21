export module ATR:Layout.Concept;

import :ID;
import :Layout.Alias;
import :Layout.AliasResolver;

import Std;

export namespace
	ATR
{
	template
		<	typename
				t_tProto
		,	typename
				t_tLayout
		>
	concept
		ProtoMemberID
	=	ProtoID<t_tProto>
	and	requires
		{	t_tLayout::OffsetOf(t_tProto{});
			::std::declval<t_tLayout&>()[t_tProto{}];
			::std::declval<t_tLayout const&>()[t_tProto{}];
			::std::declval<t_tLayout&&>()[t_tProto{}];
		}
	;

	template
		<	typename
				t_tProto
		,	typename
				t_tLayout
		,	typename
			...	t_tpAlias
		>
	concept
		ProtoAliasID
	=	ProtoMemberID
		<	decltype
			(	ResolveAlias<t_tpAlias...>
				(	::std::declval<t_tProto>()
				)
			)
		,	t_tLayout
		>
	;
}
