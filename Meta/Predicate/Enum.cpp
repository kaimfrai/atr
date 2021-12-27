export module Meta.Predicate.Enum;

export import Meta.Predicate.CompoundScalar;

namespace
	Meta
{
	export Term constexpr inline
		IsEnum
	=	IsCompoundScalar
	and	Term{Trait::Enum{}}
	and	not
		Term{Trait::MemberPointer{}}
	and	not
		Term{Trait::Pointer{}}
	;
}
