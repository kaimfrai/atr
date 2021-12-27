export module Meta.Predicate.CompoundObject;

export import Meta.Predicate.Compound;
export import Meta.Predicate.Object;

 namespace
	Meta
{
	export Term constexpr inline
		IsCompoundObject
	=	IsCompound
	and	IsObject
	and	not
		Term{Trait::Function{}}
	and	not
		Term{Trait::Reference{}}
	;
}
