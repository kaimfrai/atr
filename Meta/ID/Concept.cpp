export module Meta.ID:Concept;

import :Base;

import Meta.String.Literal;

export namespace
	Meta
{
	template
		<	typename
				t_tID
		>
	concept
		ProtoID
	=	requires
		{	Base
			{	t_tID
				{}
			};
		}
	;
}
