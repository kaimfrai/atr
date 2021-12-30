export module Meta.Predicate.Referable;

export import Meta.Predicate.Addressable;

namespace
	Meta
{
	namespace
		Trait
	{
		export struct
			Referable final
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
				(	requires
					{	requires
						(	(	Type<t_tEntity>
							!=	Type<t_tEntity&>
							)
						and	(	Type<t_tEntity>
							!=	Type<t_tEntity&&>
							)
						);
					}
				);
			}
		};
	}

	export Term constexpr inline
		IsReferable
	=	Term{Trait::Referable{}}
	and	IsAddressable
	;

	export Term constexpr inline
		IsVoid
	=	not
		Term{Trait::Referable{}}
	and	IsAddressable
	;
}
