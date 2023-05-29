export module Meta.ID:Concept;

import :Base;

export namespace
	Meta
{
	template
		<	typename
				t_tProto
		>
	concept
		ProtoID
	=	requires
		{	Base
			{	t_tProto
				{}
			};
		}
	;
}
