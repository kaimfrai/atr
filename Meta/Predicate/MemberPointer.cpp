export module Meta.Predicate.MemberPointer;

export import Meta.TypeTraits;
export import Meta.Logic;

namespace
	Meta
{
	export auto constexpr inline
		IsMemberPointer
	=	Atom<Trait::MemberPointer>
	;
}
