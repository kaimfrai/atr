export module Meta.Predicate.Reference;

export import Meta.Predicate.Compound;
export import Meta.Predicate.Object;

namespace
	Meta
{
	export Term constexpr inline
		IsReference
	=	IsCompound
	and	not
		IsObject
	and	not
		Term{Trait::Function{}}
	and	Term{Trait::Reference{}}
	;
}

