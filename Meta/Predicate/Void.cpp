export module Meta.Predicate.Void;

export import Meta.TypeTraits;
export import Meta.Logic;

namespace
	Meta
{
	export auto constexpr inline
		IsVoid
	=	Atom<Trait::Void>
	;
}
