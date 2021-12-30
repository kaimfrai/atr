export module Meta.Predicate.Union;

export import Meta.Predicate.Array;

namespace
	Meta
{
	namespace
		Trait
	{
		export struct
			Union final
		{
			template
				<	typename
						t_tEntity
				>
			auto constexpr
			(	operator()
			)	(	TypeToken<t_tEntity>
				)	const
			->	bool
			{	return std::is_union_v<t_tEntity>;	}
		};
	}

	export Term constexpr inline
		IsUnion
	=	Term{Trait::Union{}}
	and	IsUserDefined
	;

	export Term constexpr inline
		IsClass
	=	not
		Term{Trait::Union{}}
	and	IsUserDefined
	;
}
