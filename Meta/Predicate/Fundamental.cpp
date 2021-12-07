export module Meta.Predicate.Fundamental;

export import Meta.Predicate.Void;
export import Meta.Predicate.NullPointer;
export import Meta.Predicate.Arithmetic;

export namespace
	Meta
{
	Term constexpr inline
		IsFundamental
	=	IsVoid
	or	IsNullPointer
	or	IsArithmetic
	;
}
