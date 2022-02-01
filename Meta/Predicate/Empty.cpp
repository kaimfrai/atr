export module Meta.Predicate.Empty;

export import Meta.Concept.Empty;
export import Meta.Logic;
export import Meta.Predicate.Regular;

export namespace
	Meta
{
	Term constexpr inline
		IsEmpty
	=	Term{Trait::Empty{true}}
	and	IsCustom
	;

	Term constexpr inline
		IsStateless
	=	IsEmpty
	and	IsConstructible_From<>
	and	IsCopyConstructible
	;
}
