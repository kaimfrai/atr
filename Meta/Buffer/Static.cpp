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
				t_nExtent
		>
	using
		Static
	=	Fixed
		<	std::array
			<	t_tElement
			,	t_nExtent
			>
		>
	;
}
