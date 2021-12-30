export module Meta.Predicate.Fundamental;

export import Meta.TypeTraits;
export import Meta.Logic;

namespace
	Meta
{
	export Term constexpr inline
		IsFundamental
	=	Term{Trait::Fundamental{}}
	;
}
