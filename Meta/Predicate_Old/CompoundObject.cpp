export module Meta.Predicate.CompoundObject;

export import Meta.Predicate.Compound;

 namespace
	Meta
{
	export Term constexpr inline
		IsCompoundObject
	=	IsCompound
	and	not
		Term{Trait::Function{}}
	and	not
		Term{Trait::Reference{}}
	;
}
