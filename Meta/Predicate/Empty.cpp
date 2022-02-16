export module Meta.Predicate.Empty;

export import Meta.Concept.Category;
export import Meta.Logic;
export import Meta.Predicate.Regular;
export import Meta.Data.Object;

import Std;

export namespace
	Meta::Trait
{
	struct
		Empty final
	:	LiteralBase
	{
		using LiteralBase::operator();

		template
			<	ProtoCustom
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return
			(	Polarity
			==	//	necessary for empty unions
				::std::is_empty_v
				<	::Meta::Data::Object<t_tEntity>
				>
			);
		}
	};
}

export namespace
	Meta
{
	Term constexpr inline
		IsEmpty
	=	Term{Trait::Empty{true}}
	and	IsCustom
	;

	///	Types that do not have a state and can be freely created, copied, and moved.
	Term constexpr inline
		IsStateless
	=	IsEmpty
	and	IsConstructible_From<>
	and	IsCopyConstructible
	;
}
