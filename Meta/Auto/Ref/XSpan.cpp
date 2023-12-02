export module Meta.Auto.Ref.XSpan;

import Meta.Auto.Primary;
import Meta.Auto.Ref.DynamicCountArray;

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
			(&&)[]
		>
	:	DynamicCountArray
		<	t_tElement
		>
	{
		using
			value_type
		=	t_tElement
		;

		using
			reference
		=	t_tElement
			&&
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
		XSpan
	=	Auto
		<	t_tElement
			(&&)[]
		>
	;
}
