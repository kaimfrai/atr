export module Meta.Ignore;

export import Meta.Concept.Category;

export namespace
	Meta
{
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
	};
}
