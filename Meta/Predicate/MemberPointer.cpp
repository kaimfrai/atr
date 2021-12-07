export module Meta.Predicate.MemberPointer;

export import Meta.TypeTraits;
export import Meta.Logic;

export namespace
	Meta
{
	Term constexpr inline
		IsMemberPointer
	=	Atom<Trait::MemberPointer>
	;
}
