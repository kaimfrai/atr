export module Meta.Predicate.QualifiedFunction;

export import Meta.TypeTraits;
export import Meta.Logic;

namespace
	Meta
{
	export auto constexpr inline
		IsQualifiedFunction
	=	Atom<Trait::QualifiedFunction>
	;
}

