export module Meta.Predicate:Empty;

export import :Regular;

export import Meta.Logic;
export import Meta.Data;

import Std;

export namespace
	Meta::Trait
{
	struct
		Empty final
	:	LiteralBase
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
			//	necessary for empty unions
			::std::is_empty_v
			<	::Meta::Data::Object<t_tEntity>
			>;
		}
	};
}

export namespace
	Meta
{
	extern decltype
	(	Literal<Trait::Empty>
	and	IsCustom
	)	IsEmpty
	;

	///	Types that do not have a state and can be freely created, copied, and moved.
	extern decltype
	(	IsEmpty
	and	IsConstructible_From<>
	and	IsCopyConstructible
	)	IsStateless
	;
}
