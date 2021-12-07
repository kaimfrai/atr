export module Meta.Predicate.QualifiedFunction;

export import Meta.TypeTraits;
export import Meta.Logic;

export namespace
	Meta
{
	Term constexpr inline
		IsQualifiedFunction
	=	Atom<Trait::QualifiedFunction>
	;
}

