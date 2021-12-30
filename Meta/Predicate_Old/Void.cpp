export module Meta.Predicate.Void;

export import Meta.Predicate.Fundamental;

namespace
	Meta
{
	export Term constexpr inline
		IsVoid
	=	IsFundamental
	and	Term{Trait::Void{}}
	;
}
