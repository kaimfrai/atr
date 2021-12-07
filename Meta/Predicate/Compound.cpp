export module Meta.Predicate.Compound;

export import Meta.Predicate.Enum;
export import Meta.Predicate.Pointer;
export import Meta.Predicate.MemberPointer;
export import Meta.Predicate.Function;
export import Meta.Predicate.Reference;
export import Meta.Predicate.CompoundObject;

export namespace
	Meta
{
	Term constexpr inline
		IsCompound
	=	IsEnum
	or	IsPointer
	or	IsMemberPointer
	or	IsFunction
	or	IsReference
	or	IsCompoundObject
	;
}
