export module Meta.Concepts;
import Meta.TypeTraits;

export namespace
	Meta
{
	///	Ordered below all other concepts.
	template
		<	typename
		>
	concept
		ProtoAlways
	=	true
	;

	template
		<	typename
				t_tProto
		,	auto
				t_fTrait
		>
	concept
		ProtoTrait
	=	ProtoAlways
		<	t_tProto
		>
	and	t_fTrait
		(	Type<t_tProto>
		)
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoVoid
	=	ProtoTrait
		<	t_tProto
		,	Trait::Void{}
		>
	;
	template
		<	typename
				t_tProto
		>
	concept
		ProtoNullPointer
	=	ProtoTrait
		<	t_tProto
		,	Trait::NullPointer{}
		>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoUnsignedIntegral
	=	ProtoTrait
		<	t_tProto
		,	Trait::UnsignedIntegral{}
		>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoSignedIntegral
	=	ProtoTrait
		<	t_tProto
		,	Trait::SignedIntegral{}
		>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoIntegral
	=	ProtoUnsignedIntegral<t_tProto>
	or	ProtoSignedIntegral<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoFloatingPoint
	=	ProtoTrait
		<	t_tProto
		,	Trait::FloatingPoint{}
		>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoArithmetic
	=	ProtoIntegral<t_tProto>
	or	ProtoFloatingPoint<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoFundamental
	=	ProtoVoid<t_tProto>
	or	ProtoNullPointer<t_tProto>
	or	ProtoArithmetic<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoUnscopedEnum
	=	ProtoTrait
		<	t_tProto
		,	Trait::UnscopedEnum{}
		>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoScopedEnum
	=	ProtoTrait
		<	t_tProto
		,	Trait::ScopedEnum{}
		>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoEnum
	=	ProtoUnscopedEnum<t_tProto>
	or	ProtoScopedEnum<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoPointer
	=	ProtoTrait
		<	t_tProto
		,	Trait::Pointer{}
		>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoMemberPointer
	=	ProtoTrait
		<	t_tProto
		,	Trait::MemberPointer{}
		>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoScalar
	=	ProtoNullPointer<t_tProto>
	or	ProtoArithmetic<t_tProto>
	or	ProtoEnum<t_tProto>
	or	ProtoPointer<t_tProto>
	or	ProtoMemberPointer<t_tProto>
	;


	template
		<	typename
				t_tProto
		>
	concept
		ProtoLValueReference
	=	ProtoTrait
		<	t_tProto
		,	Trait::LValueReference{}
		>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoRValueReference
	=	ProtoTrait
		<	t_tProto
		,	Trait::RValueReference{}
		>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoReference
	=	ProtoLValueReference<t_tProto>
	or	ProtoRValueReference<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoUnqualifiedFunction
	=	ProtoTrait
		<	t_tProto
		,	Trait::UnqualifiedFunction{}
		>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoQualifiedFunction
	=	ProtoTrait
		<	t_tProto
		,	Trait::QualifiedFunction{}
		>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoFunction
	=	ProtoUnqualifiedFunction<t_tProto>
	or	ProtoQualifiedFunction<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoUnboundedArray
	=	ProtoTrait
		<	t_tProto
		,	Trait::UnboundedArray{}
		>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoBoundedArray
	=	ProtoTrait
		<	t_tProto
		,	Trait::BoundedArray{}
		>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoArray
	=	ProtoUnboundedArray<t_tProto>
	or	ProtoBoundedArray<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoClass
	=	ProtoTrait
		<	t_tProto
		,	Trait::Class{}
		>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoUnion
	=	ProtoTrait
		<	t_tProto
		,	Trait::Union{}
		>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoUserDefined
	=	ProtoClass<t_tProto>
	or	ProtoUnion<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoCompoundObject
	=	ProtoArray<t_tProto>
	or	ProtoUserDefined<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoObject
	=	ProtoScalar<t_tProto>
	or	ProtoCompoundObject<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoCompound
	=	ProtoEnum<t_tProto>
	or	ProtoPointer<t_tProto>
	or	ProtoMemberPointer<t_tProto>
	or	ProtoFunction<t_tProto>
	or	ProtoReference<t_tProto>
	or	ProtoCompoundObject<t_tProto>
	;

	template
		<	typename
				t_tProto
		,	typename
				t_tBase
		>
	concept
		ProtoDerivedFrom
	=	ProtoClass<t_tProto>
	and	ProtoTrait
		<	t_tProto
		,	Trait::DerivedFrom
			<	t_tBase
			>{}
		>
	;

	template
		<	typename
				t_tProto
		,	template
				<	typename
					...
				>
			typename
				t_t1Pack
		>
	concept
		ProtoTypePack
	=	ProtoUserDefined<t_tProto>
	and	ProtoTrait
		<	t_tProto
		,	Trait::TypePack
			<	t_t1Pack
			>{}
		>
	;

	template
		<	typename
				t_tProto
		,	template
				<	auto
					...
				>
			typename
				t_t1Pack
		>
	concept
		ProtoValuePack
	=	ProtoUserDefined<t_tProto>
	and	ProtoTrait
		<	t_tProto
		,	Trait::ValuePack
			<	t_t1Pack
			>{}
		>
	;

	template
		<	typename
				t_tProto
		,	template
				<	auto
				,	typename
				>
			typename
				t_t1Pair
		>
	concept
		ProtoValueTypePair
	=	ProtoUserDefined<t_tProto>
	and	ProtoTrait
		<	t_tProto
		,	Trait::ValueTypePair
			<	t_t1Pair
			>{}
		>
	;
}
