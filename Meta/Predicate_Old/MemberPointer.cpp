export module Meta.Predicate.MemberPointer;

export import Meta.Predicate.CompoundScalar;

namespace
	Meta
{
	export Term constexpr inline
		IsMemberPointer
	=	IsCompoundScalar
	and	not
		Term{Trait::Enum{}}
	and	Term{Trait::MemberPointer{}}
	;
}
