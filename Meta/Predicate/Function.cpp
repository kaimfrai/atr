export module Meta.Predicate.Function;

export import Meta.Predicate.Compound;
export import Meta.Predicate.Object;

namespace
	Meta
{
	export Term constexpr inline
		IsFunction
	=	IsCompound
	and	not
		IsObject
	and	Term{Trait::Function{}}
	and	not
		Term{Trait::Reference{}}
	;
}
