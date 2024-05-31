export module Meta.Auto.Ref.XSpan;

import Meta.Auto.Var;
import Meta.Auto.Ref.DynamicCountArray;

export namespace
	Meta::Auto
{
	template
		<	typename
				t_tElement
		>
	struct
		Var
		<	t_tElement
			(&&)[]
		>
	:	DynamicCountArray
		<	t_tElement
			&&
		>
	{
		using
			reference
		=	t_tElement
			&&
		;

		using
			DynamicCountArray
			<	t_tElement
				&&
			>
		::	DynamicCountArray
		;

		explicit(false) constexpr inline
		(	Var
		)	(	Var const
				&
			)
			noexcept
		=	default;
	};

	template
		<	typename
				t_tElement
		>
	using
		XSpan
	=	Var
		<	t_tElement
			(&&)[]
		>
	;
}
