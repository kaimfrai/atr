export module Meta.Predicate.Pointer;

export import Meta.Predicate.CompoundScalar;

namespace
	Meta
{
	export Term constexpr inline
		IsPointer
	=	IsCompoundScalar
	and	not
		Term{Trait::Enum{}}
	and	not
		Term{Trait::MemberPointer{}}
	;
}

