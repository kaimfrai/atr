export module Meta.Predicate.Empty;

import Meta.Predicate.Regular;
import Meta.Predicate.Category;

import Meta.Token.Type;
import Meta.Logic.LiteralBase;
import Meta.Logic.Conjunction;
import Meta.Logic.Term;
import Meta.Data.Object;

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

using ::Meta::Logic::DeduceTerm;
using ::Meta::Logic::Literal;

export namespace
	Meta
{
	DeduceTerm
	<	Literal<Trait::Empty>
	and	IsCustom
	>	extern
		IsEmpty
	;

	///	Types that do not have a state and can be freely created, copied, and moved.
	DeduceTerm
	<	IsEmpty
	and	IsConstructible_From<>
	and	IsCopyConstructible
	>	extern
		IsStateless
	;
}
