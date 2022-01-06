export module Meta.Ignore;

export namespace
	Meta
{
	template
		<	auto
		,	typename
				t_tType
		>
	using
		ValueToType
	=	t_tType
	;

	struct
		Ignore
	{
		constexpr
		(	Ignore
		)	()
		=	default;

		constexpr
		(	Ignore
		)	(	auto&&
			)
		{}

		auto constexpr
		(	operator =
		)	(	auto&&
			)	&
		->	Ignore&
		{	return *this;	}
	};
}
