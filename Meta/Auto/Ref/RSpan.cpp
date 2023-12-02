export module Meta.Auto.Ref.RSpan;

import Meta.Auto.Primary;
import Meta.Auto.Ref.DynamicCountArray;

import Meta.Size;

export namespace
	Meta
{
	template
		<	typename
				t_tElement
		>
	struct
		Auto
		<	t_tElement
			(&)	[]
		>
	:	DynamicCountArray
		<	t_tElement
		>
	{
		using
			reference
		=	t_tElement
			&
		;

		using
			DynamicCountArray
			<	t_tElement
			>
		::	DynamicCountArray
		;
	};

	template
		<	typename
				t_tElement
		>
	using
		RSpan
	=	Auto
		<	t_tElement
			(&)	[]
		>
	;
}
