export module Meta.Concepts;
import Meta.TypeTraits;
import Meta.Logic;

export namespace
	Meta
{
	Term constexpr inline
		IsFundamental
	=	Atom<FundamentalTrait>
	;

	Term constexpr inline
		IsCompound
	=	Atom<CompoundTrait>
	;

	Term constexpr inline
		IsObject
	=	Atom<ObjectTrait>
	;

	Term constexpr inline
		IsReference
	=	IsCompound
	and	Atom<ReferenceTrait>
	;
	Term constexpr inline
		IsLValueReference
	=	IsReference
	and	Atom<LValueReferenceTrait>
	;

	Term constexpr inline
		IsRValueReference
	=	IsReference
	and	Atom<RValueReferenceTrait>
	;

	Term constexpr inline
		IsScalar
	=	IsObject
	and	Atom<ScalarTrait>
	;

	Term constexpr inline
		IsVoid
	=	IsFundamental
	and	Atom<VoidTrait>
	;

	Term constexpr inline
		IsNullPointer
	=	IsFundamental
	and	IsScalar
	and	Atom<NullPointerTrait>
	;

	Term constexpr inline
		IsArithmetic
	=	IsFundamental
	and	IsScalar
	and	Atom<ArithmeticTrait>
	;

	Term constexpr inline
		IsIntegral
	=	IsArithmetic
	and	Atom<IntegralTrait>
	;


	Term constexpr inline
		IsFloatingPoint
	=	IsArithmetic
	and	Atom<FloatingPointTrait>
	;

	Term constexpr inline
		IsArray
	=	IsCompound
	and	IsObject
	and	Atom<ArrayTrait>
	;

	Term constexpr inline
		IsEnum
	=	IsCompound
	and	IsScalar
	and	Atom<EnumTrait>
	;

	Term constexpr inline
		IsUnion
	=	IsCompound
	and	IsObject
	and	Atom<UnionTrait>
	;

	Term constexpr inline
		IsClass
	=	IsCompound
	and	IsObject
	and	Atom<ClassTrait>
	;


	Term constexpr inline
		IsFunction
	=	IsCompound
	and	Atom<FunctionTrait>
	;

	template
		<	Term
		=	IsObject or IsFunction
		>
	Term constexpr inline
		IsPointer
	=	IsCompound
	and	IsScalar
	and	Atom<PointerTrait>
	;

	Term constexpr inline
		IsMemberPointer
	=	IsCompound
	and	IsScalar
	and	Atom<MemberPointerTrait>
	;


	Term constexpr inline
		IsMemberObjectPointer
	=	IsMemberPointer
	and	Atom<MemberObjectPointerTrait>
	;

	Term constexpr inline
		IsMemberFunctionPointer
	=	IsMemberPointer
	and	Atom<MemberFunctionPointerTrait>
	;
}
