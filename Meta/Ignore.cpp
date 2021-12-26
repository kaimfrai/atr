export module Meta.Ignore;

namespace
	Meta
{
	export template
		<	auto
		,	typename
				t_tType
		>
	using
		ValueToType
	=	t_tType
	;

	export struct
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
