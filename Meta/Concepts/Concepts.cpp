module;

#include <type_traits>

export module Meta.Concepts;

import Meta.TypeTraits;
import Meta.Logic;

export namespace
	Meta
{
	Term constexpr inline
		IsFundamental
	=	Atom<Fundamental>
	;

	Term constexpr inline
		IsCompound
	=	Atom<Compound>
	;

	Term constexpr inline
		IsObject
	=	Atom<Object>
	;

	Term constexpr inline
		IsReference
	=	IsCompound
	and	Atom<Reference>
	;
	Term constexpr inline
		IsLValueReference
	=	IsReference
	and	Atom<LValueReference>
	;

	Term constexpr inline
		IsRValueReference
	=	IsReference
	and	Atom<RValueReference>
	;

	Term constexpr inline
		IsScalar
	=	IsObject
	and	Atom<Scalar>
	;

	Term constexpr inline
		IsVoid
	=	IsFundamental
	and	Atom<Void>
	;

	Term constexpr inline
		IsNullPointer
	=	IsFundamental
	and	IsScalar
	and	Atom<NullPointer>
	;

	Term constexpr inline
		IsArithmetic
	=	IsFundamental
	and	IsScalar
	and	Atom<Arithmetic>
	;

	Term constexpr inline
		IsIntegral
	=	IsArithmetic
	and	Atom<Integral>
	;


	Term constexpr inline
		IsFloatingPoint
	=	IsArithmetic
	and	Atom<FloatingPoint>
	;

	Term constexpr inline
		IsArray
	=	IsCompound
	and	IsObject
	and	Atom<Array>
	;

	Term constexpr inline
		IsEnum
	=	IsCompound
	and	IsScalar
	and	Atom<Enum>
	;

	Term constexpr inline
		IsUnion
	=	IsCompound
	and	IsObject
	and	Atom<Union>
	;

	Term constexpr inline
		IsClass
	=	IsCompound
	and	IsObject
	and	Atom<Class>
	;


	Term constexpr inline
		IsFunction
	=	IsCompound
	and	Atom<Function>
	;

	template
		<	Term
		=	IsObject or IsFunction
		>
	Term constexpr inline
		IsPointer
	=	IsCompound
	and	IsScalar
	and	Atom<Pointer>
	;

	Term constexpr inline
		IsMemberPointer
	=	IsCompound
	and	IsScalar
	and	Atom<MemberPointer>
	;


	Term constexpr inline
		IsMemberObjectPointer
	=	IsMemberPointer
	and	Atom<MemberObjectPointer>
	;

	Term constexpr inline
		IsMemberFunctionPointer
	=	IsMemberPointer
	and	Atom<MemberFunctionPointer>
	;
}
