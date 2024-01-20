export module Meta.Buffer.Static;

import Meta.Buffer.Fixed;
import Meta.Size;

import Std;

export namespace
	Meta::Buffer
{
	template
		<	typename
				t_tElement
		,	USize
				t_vExtent
		>
	using
		Static
	=	Fixed
		<	t_tElement
				[	t_vExtent
				]
		>
	;
}
