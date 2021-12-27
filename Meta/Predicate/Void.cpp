export module Meta.Predicate.Void;

export import Meta.Predicate.Fundamental;
export import Meta.Predicate.Scalar;

namespace
	Meta
{
	export Term constexpr inline
		IsVoid
	=	IsFundamental
	and	not
		IsScalar
	and	Term{Trait::Void{}}
	;
}
