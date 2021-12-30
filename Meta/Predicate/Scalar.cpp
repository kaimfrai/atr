export module Meta.Predicate.Scalar;

export import Meta.Predicate.Object;

namespace
	Meta
{
	namespace
		Trait
	{
		export struct
			Scalar final
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
			{	return std::is_scalar_v<t_tEntity>;	}
		};
	}

	export Term constexpr inline
		IsScalar
	=	Term{Trait::Scalar{}}
	and	IsObject
	;

	export Term constexpr inline
		IsCompoundObject
	=	not
		Term{Trait::Scalar{}}
	and	IsObject
	;
}
