export module Meta.Predicate.Class;

export import Meta.TypeTraits;
export import Meta.Logic;

namespace
	Meta
{
	export auto constexpr inline
		IsClass
	=	Atom<Trait::Class>
	;
}
