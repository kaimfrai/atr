import Meta.Predicate.Category;

using Meta::Type;
using Meta::IsValue;
using Meta::IsFunction;
using Meta::IsVoid;
using Meta::IsUnboundedArray;
using Meta::IsReference;
using Meta::IsLValueReference;
using Meta::IsRValueReference;
using Meta::IsArithmetic;
using Meta::IsUnsigned;
using Meta::IsSignedIntegral;
using Meta::IsSigned;
using Meta::IsPointer;
using Meta::IsNullPointer;
using Meta::IsMemberPointer;
using Meta::IsBoundedArray;
using Meta::IsEnum;
using Meta::IsScopedEnum;
using Meta::IsUnscopedEnum;
using Meta::IsCustom;
using Meta::IsClass;
using Meta::IsUnion;
using Meta::IsCompoundObject;
using Meta::IsObject;
using Meta::IsArray;
using Meta::IsFundamental;
using Meta::IsCompound;
using Meta::IsScalar;
using Meta::IsReferable;
using Meta::IsPointable;
using Meta::IsArgument;
using Meta::IsParameter;
using Meta::IsReturnable;
using Meta::IsDataMember;
using Meta::IsCVQualifiable;

using Void = void;
using Unsigned = unsigned;
using Signed = signed;
using Float = float;
using Nullptr = decltype(nullptr);

using Ptr = int*;
using LRef = int&;
using RRef = int&&;

using BArr = int[2];
using UArr = int[];

enum UEnum : int;
enum class SEnum : int;

class Class;
union Union;

using MPtr = int Class::*;

using Func = void();
using NxFunc = void() noexcept;
using QFunc= void() const&;
using QNxFunc = void() const& noexcept;

static_assert(not
	IsValue(Type<Void>));
static_assert(
	IsValue(Type<Unsigned>));
static_assert(
	IsValue(Type<Signed>));
static_assert(
	IsValue(Type<Float>));
static_assert(
	IsValue(Type<Nullptr>));
static_assert(
	IsValue(Type<Ptr>));
static_assert(not
	IsValue(Type<LRef>));
static_assert(not
	IsValue(Type<RRef>));
static_assert(
	IsValue(Type<BArr>));
static_assert(not
	IsValue(Type<UArr>));
static_assert(
	IsValue(Type<UEnum>));
static_assert(
	IsValue(Type<SEnum>));
static_assert(
	IsValue(Type<Class>));
static_assert(
	IsValue(Type<Union>));
static_assert(
	IsValue(Type<MPtr>));
static_assert(not
	IsValue(Type<Func>));
static_assert(not
	IsValue(Type<NxFunc>));
static_assert(not
	IsValue(Type<QFunc>));
static_assert(not
	IsValue(Type<QNxFunc>));

static_assert(not
	IsFunction(Type<Void>));
static_assert(not
	IsFunction(Type<Unsigned>));
static_assert(not
	IsFunction(Type<Signed>));
static_assert(not
	IsFunction(Type<Float>));
static_assert(not
	IsFunction(Type<Nullptr>));
static_assert(not
	IsFunction(Type<Ptr>));
static_assert(not
	IsFunction(Type<LRef>));
static_assert(not
	IsFunction(Type<RRef>));
static_assert(not
	IsFunction(Type<BArr>));
static_assert(not
	IsFunction(Type<UArr>));
static_assert(not
	IsFunction(Type<UEnum>));
static_assert(not
	IsFunction(Type<SEnum>));
static_assert(not
	IsFunction(Type<Class>));
static_assert(not
	IsFunction(Type<Union>));
static_assert(not
	IsFunction(Type<MPtr>));
static_assert(
	IsFunction(Type<Func>));
static_assert(
	IsFunction(Type<NxFunc>));
static_assert(
	IsFunction(Type<QFunc>));
static_assert(
	IsFunction(Type<QNxFunc>));

static_assert(
	IsVoid(Type<Void>));
static_assert(not
	IsVoid(Type<Unsigned>));
static_assert(not
	IsVoid(Type<Signed>));
static_assert(not
	IsVoid(Type<Float>));
static_assert(not
	IsVoid(Type<Nullptr>));
static_assert(not
	IsVoid(Type<Ptr>));
static_assert(not
	IsVoid(Type<LRef>));
static_assert(not
	IsVoid(Type<RRef>));
static_assert(not
	IsVoid(Type<BArr>));
static_assert(not
	IsVoid(Type<UArr>));
static_assert(not
	IsVoid(Type<UEnum>));
static_assert(not
	IsVoid(Type<SEnum>));
static_assert(not
	IsVoid(Type<Class>));
static_assert(not
	IsVoid(Type<Union>));
static_assert(not
	IsVoid(Type<MPtr>));
static_assert(not
	IsVoid(Type<Func>));
static_assert(not
	IsVoid(Type<NxFunc>));
static_assert(not
	IsVoid(Type<QFunc>));
static_assert(not
	IsVoid(Type<QNxFunc>));

static_assert(not
	IsUnboundedArray(Type<Void>));
static_assert(not
	IsUnboundedArray(Type<Unsigned>));
static_assert(not
	IsUnboundedArray(Type<Signed>));
static_assert(not
	IsUnboundedArray(Type<Float>));
static_assert(not
	IsUnboundedArray(Type<Nullptr>));
static_assert(not
	IsUnboundedArray(Type<Ptr>));
static_assert(not
	IsUnboundedArray(Type<LRef>));
static_assert(not
	IsUnboundedArray(Type<RRef>));
static_assert(not
	IsUnboundedArray(Type<BArr>));
static_assert(
	IsUnboundedArray(Type<UArr>));
static_assert(not
	IsUnboundedArray(Type<UEnum>));
static_assert(not
	IsUnboundedArray(Type<SEnum>));
static_assert(not
	IsUnboundedArray(Type<Class>));
static_assert(not
	IsUnboundedArray(Type<Union>));
static_assert(not
	IsUnboundedArray(Type<MPtr>));
static_assert(not
	IsUnboundedArray(Type<Func>));
static_assert(not
	IsUnboundedArray(Type<NxFunc>));
static_assert(not
	IsUnboundedArray(Type<QFunc>));
static_assert(not
	IsUnboundedArray(Type<QNxFunc>));

static_assert(not
	IsReference(Type<Void>));
static_assert(not
	IsReference(Type<Unsigned>));
static_assert(not
	IsReference(Type<Signed>));
static_assert(not
	IsReference(Type<Float>));
static_assert(not
	IsReference(Type<Nullptr>));
static_assert(not
	IsReference(Type<Ptr>));
static_assert(
	IsReference(Type<LRef>));
static_assert(
	IsReference(Type<RRef>));
static_assert(not
	IsReference(Type<BArr>));
static_assert(not
	IsReference(Type<UArr>));
static_assert(not
	IsReference(Type<UEnum>));
static_assert(not
	IsReference(Type<SEnum>));
static_assert(not
	IsReference(Type<Class>));
static_assert(not
	IsReference(Type<Union>));
static_assert(not
	IsReference(Type<MPtr>));
static_assert(not
	IsReference(Type<Func>));
static_assert(not
	IsReference(Type<NxFunc>));
static_assert(not
	IsReference(Type<QFunc>));
static_assert(not
	IsReference(Type<QNxFunc>));


static_assert(not
	IsLValueReference(Type<Void>));
static_assert(not
	IsLValueReference(Type<Unsigned>));
static_assert(not
	IsLValueReference(Type<Signed>));
static_assert(not
	IsLValueReference(Type<Float>));
static_assert(not
	IsLValueReference(Type<Nullptr>));
static_assert(not
	IsLValueReference(Type<Ptr>));
static_assert(
	IsLValueReference(Type<LRef>));
static_assert(not
	IsLValueReference(Type<RRef>));
static_assert(not
	IsLValueReference(Type<BArr>));
static_assert(not
	IsLValueReference(Type<UArr>));
static_assert(not
	IsLValueReference(Type<UEnum>));
static_assert(not
	IsLValueReference(Type<SEnum>));
static_assert(not
	IsLValueReference(Type<Class>));
static_assert(not
	IsLValueReference(Type<Union>));
static_assert(not
	IsLValueReference(Type<MPtr>));
static_assert(not
	IsLValueReference(Type<Func>));
static_assert(not
	IsLValueReference(Type<NxFunc>));
static_assert(not
	IsLValueReference(Type<QFunc>));
static_assert(not
	IsLValueReference(Type<QNxFunc>));

static_assert(not
	IsRValueReference(Type<Void>));
static_assert(not
	IsRValueReference(Type<Unsigned>));
static_assert(not
	IsRValueReference(Type<Signed>));
static_assert(not
	IsRValueReference(Type<Float>));
static_assert(not
	IsRValueReference(Type<Nullptr>));
static_assert(not
	IsRValueReference(Type<Ptr>));
static_assert(not
	IsRValueReference(Type<LRef>));
static_assert(
	IsRValueReference(Type<RRef>));
static_assert(not
	IsRValueReference(Type<BArr>));
static_assert(not
	IsRValueReference(Type<UArr>));
static_assert(not
	IsRValueReference(Type<UEnum>));
static_assert(not
	IsRValueReference(Type<SEnum>));
static_assert(not
	IsRValueReference(Type<Class>));
static_assert(not
	IsRValueReference(Type<Union>));
static_assert(not
	IsRValueReference(Type<MPtr>));
static_assert(not
	IsRValueReference(Type<Func>));
static_assert(not
	IsRValueReference(Type<NxFunc>));
static_assert(not
	IsRValueReference(Type<QFunc>));
static_assert(not
	IsRValueReference(Type<QNxFunc>));

static_assert(not
	IsArithmetic(Type<Void>));
static_assert(
	IsArithmetic(Type<Unsigned>));
static_assert(
	IsArithmetic(Type<Signed>));
static_assert(
	IsArithmetic(Type<Float>));
static_assert(not
	IsArithmetic(Type<Nullptr>));
static_assert(not
	IsArithmetic(Type<Ptr>));
static_assert(not
	IsArithmetic(Type<LRef>));
static_assert(not
	IsArithmetic(Type<RRef>));
static_assert(not
	IsArithmetic(Type<BArr>));
static_assert(not
	IsArithmetic(Type<UArr>));
static_assert(not
	IsArithmetic(Type<UEnum>));
static_assert(not
	IsArithmetic(Type<SEnum>));
static_assert(not
	IsArithmetic(Type<Class>));
static_assert(not
	IsArithmetic(Type<Union>));
static_assert(not
	IsArithmetic(Type<MPtr>));
static_assert(not
	IsArithmetic(Type<Func>));
static_assert(not
	IsArithmetic(Type<NxFunc>));
static_assert(not
	IsArithmetic(Type<QFunc>));
static_assert(not
	IsArithmetic(Type<QNxFunc>));

static_assert(not
	IsUnsigned(Type<Void>));
static_assert(
	IsUnsigned(Type<Unsigned>));
static_assert(not
	IsUnsigned(Type<Signed>));
static_assert(not
	IsUnsigned(Type<Float>));
static_assert(not
	IsUnsigned(Type<Nullptr>));
static_assert(not
	IsUnsigned(Type<Ptr>));
static_assert(not
	IsUnsigned(Type<LRef>));
static_assert(not
	IsUnsigned(Type<RRef>));
static_assert(not
	IsUnsigned(Type<BArr>));
static_assert(not
	IsUnsigned(Type<UArr>));
static_assert(not
	IsUnsigned(Type<UEnum>));
static_assert(not
	IsUnsigned(Type<SEnum>));
static_assert(not
	IsUnsigned(Type<Class>));
static_assert(not
	IsUnsigned(Type<Union>));
static_assert(not
	IsUnsigned(Type<MPtr>));
static_assert(not
	IsUnsigned(Type<Func>));
static_assert(not
	IsUnsigned(Type<NxFunc>));
static_assert(not
	IsUnsigned(Type<QFunc>));
static_assert(not
	IsUnsigned(Type<QNxFunc>));

static_assert(not
	IsSignedIntegral(Type<Void>));
static_assert(not
	IsSignedIntegral(Type<Unsigned>));
static_assert(
	IsSignedIntegral(Type<Signed>));
static_assert(not
	IsSignedIntegral(Type<Float>));
static_assert(not
	IsSignedIntegral(Type<Nullptr>));
static_assert(not
	IsSignedIntegral(Type<Ptr>));
static_assert(not
	IsSignedIntegral(Type<LRef>));
static_assert(not
	IsSignedIntegral(Type<RRef>));
static_assert(not
	IsSignedIntegral(Type<BArr>));
static_assert(not
	IsSignedIntegral(Type<UArr>));
static_assert(not
	IsSignedIntegral(Type<UEnum>));
static_assert(not
	IsSignedIntegral(Type<SEnum>));
static_assert(not
	IsSignedIntegral(Type<Class>));
static_assert(not
	IsSignedIntegral(Type<Union>));
static_assert(not
	IsSignedIntegral(Type<MPtr>));
static_assert(not
	IsSignedIntegral(Type<Func>));
static_assert(not
	IsSignedIntegral(Type<NxFunc>));
static_assert(not
	IsSignedIntegral(Type<QFunc>));
static_assert(not
	IsSignedIntegral(Type<QNxFunc>));

static_assert(not
	IsSigned(Type<Void>));
static_assert(not
	IsSigned(Type<Unsigned>));
static_assert(
	IsSigned(Type<Signed>));
static_assert(
	IsSigned(Type<Float>));
static_assert(not
	IsSigned(Type<Nullptr>));
static_assert(not
	IsSigned(Type<Ptr>));
static_assert(not
	IsSigned(Type<LRef>));
static_assert(not
	IsSigned(Type<RRef>));
static_assert(not
	IsSigned(Type<BArr>));
static_assert(not
	IsSigned(Type<UArr>));
static_assert(not
	IsSigned(Type<UEnum>));
static_assert(not
	IsSigned(Type<SEnum>));
static_assert(not
	IsSigned(Type<Class>));
static_assert(not
	IsSigned(Type<Union>));
static_assert(not
	IsSigned(Type<MPtr>));
static_assert(not
	IsSigned(Type<Func>));
static_assert(not
	IsSigned(Type<NxFunc>));
static_assert(not
	IsSigned(Type<QFunc>));
static_assert(not
	IsSigned(Type<QNxFunc>));

static_assert(not
	IsPointer(Type<Void>));
static_assert(not
	IsPointer(Type<Unsigned>));
static_assert(not
	IsPointer(Type<Signed>));
static_assert(not
	IsPointer(Type<Float>));
static_assert(not
	IsPointer(Type<Nullptr>));
static_assert(
	IsPointer(Type<Ptr>));
static_assert(not
	IsPointer(Type<LRef>));
static_assert(not
	IsPointer(Type<RRef>));
static_assert(not
	IsPointer(Type<BArr>));
static_assert(not
	IsPointer(Type<UArr>));
static_assert(not
	IsPointer(Type<UEnum>));
static_assert(not
	IsPointer(Type<SEnum>));
static_assert(not
	IsPointer(Type<Class>));
static_assert(not
	IsPointer(Type<Union>));
static_assert(not
	IsPointer(Type<MPtr>));
static_assert(not
	IsPointer(Type<Func>));
static_assert(not
	IsPointer(Type<NxFunc>));
static_assert(not
	IsPointer(Type<QFunc>));
static_assert(not
	IsPointer(Type<QNxFunc>));

static_assert(not
	IsNullPointer(Type<Void>));
static_assert(not
	IsNullPointer(Type<Unsigned>));
static_assert(not
	IsNullPointer(Type<Signed>));
static_assert(not
	IsNullPointer(Type<Float>));
static_assert(
	IsNullPointer(Type<Nullptr>));
static_assert(not
	IsNullPointer(Type<Ptr>));
static_assert(not
	IsNullPointer(Type<LRef>));
static_assert(not
	IsNullPointer(Type<RRef>));
static_assert(not
	IsNullPointer(Type<BArr>));
static_assert(not
	IsNullPointer(Type<UArr>));
static_assert(not
	IsNullPointer(Type<UEnum>));
static_assert(not
	IsNullPointer(Type<SEnum>));
static_assert(not
	IsNullPointer(Type<Class>));
static_assert(not
	IsNullPointer(Type<Union>));
static_assert(not
	IsNullPointer(Type<MPtr>));
static_assert(not
	IsNullPointer(Type<Func>));
static_assert(not
	IsNullPointer(Type<NxFunc>));
static_assert(not
	IsNullPointer(Type<QFunc>));
static_assert(not
	IsNullPointer(Type<QNxFunc>));

static_assert(not
	IsMemberPointer(Type<Void>));
static_assert(not
	IsMemberPointer(Type<Unsigned>));
static_assert(not
	IsMemberPointer(Type<Signed>));
static_assert(not
	IsMemberPointer(Type<Float>));
static_assert(not
	IsMemberPointer(Type<Nullptr>));
static_assert(not
	IsMemberPointer(Type<Ptr>));
static_assert(not
	IsMemberPointer(Type<LRef>));
static_assert(not
	IsMemberPointer(Type<RRef>));
static_assert(not
	IsMemberPointer(Type<BArr>));
static_assert(not
	IsMemberPointer(Type<UArr>));
static_assert(not
	IsMemberPointer(Type<UEnum>));
static_assert(not
	IsMemberPointer(Type<SEnum>));
static_assert(not
	IsMemberPointer(Type<Class>));
static_assert(not
	IsMemberPointer(Type<Union>));
static_assert(
	IsMemberPointer(Type<MPtr>));
static_assert(not
	IsMemberPointer(Type<Func>));
static_assert(not
	IsMemberPointer(Type<NxFunc>));
static_assert(not
	IsMemberPointer(Type<QFunc>));
static_assert(not
	IsMemberPointer(Type<QNxFunc>));

static_assert(not
	IsBoundedArray(Type<Void>));
static_assert(not
	IsBoundedArray(Type<Unsigned>));
static_assert(not
	IsBoundedArray(Type<Signed>));
static_assert(not
	IsBoundedArray(Type<Float>));
static_assert(not
	IsBoundedArray(Type<Nullptr>));
static_assert(not
	IsBoundedArray(Type<Ptr>));
static_assert(not
	IsBoundedArray(Type<LRef>));
static_assert(not
	IsBoundedArray(Type<RRef>));
static_assert(
	IsBoundedArray(Type<BArr>));
static_assert(not
	IsBoundedArray(Type<UArr>));
static_assert(not
	IsBoundedArray(Type<UEnum>));
static_assert(not
	IsBoundedArray(Type<SEnum>));
static_assert(not
	IsBoundedArray(Type<Class>));
static_assert(not
	IsBoundedArray(Type<Union>));
static_assert(not
	IsBoundedArray(Type<MPtr>));
static_assert(not
	IsBoundedArray(Type<Func>));
static_assert(not
	IsBoundedArray(Type<NxFunc>));
static_assert(not
	IsBoundedArray(Type<QFunc>));
static_assert(not
	IsBoundedArray(Type<QNxFunc>));

static_assert(not
	IsEnum(Type<Void>));
static_assert(not
	IsEnum(Type<Unsigned>));
static_assert(not
	IsEnum(Type<Signed>));
static_assert(not
	IsEnum(Type<Float>));
static_assert(not
	IsEnum(Type<Nullptr>));
static_assert(not
	IsEnum(Type<Ptr>));
static_assert(not
	IsEnum(Type<LRef>));
static_assert(not
	IsEnum(Type<RRef>));
static_assert(not
	IsEnum(Type<BArr>));
static_assert(not
	IsEnum(Type<UArr>));
static_assert(
	IsEnum(Type<UEnum>));
static_assert(
	IsEnum(Type<SEnum>));
static_assert(not
	IsEnum(Type<Class>));
static_assert(not
	IsEnum(Type<Union>));
static_assert(not
	IsEnum(Type<MPtr>));
static_assert(not
	IsEnum(Type<Func>));
static_assert(not
	IsEnum(Type<NxFunc>));
static_assert(not
	IsEnum(Type<QFunc>));
static_assert(not
	IsEnum(Type<QNxFunc>));

static_assert(not
	IsScopedEnum(Type<Void>));
static_assert(not
	IsScopedEnum(Type<Unsigned>));
static_assert(not
	IsScopedEnum(Type<Signed>));
static_assert(not
	IsScopedEnum(Type<Float>));
static_assert(not
	IsScopedEnum(Type<Nullptr>));
static_assert(not
	IsScopedEnum(Type<Ptr>));
static_assert(not
	IsScopedEnum(Type<LRef>));
static_assert(not
	IsScopedEnum(Type<RRef>));
static_assert(not
	IsScopedEnum(Type<BArr>));
static_assert(not
	IsScopedEnum(Type<UArr>));
static_assert(not
	IsScopedEnum(Type<UEnum>));
static_assert(
	IsScopedEnum(Type<SEnum>));
static_assert(not
	IsScopedEnum(Type<Class>));
static_assert(not
	IsScopedEnum(Type<Union>));
static_assert(not
	IsScopedEnum(Type<MPtr>));
static_assert(not
	IsScopedEnum(Type<Func>));
static_assert(not
	IsScopedEnum(Type<NxFunc>));
static_assert(not
	IsScopedEnum(Type<QFunc>));
static_assert(not
	IsScopedEnum(Type<QNxFunc>));

static_assert(not
	IsUnscopedEnum(Type<Void>));
static_assert(not
	IsUnscopedEnum(Type<Unsigned>));
static_assert(not
	IsUnscopedEnum(Type<Signed>));
static_assert(not
	IsUnscopedEnum(Type<Float>));
static_assert(not
	IsUnscopedEnum(Type<Nullptr>));
static_assert(not
	IsUnscopedEnum(Type<Ptr>));
static_assert(not
	IsUnscopedEnum(Type<LRef>));
static_assert(not
	IsUnscopedEnum(Type<RRef>));
static_assert(not
	IsUnscopedEnum(Type<BArr>));
static_assert(not
	IsUnscopedEnum(Type<UArr>));
static_assert(
	IsUnscopedEnum(Type<UEnum>));
static_assert(not
	IsUnscopedEnum(Type<SEnum>));
static_assert(not
	IsUnscopedEnum(Type<Class>));
static_assert(not
	IsUnscopedEnum(Type<Union>));
static_assert(not
	IsUnscopedEnum(Type<MPtr>));
static_assert(not
	IsUnscopedEnum(Type<Func>));
static_assert(not
	IsUnscopedEnum(Type<NxFunc>));
static_assert(not
	IsUnscopedEnum(Type<QFunc>));
static_assert(not
	IsUnscopedEnum(Type<QNxFunc>));

static_assert(not
	IsCustom(Type<Void>));
static_assert(not
	IsCustom(Type<Unsigned>));
static_assert(not
	IsCustom(Type<Signed>));
static_assert(not
	IsCustom(Type<Float>));
static_assert(not
	IsCustom(Type<Nullptr>));
static_assert(not
	IsCustom(Type<Ptr>));
static_assert(not
	IsCustom(Type<LRef>));
static_assert(not
	IsCustom(Type<RRef>));
static_assert(not
	IsCustom(Type<BArr>));
static_assert(not
	IsCustom(Type<UArr>));
static_assert(not
	IsCustom(Type<UEnum>));
static_assert(not
	IsCustom(Type<SEnum>));
static_assert(
	IsCustom(Type<Class>));
static_assert(
	IsCustom(Type<Union>));
static_assert(not
	IsCustom(Type<MPtr>));
static_assert(not
	IsCustom(Type<Func>));
static_assert(not
	IsCustom(Type<NxFunc>));
static_assert(not
	IsCustom(Type<QFunc>));
static_assert(not
	IsCustom(Type<QNxFunc>));

static_assert(not
	IsClass(Type<Void>));
static_assert(not
	IsClass(Type<Unsigned>));
static_assert(not
	IsClass(Type<Signed>));
static_assert(not
	IsClass(Type<Float>));
static_assert(not
	IsClass(Type<Nullptr>));
static_assert(not
	IsClass(Type<Ptr>));
static_assert(not
	IsClass(Type<LRef>));
static_assert(not
	IsClass(Type<RRef>));
static_assert(not
	IsClass(Type<BArr>));
static_assert(not
	IsClass(Type<UArr>));
static_assert(not
	IsClass(Type<UEnum>));
static_assert(not
	IsClass(Type<SEnum>));
static_assert(
	IsClass(Type<Class>));
static_assert(not
	IsClass(Type<Union>));
static_assert(not
	IsClass(Type<MPtr>));
static_assert(not
	IsClass(Type<Func>));
static_assert(not
	IsClass(Type<NxFunc>));
static_assert(not
	IsClass(Type<QFunc>));
static_assert(not
	IsClass(Type<QNxFunc>));

static_assert(not
	IsUnion(Type<Void>));
static_assert(not
	IsUnion(Type<Unsigned>));
static_assert(not
	IsUnion(Type<Signed>));
static_assert(not
	IsUnion(Type<Float>));
static_assert(not
	IsUnion(Type<Nullptr>));
static_assert(not
	IsUnion(Type<Ptr>));
static_assert(not
	IsUnion(Type<LRef>));
static_assert(not
	IsUnion(Type<RRef>));
static_assert(not
	IsUnion(Type<BArr>));
static_assert(not
	IsUnion(Type<UArr>));
static_assert(not
	IsUnion(Type<UEnum>));
static_assert(not
	IsUnion(Type<SEnum>));
static_assert(not
	IsUnion(Type<Class>));
static_assert(
	IsUnion(Type<Union>));
static_assert(not
	IsUnion(Type<MPtr>));
static_assert(not
	IsUnion(Type<Func>));
static_assert(not
	IsUnion(Type<NxFunc>));
static_assert(not
	IsUnion(Type<QFunc>));
static_assert(not
	IsUnion(Type<QNxFunc>));

static_assert(not
	IsCompoundObject(Type<Void>));
static_assert(not
	IsCompoundObject(Type<Unsigned>));
static_assert(not
	IsCompoundObject(Type<Signed>));
static_assert(not
	IsCompoundObject(Type<Float>));
static_assert(not
	IsCompoundObject(Type<Nullptr>));
static_assert(not
	IsCompoundObject(Type<Ptr>));
static_assert(not
	IsCompoundObject(Type<LRef>));
static_assert(not
	IsCompoundObject(Type<RRef>));
static_assert(
	IsCompoundObject(Type<BArr>));
static_assert(not
	IsCompoundObject(Type<UArr>));
static_assert(not
	IsCompoundObject(Type<UEnum>));
static_assert(not
	IsCompoundObject(Type<SEnum>));
static_assert(
	IsCompoundObject(Type<Class>));
static_assert(
	IsCompoundObject(Type<Union>));
static_assert(not
	IsCompoundObject(Type<MPtr>));
static_assert(not
	IsCompoundObject(Type<Func>));
static_assert(not
	IsCompoundObject(Type<NxFunc>));
static_assert(not
	IsCompoundObject(Type<QFunc>));
static_assert(not
	IsCompoundObject(Type<QNxFunc>));

static_assert(not
	IsObject(Type<Void>));
static_assert(
	IsObject(Type<Unsigned>));
static_assert(
	IsObject(Type<Signed>));
static_assert(
	IsObject(Type<Float>));
static_assert(
	IsObject(Type<Nullptr>));
static_assert(
	IsObject(Type<Ptr>));
static_assert(not
	IsObject(Type<LRef>));
static_assert(not
	IsObject(Type<RRef>));
static_assert(
	IsObject(Type<BArr>));
static_assert(
	IsObject(Type<UArr>));
static_assert(
	IsObject(Type<UEnum>));
static_assert(
	IsObject(Type<SEnum>));
static_assert(
	IsObject(Type<Class>));
static_assert(
	IsObject(Type<Union>));
static_assert(
	IsObject(Type<MPtr>));
static_assert(not
	IsObject(Type<Func>));
static_assert(not
	IsObject(Type<NxFunc>));
static_assert(not
	IsObject(Type<QFunc>));
static_assert(not
	IsObject(Type<QNxFunc>));

static_assert(not
	IsArray(Type<Void>));
static_assert(not
	IsArray(Type<Unsigned>));
static_assert(not
	IsArray(Type<Signed>));
static_assert(not
	IsArray(Type<Float>));
static_assert(not
	IsArray(Type<Nullptr>));
static_assert(not
	IsArray(Type<Ptr>));
static_assert(not
	IsArray(Type<LRef>));
static_assert(not
	IsArray(Type<RRef>));
static_assert(
	IsArray(Type<BArr>));
static_assert(
	IsArray(Type<UArr>));
static_assert(not
	IsArray(Type<UEnum>));
static_assert(not
	IsArray(Type<SEnum>));
static_assert(not
	IsArray(Type<Class>));
static_assert(not
	IsArray(Type<Union>));
static_assert(not
	IsArray(Type<MPtr>));
static_assert(not
	IsArray(Type<Func>));
static_assert(not
	IsArray(Type<NxFunc>));
static_assert(not
	IsArray(Type<QFunc>));
static_assert(not
	IsArray(Type<QNxFunc>));

static_assert(
	IsFundamental(Type<Void>));
static_assert(
	IsFundamental(Type<Unsigned>));
static_assert(
	IsFundamental(Type<Signed>));
static_assert(
	IsFundamental(Type<Float>));
static_assert(
	IsFundamental(Type<Nullptr>));
static_assert(not
	IsFundamental(Type<Ptr>));
static_assert(not
	IsFundamental(Type<LRef>));
static_assert(not
	IsFundamental(Type<RRef>));
static_assert(not
	IsFundamental(Type<BArr>));
static_assert(not
	IsFundamental(Type<UArr>));
static_assert(not
	IsFundamental(Type<UEnum>));
static_assert(not
	IsFundamental(Type<SEnum>));
static_assert(not
	IsFundamental(Type<Class>));
static_assert(not
	IsFundamental(Type<Union>));
static_assert(not
	IsFundamental(Type<MPtr>));
static_assert(not
	IsFundamental(Type<Func>));
static_assert(not
	IsFundamental(Type<NxFunc>));
static_assert(not
	IsFundamental(Type<QFunc>));
static_assert(not
	IsFundamental(Type<QNxFunc>));

static_assert(not
	IsCompound(Type<Void>));
static_assert(not
	IsCompound(Type<Unsigned>));
static_assert(not
	IsCompound(Type<Signed>));
static_assert(not
	IsCompound(Type<Float>));
static_assert(not
	IsCompound(Type<Nullptr>));
static_assert(
	IsCompound(Type<Ptr>));
static_assert(
	IsCompound(Type<LRef>));
static_assert(
	IsCompound(Type<RRef>));
static_assert(
	IsCompound(Type<BArr>));
static_assert(
	IsCompound(Type<UArr>));
static_assert(
	IsCompound(Type<UEnum>));
static_assert(
	IsCompound(Type<SEnum>));
static_assert(
	IsCompound(Type<Class>));
static_assert(
	IsCompound(Type<Union>));
static_assert(
	IsCompound(Type<MPtr>));
static_assert(
	IsCompound(Type<Func>));
static_assert(
	IsCompound(Type<NxFunc>));
static_assert(
	IsCompound(Type<QFunc>));
static_assert(
	IsCompound(Type<QNxFunc>));

static_assert(not
	IsScalar(Type<Void>));
static_assert(
	IsScalar(Type<Unsigned>));
static_assert(
	IsScalar(Type<Signed>));
static_assert(
	IsScalar(Type<Float>));
static_assert(
	IsScalar(Type<Nullptr>));
static_assert(
	IsScalar(Type<Ptr>));
static_assert(not
	IsScalar(Type<LRef>));
static_assert(not
	IsScalar(Type<RRef>));
static_assert(not
	IsScalar(Type<BArr>));
static_assert(not
	IsScalar(Type<UArr>));
static_assert(
	IsScalar(Type<UEnum>));
static_assert(
	IsScalar(Type<SEnum>));
static_assert(not
	IsScalar(Type<Class>));
static_assert(not
	IsScalar(Type<Union>));
static_assert(
	IsScalar(Type<MPtr>));
static_assert(not
	IsScalar(Type<Func>));
static_assert(not
	IsScalar(Type<NxFunc>));
static_assert(not
	IsScalar(Type<QFunc>));
static_assert(not
	IsScalar(Type<QNxFunc>));

static_assert(not
	IsReferable(Type<Void>));
static_assert(
	IsReferable(Type<Unsigned>));
static_assert(
	IsReferable(Type<Signed>));
static_assert(
	IsReferable(Type<Float>));
static_assert(
	IsReferable(Type<Nullptr>));
static_assert(
	IsReferable(Type<Ptr>));
static_assert(not
	IsReferable(Type<LRef>));
static_assert(not
	IsReferable(Type<RRef>));
static_assert(
	IsReferable(Type<BArr>));
static_assert(
	IsReferable(Type<UArr>));
static_assert(
	IsReferable(Type<UEnum>));
static_assert(
	IsReferable(Type<SEnum>));
static_assert(
	IsReferable(Type<Class>));
static_assert(
	IsReferable(Type<Union>));
static_assert(
	IsReferable(Type<MPtr>));
static_assert(
	IsReferable(Type<Func>));
static_assert(
	IsReferable(Type<NxFunc>));
static_assert(not
	IsReferable(Type<QFunc>));
static_assert(not
	IsReferable(Type<QNxFunc>));

static_assert(
	IsPointable(Type<Void>));
static_assert(
	IsPointable(Type<Unsigned>));
static_assert(
	IsPointable(Type<Signed>));
static_assert(
	IsPointable(Type<Float>));
static_assert(
	IsPointable(Type<Nullptr>));
static_assert(
	IsPointable(Type<Ptr>));
static_assert(not
	IsPointable(Type<LRef>));
static_assert(not
	IsPointable(Type<RRef>));
static_assert(
	IsPointable(Type<BArr>));
static_assert(
	IsPointable(Type<UArr>));
static_assert(
	IsPointable(Type<UEnum>));
static_assert(
	IsPointable(Type<SEnum>));
static_assert(
	IsPointable(Type<Class>));
static_assert(
	IsPointable(Type<Union>));
static_assert(
	IsPointable(Type<MPtr>));
static_assert(
	IsPointable(Type<Func>));
static_assert(
	IsPointable(Type<NxFunc>));
static_assert(not
	IsPointable(Type<QFunc>));
static_assert(not
	IsPointable(Type<QNxFunc>));

static_assert(not
	IsArgument(Type<Void>));
static_assert(
	IsArgument(Type<Unsigned>));
static_assert(
	IsArgument(Type<Signed>));
static_assert(
	IsArgument(Type<Float>));
static_assert(
	IsArgument(Type<Nullptr>));
static_assert(
	IsArgument(Type<Ptr>));
static_assert(
	IsArgument(Type<LRef>));
static_assert(
	IsArgument(Type<RRef>));
static_assert(
	IsArgument(Type<BArr>));
static_assert(
	IsArgument(Type<UArr>));
static_assert(
	IsArgument(Type<UEnum>));
static_assert(
	IsArgument(Type<SEnum>));
static_assert(
	IsArgument(Type<Class>));
static_assert(
	IsArgument(Type<Union>));
static_assert(
	IsArgument(Type<MPtr>));
static_assert(
	IsArgument(Type<Func>));
static_assert(
	IsArgument(Type<NxFunc>));
static_assert(not
	IsArgument(Type<QFunc>));
static_assert(not
	IsArgument(Type<QNxFunc>));

static_assert(not
	IsParameter(Type<Void>));
static_assert(
	IsParameter(Type<Unsigned>));
static_assert(
	IsParameter(Type<Signed>));
static_assert(
	IsParameter(Type<Float>));
static_assert(
	IsParameter(Type<Nullptr>));
static_assert(
	IsParameter(Type<Ptr>));
static_assert(
	IsParameter(Type<LRef>));
static_assert(
	IsParameter(Type<RRef>));
static_assert(not
	IsParameter(Type<BArr>));
static_assert(not
	IsParameter(Type<UArr>));
static_assert(
	IsParameter(Type<UEnum>));
static_assert(
	IsParameter(Type<SEnum>));
static_assert(
	IsParameter(Type<Class>));
static_assert(
	IsParameter(Type<Union>));
static_assert(
	IsParameter(Type<MPtr>));
static_assert(not
	IsParameter(Type<Func>));
static_assert(not
	IsParameter(Type<NxFunc>));
static_assert(not
	IsParameter(Type<QFunc>));
static_assert(not
	IsParameter(Type<QNxFunc>));

static_assert(
	IsReturnable(Type<Void>));
static_assert(
	IsReturnable(Type<Unsigned>));
static_assert(
	IsReturnable(Type<Signed>));
static_assert(
	IsReturnable(Type<Float>));
static_assert(
	IsReturnable(Type<Nullptr>));
static_assert(
	IsReturnable(Type<Ptr>));
static_assert(
	IsReturnable(Type<LRef>));
static_assert(
	IsReturnable(Type<RRef>));
static_assert(not
	IsReturnable(Type<BArr>));
static_assert(not
	IsReturnable(Type<UArr>));
static_assert(
	IsReturnable(Type<UEnum>));
static_assert(
	IsReturnable(Type<SEnum>));
static_assert(
	IsReturnable(Type<Class>));
static_assert(
	IsReturnable(Type<Union>));
static_assert(
	IsReturnable(Type<MPtr>));
static_assert(not
	IsReturnable(Type<Func>));
static_assert(not
	IsReturnable(Type<NxFunc>));
static_assert(not
	IsReturnable(Type<QFunc>));
static_assert(not
	IsReturnable(Type<QNxFunc>));

static_assert(not
	IsDataMember(Type<Void>));
static_assert(
	IsDataMember(Type<Unsigned>));
static_assert(
	IsDataMember(Type<Signed>));
static_assert(
	IsDataMember(Type<Float>));
static_assert(
	IsDataMember(Type<Nullptr>));
static_assert(
	IsDataMember(Type<Ptr>));
static_assert(
	IsDataMember(Type<LRef>));
static_assert(
	IsDataMember(Type<RRef>));
static_assert(
	IsDataMember(Type<BArr>));
static_assert(not
	IsDataMember(Type<UArr>));
static_assert(
	IsDataMember(Type<UEnum>));
static_assert(
	IsDataMember(Type<SEnum>));
static_assert(
	IsDataMember(Type<Class>));
static_assert(
	IsDataMember(Type<Union>));
static_assert(
	IsDataMember(Type<MPtr>));
static_assert(not
	IsDataMember(Type<Func>));
static_assert(not
	IsDataMember(Type<NxFunc>));
static_assert(not
	IsDataMember(Type<QFunc>));
static_assert(not
	IsDataMember(Type<QNxFunc>));

static_assert(
	IsCVQualifiable(Type<Void>));
static_assert(
	IsCVQualifiable(Type<Unsigned>));
static_assert(
	IsCVQualifiable(Type<Signed>));
static_assert(
	IsCVQualifiable(Type<Float>));
static_assert(
	IsCVQualifiable(Type<Nullptr>));
static_assert(
	IsCVQualifiable(Type<Ptr>));
static_assert(not
	IsCVQualifiable(Type<LRef>));
static_assert(not
	IsCVQualifiable(Type<RRef>));
static_assert(
	IsCVQualifiable(Type<BArr>));
static_assert(
	IsCVQualifiable(Type<UArr>));
static_assert(
	IsCVQualifiable(Type<UEnum>));
static_assert(
	IsCVQualifiable(Type<SEnum>));
static_assert(
	IsCVQualifiable(Type<Class>));
static_assert(
	IsCVQualifiable(Type<Union>));
static_assert(
	IsCVQualifiable(Type<MPtr>));
static_assert(not
	IsCVQualifiable(Type<Func>));
static_assert(not
	IsCVQualifiable(Type<NxFunc>));
static_assert(not
	IsCVQualifiable(Type<QFunc>));
static_assert(not
	IsCVQualifiable(Type<QNxFunc>));
