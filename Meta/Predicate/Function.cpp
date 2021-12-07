export module Meta.Predicate.Function;

export import Meta.Predicate.UnqualifiedFunction;
export import Meta.Predicate.QualifiedFunction;

export namespace
	Meta
{
	Term constexpr inline
		IsFunction
	=	IsUnqualifiedFunction
	or	IsQualifiedFunction
	;
}
