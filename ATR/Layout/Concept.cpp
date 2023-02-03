export module ATR.Layout.Concept;

import Meta.ID.Concept;

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
	=	Meta::ProtoID<t_tProto>
	and	requires
		{	::std::declval<t_tLayout&>()[t_tProto{}];
			::std::declval<t_tLayout const&>()[t_tProto{}];
			::std::declval<t_tLayout&&>()[t_tProto{}];
		}
	;
}
