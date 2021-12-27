export module Meta.Predicate.Compound;

export import Meta.Predicate.Fundamental;

namespace
	Meta
{
	export Term constexpr inline
		IsCompound
	=	not
		IsFundamental
	;
}
