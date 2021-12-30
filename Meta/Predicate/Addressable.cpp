export module Meta.Predicate.Addressable;

export import Meta.Type;
export import Meta.Logic;

namespace
	Meta
{
	namespace
		Trait
	{
		export struct
			Addressable final
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
			{	return
					requires{ Type<t_tEntity*>; }
				;
			}
		};
	}

	export Term constexpr inline
		IsAddressable
	=	Term{Trait::Addressable{}}
	;
}
