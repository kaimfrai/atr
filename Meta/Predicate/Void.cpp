export module Meta.Predicate.Void;

export import Meta.TypeTraits;
export import Meta.Logic;

export namespace
	Meta
{
	Term constexpr inline
		IsVoid
	=	Atom<Trait::Void>
	;
}
