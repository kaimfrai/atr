export module Meta.Predicate.LValueReference;

export import Meta.TypeTraits;
export import Meta.Logic;

namespace
	Meta
{
	export auto constexpr inline
		IsLValueReference
	=	Atom<Trait::LValueReference>
	;
}
