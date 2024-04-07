export module Meta.Auto.Ref.RSpan;

export import Meta.Auto.Primary;
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
		(	Auto
		)	(	Auto const
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
	=	Auto
		<	t_tElement
			(&)	[]
		>
	;
}
