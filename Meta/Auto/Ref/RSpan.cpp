export module Meta.Auto.Ref.RSpan;

export import Meta.Auto.Primary;
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
			(&)	[]
		>
	:	DynamicCountArray
		<	t_tElement
			&
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
				&
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
		RSpan
	=	Var
		<	t_tElement
			(&)	[]
		>
	;
}
