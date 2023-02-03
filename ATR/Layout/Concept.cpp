export module ATR.Layout.Concept;

import ATR.Layout.Alias;

import Meta.ID.Concept;
import Meta.Lex.Transform;

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
		{	t_tLayout::OffsetOf(t_tProto{}, Meta::Lex::Transform<>{});
			::std::declval<t_tLayout&>()[t_tProto{}];
			::std::declval<t_tLayout const&>()[t_tProto{}];
			::std::declval<t_tLayout&&>()[t_tProto{}];
		}
	;
}
