export module Meta.Predicate.Pointable;

export import Meta.Predicate.Fundamental;
export import Meta.Predicate.CompoundObject;

namespace
	Meta
{
	export Term constexpr inline
		IsPointable
	=	IsFundamental
	or	IsCompoundObject
	;
}
