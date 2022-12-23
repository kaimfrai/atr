export module Meta.Buffer.Dynamic;

import Meta.Buffer.Unique;
import Meta.Buffer.Fixed;

export namespace
	Meta::Buffer
{
	template
		<	typename
				t_tElement
		>
	using
		Dynamic
	=	Fixed
		<	Unique
			<	t_tElement
			>
		>
	;
}
