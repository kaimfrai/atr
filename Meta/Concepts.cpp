export module Meta.Concepts;

export import Std.Utility;

export import Meta.Type;

export namespace
	Meta
{
	namespace
		Trait
	{
		template
			<	typename
					t_tPredicate
			>
		struct
			Not final
		{
			t_tPredicate
				m_fPredicate
			;

			template
				<	typename
					...	t_tpArgument
				>
			auto constexpr
			(	operator()
			)	(	t_tpArgument
					&&
					...	i_rpArgument
				)	const
			->	bool
			{	return
				not
				m_fPredicate
				(	::std::forward
					<	t_tpArgument
					>(	i_rpArgument
					)
					...
				);
			}
		};

		template
			<	typename
					t_tPredicate
			>
		(	Not
		)	(	t_tPredicate const&
			)
		->	Not<t_tPredicate>
		;

		struct
			Tautology final
		{
			auto constexpr
			(	operator()
			)	(	auto&&...
				)	const
			->	bool
			{	return
					true
				;
			}
		};

		using
			Contradiction
		=	Not<Tautology>
		;

		template
			<	typename
					t_tPredicate
			>
		auto constexpr
		(	operator not
		)	(	t_tPredicate const
				&	i_rPredicate
			)
		->	Not<t_tPredicate>
		{	return { i_rPredicate };	}
	}

	template
		<	typename
				t_tProto
		,	auto
				t_fTrait
		>
	concept
		ProtoTrait
	=	t_fTrait
		(	Type<t_tProto>
		)
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoAll
	=	ProtoTrait
		<	t_tProto
		,	Trait::Tautology{}
		>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoNone
	=	ProtoTrait
		<	t_tProto
		,	Trait::Contradiction{}
		>
	;

// 	template
// 		<	typename
// 				t_tProto
// 		,	auto
// 				t_fTrait
// 		,	USize
// 				t_nClauseIndex
// 		,	USize
// 				t_nLiteralIndex
// 		>
// 	concept
// 		ProtoLiteralTrait_0x01
// 	=	ProtoTrait
// 		<	t_tProto
// 		,	GetClauseLiteral
// 			<	t_nClauseIndex
// 			,	t_nLiteralIndex
// 			>(	t_fTrait
// 			)
// 		>
// 	;
//
// 	template
// 		<	typename
// 				t_tProto
// 		,	auto
// 				t_fTrait
// 		,	USize
// 				t_nClauseIndex
// 		,	USize
// 				t_nLiteralOffset
// 		>
// 	concept
// 		ProtoLiteralTrait_0x02
// 	=	ProtoLiteralTrait_0x01
// 		<	t_tProto
// 		,	t_fTrait
// 		,	t_nClauseIndex
// 		,	t_nLiteralOffset
// 		>
// 	and	ProtoLiteralTrait_0x01
// 		<	t_tProto
// 		,	t_fTrait
// 		,	t_nClauseIndex
// 		,	t_nLiteralOffset
// 		+	0x01uz
// 		>
// 	;
//
// 	template
// 		<	typename
// 				t_tProto
// 		,	auto
// 				t_fTrait
// 		,	USize
// 				t_nClauseIndex
// 		,	USize
// 				t_nLiteralOffset
// 		>
// 	concept
// 		ProtoLiteralTrait_0x04
// 	=	ProtoLiteralTrait_0x02
// 		<	t_tProto
// 		,	t_fTrait
// 		,	t_nClauseIndex
// 		,	t_nLiteralOffset
// 		>
// 	and	ProtoLiteralTrait_0x02
// 		<	t_tProto
// 		,	t_fTrait
// 		,	t_nClauseIndex
// 		,	t_nLiteralOffset
// 		+	0x02uz
// 		>
// 	;
//
// 	template
// 		<	typename
// 				t_tProto
// 		,	auto
// 				t_fTrait
// 		,	USize
// 				t_nClauseIndex
// 		,	USize
// 				t_nLiteralOffset
// 		>
// 	concept
// 		ProtoLiteralTrait_0x08
// 	=	ProtoLiteralTrait_0x04
// 		<	t_tProto
// 		,	t_fTrait
// 		,	t_nClauseIndex
// 		,	t_nLiteralOffset
// 		>
// 	and	ProtoLiteralTrait_0x04
// 		<	t_tProto
// 		,	t_fTrait
// 		,	t_nClauseIndex
// 		,	t_nLiteralOffset
// 		+	0x04
// 		>
// 	;
//
// 	template
// 		<	typename
// 				t_tProto
// 		,	auto
// 				t_fTrait
// 		,	USize
// 				t_nClauseIndex
// 		,	USize
// 				t_nLiteralOffset
// 		>
// 	concept
// 		ProtoLiteralTrait_0x10
// 	=	ProtoLiteralTrait_0x08
// 		<	t_tProto
// 		,	t_fTrait
// 		,	t_nClauseIndex
// 		,	t_nLiteralOffset
// 		>
// 	and	ProtoLiteralTrait_0x08
// 		<	t_tProto
// 		,	t_fTrait
// 		,	t_nClauseIndex
// 		,	t_nLiteralOffset
// 		+	0x08
// 		>
// 	;

// 	template
// 		<	typename
// 				t_tProto
// 		,	auto
// 				t_fTrait
// 		,	USize
// 				t_nClauseIndex
// 		>
// 	concept
// 		ProtoClauseTrait
// 	=	ProtoTrait
// 		<	t_tProto
// 		,	GetClauseLiteral
// 			<	t_nClauseIndex
// 			,	0x00
// 			>(	t_fTrait
// 			)
// 		>
// 	and	ProtoTrait
// 		<	t_tProto
// 		,	GetClauseLiteral
// 			<	t_nClauseIndex
// 			,	0x01
// 			>(	t_fTrait
// 			)
// 		>
// 	and	ProtoTrait
// 		<	t_tProto
// 		,	GetClauseLiteral
// 			<	t_nClauseIndex
// 			,	0x02
// 			>(	t_fTrait
// 			)
// 		>
// 	and	ProtoTrait
// 		<	t_tProto
// 		,	GetClauseLiteral
// 			<	t_nClauseIndex
// 			,	0x03
// 			>(	t_fTrait
// 			)
// 		>
// 	and	ProtoTrait
// 		<	t_tProto
// 		,	GetClauseLiteral
// 			<	t_nClauseIndex
// 			,	0x04
// 			>(	t_fTrait
// 			)
// 		>
// 	and	ProtoTrait
// 		<	t_tProto
// 		,	GetClauseLiteral
// 			<	t_nClauseIndex
// 			,	0x05
// 			>(	t_fTrait
// 			)
// 		>
// 	and	ProtoTrait
// 		<	t_tProto
// 		,	GetClauseLiteral
// 			<	t_nClauseIndex
// 			,	0x06
// 			>(	t_fTrait
// 			)
// 		>
// 	and	ProtoTrait
// 		<	t_tProto
// 		,	GetClauseLiteral
// 			<	t_nClauseIndex
// 			,	0x07
// 			>(	t_fTrait
// 			)
// 		>
// 	and	ProtoTrait
// 		<	t_tProto
// 		,	Trait::Tautology{}
// 		>
// 	;

// 	template
// 		<	typename
// 				t_tProto
// 		,	auto
// 				t_fTrait
// 		,	USize
// 				t_nClauseIndex
// 		>
// 	concept
// 		ProtoClauseTrait_0x02
// 	=	ProtoClauseTrait_0x01
// 		<	t_tProto
// 		,	t_fTrait
// 		,	t_nClauseIndex
// 		>
// 	or	ProtoClauseTrait_0x01
// 		<	t_tProto
// 		,	t_fTrait
// 		,	t_nClauseIndex
// 		+	0x01uz
// 		>
// 	;
//
// 	template
// 		<	typename
// 				t_tProto
// 		,	auto
// 				t_fTrait
// 		,	USize
// 				t_nClauseIndex
// 		>
// 	concept
// 		ProtoClauseTrait_0x04
// 	=	ProtoClauseTrait_0x02
// 		<	t_tProto
// 		,	t_fTrait
// 		,	t_nClauseIndex
// 		>
// 	or	ProtoClauseTrait_0x02
// 		<	t_tProto
// 		,	t_fTrait
// 		,	t_nClauseIndex
// 		+	0x02uz
// 		>
// 	;
//
// 	template
// 		<	typename
// 				t_tProto
// 		,	auto
// 				t_fTrait
// 		,	USize
// 				t_nClauseIndex
// 		>
// 	concept
// 		ProtoClauseTrait_0x08
// 	=	ProtoClauseTrait_0x04
// 		<	t_tProto
// 		,	t_fTrait
// 		,	t_nClauseIndex
// 		>
// 	or	ProtoClauseTrait_0x04
// 		<	t_tProto
// 		,	t_fTrait
// 		,	t_nClauseIndex
// 		+	0x04
// 		>
// 	;
//
// 	template
// 		<	typename
// 				t_tProto
// 		,	auto
// 				t_fTrait
// 		,	USize
// 				t_nClauseIndex
// 		>
// 	concept
// 		ProtoClauseTrait_0x10
// 	=	ProtoClauseTrait_0x08
// 		<	t_tProto
// 		,	t_fTrait
// 		,	t_nClauseIndex
// 		>
// 	or	ProtoClauseTrait_0x08
// 		<	t_tProto
// 		,	t_fTrait
// 		,	t_nClauseIndex
// 		+	0x08
// 		>
// 	;

	template
		<	typename
				t_tProto
		,	auto
				t_fTrait
		>
	concept
		ProtoConstraint
	=		ProtoTrait<t_tProto, GetClauseLiteral<0x00	,	0x00>(t_fTrait)>
		and	ProtoTrait<t_tProto, GetClauseLiteral<0x00	,	0x01>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x00	,	0x02>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x00	,	0x03>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x00	,	0x04>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x00	,	0x05>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x00	,	0x06>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x00	,	0x07>(t_fTrait)>
		and	ProtoAll<t_tProto>
// 	or		ProtoTrait<t_tProto, GetClauseLiteral<0x01	,	0x00>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x01	,	0x01>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x01	,	0x02>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x01	,	0x03>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x01	,	0x04>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x01	,	0x05>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x01	,	0x06>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x01	,	0x07>(t_fTrait)>
// 		and	ProtoAll<t_tProto>
// 	or		ProtoTrait<t_tProto, GetClauseLiteral<0x02	,	0x00>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x02	,	0x01>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x02	,	0x02>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x02	,	0x03>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x02	,	0x04>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x02	,	0x05>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x02	,	0x06>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x02	,	0x07>(t_fTrait)>
// 		and	ProtoAll<t_tProto>
// 	or		ProtoTrait<t_tProto, GetClauseLiteral<0x03	,	0x00>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x03	,	0x01>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x03	,	0x02>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x03	,	0x03>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x03	,	0x04>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x03	,	0x05>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x03	,	0x06>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x03	,	0x07>(t_fTrait)>
// 		and	ProtoAll<t_tProto>
// 	or		ProtoTrait<t_tProto, GetClauseLiteral<0x04	,	0x00>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x04	,	0x01>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x04	,	0x02>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x04	,	0x03>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x04	,	0x04>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x04	,	0x05>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x04	,	0x06>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x04	,	0x07>(t_fTrait)>
// 		and	ProtoAll<t_tProto>
// 	or		ProtoTrait<t_tProto, GetClauseLiteral<0x05	,	0x00>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x05	,	0x01>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x05	,	0x02>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x05	,	0x03>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x05	,	0x04>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x05	,	0x05>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x05	,	0x06>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x05	,	0x07>(t_fTrait)>
// 		and	ProtoAll<t_tProto>
// 	or		ProtoTrait<t_tProto, GetClauseLiteral<0x06	,	0x00>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x06	,	0x01>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x06	,	0x02>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x06	,	0x03>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x06	,	0x04>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x06	,	0x05>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x06	,	0x06>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x06	,	0x07>(t_fTrait)>
// 		and	ProtoAll<t_tProto>
// 	or		ProtoTrait<t_tProto, GetClauseLiteral<0x07	,	0x00>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x07	,	0x01>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x07	,	0x02>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x07	,	0x03>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x07	,	0x04>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x07	,	0x05>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x07	,	0x06>(t_fTrait)>
// 		and	ProtoTrait<t_tProto, GetClauseLiteral<0x07	,	0x07>(t_fTrait)>
// 		and	ProtoAll<t_tProto>
// 	or	ProtoNone<t_tProto>
	;


// 	template
// 		<	typename
// 				t_tProto
// 		>
// 	concept
// 		ProtoVoid
// 	=	ProtoTrait
// 		<	t_tProto
// 		,	Trait::Void{}
// 		>
// 	;
// 	template
// 		<	typename
// 				t_tProto
// 		>
// 	concept
// 		ProtoNullPointer
// 	=	ProtoTrait
// 		<	t_tProto
// 		,	Trait::NullPointer{}
// 		>
// 	;
//
// // 	template
// // 		<	typename
// // 				t_tProto
// // 		>
// // 	concept
// // 		ProtoUnsignedIntegral
// // 	=	ProtoTrait
// // 		<	t_tProto
// // 		,	Trait::UnsignedIntegral{}
// // 		>
// // 	;
//
// // 	template
// // 		<	typename
// // 				t_tProto
// // 		>
// // 	concept
// // 		ProtoSignedIntegral
// // 	=	ProtoTrait
// // 		<	t_tProto
// // 		,	Trait::SignedIntegral{}
// // 		>
// // 	;
//
// // 	template
// // 		<	typename
// // 				t_tProto
// // 		>
// // 	concept
// // 		ProtoIntegral
// // 	=	ProtoUnsignedIntegral<t_tProto>
// // 	or	ProtoSignedIntegral<t_tProto>
// // 	;
//
// 	template
// 		<	typename
// 				t_tProto
// 		>
// 	concept
// 		ProtoFloatingPoint
// 	=	ProtoTrait
// 		<	t_tProto
// 		,	Trait::FloatingPoint{}
// 		>
// 	;
//
// // 	template
// // 		<	typename
// // 				t_tProto
// // 		>
// // 	concept
// // 		ProtoArithmetic
// // 	=	ProtoIntegral<t_tProto>
// // 	or	ProtoFloatingPoint<t_tProto>
// // 	;
//
// // 	template
// // 		<	typename
// // 				t_tProto
// // 		>
// // 	concept
// // 		ProtoFundamental
// // 	=	ProtoVoid<t_tProto>
// // 	or	ProtoNullPointer<t_tProto>
// // 	or	ProtoArithmetic<t_tProto>
// // 	;
//
// // 	template
// // 		<	typename
// // 				t_tProto
// // 		>
// // 	concept
// // 		ProtoUnscopedEnum
// // 	=	ProtoTrait
// // 		<	t_tProto
// // 		,	Trait::UnscopedEnum{}
// // 		>
// // 	;
//
// 	template
// 		<	typename
// 				t_tProto
// 		>
// 	concept
// 		ProtoScopedEnum
// 	=	ProtoTrait
// 		<	t_tProto
// 		,	Trait::ScopedEnum{}
// 		>
// 	;
// /*
// 	template
// 		<	typename
// 				t_tProto
// 		>
// 	concept
// 		ProtoEnum
// 	=	ProtoUnscopedEnum<t_tProto>
// 	or	ProtoScopedEnum<t_tProto>
// 	;*/
//
// 	template
// 		<	typename
// 				t_tProto
// 		>
// 	concept
// 		ProtoPointer
// 	=	ProtoTrait
// 		<	t_tProto
// 		,	Trait::Pointer{}
// 		>
// 	;
//
// 	template
// 		<	typename
// 				t_tProto
// 		>
// 	concept
// 		ProtoMemberPointer
// 	=	ProtoTrait
// 		<	t_tProto
// 		,	Trait::MemberPointer{}
// 		>
// 	;
//
// // 	template
// // 		<	typename
// // 				t_tProto
// // 		>
// // 	concept
// // 		ProtoScalar
// // 	=	ProtoNullPointer<t_tProto>
// // 	or	ProtoArithmetic<t_tProto>
// // 	or	ProtoEnum<t_tProto>
// // 	or	ProtoPointer<t_tProto>
// // 	or	ProtoMemberPointer<t_tProto>
// // 	;
//
//
// 	template
// 		<	typename
// 				t_tProto
// 		>
// 	concept
// 		ProtoLValueReference
// 	=	ProtoTrait
// 		<	t_tProto
// 		,	Trait::LValueReference{}
// 		>
// 	;
//
// 	template
// 		<	typename
// 				t_tProto
// 		>
// 	concept
// 		ProtoRValueReference
// 	=	ProtoTrait
// 		<	t_tProto
// 		,	Trait::RValueReference{}
// 		>
// 	;
//
// 	template
// 		<	typename
// 				t_tProto
// 		>
// 	concept
// 		ProtoReference
// 	=	ProtoLValueReference<t_tProto>
// 	or	ProtoRValueReference<t_tProto>
// 	;
//
// // 	template
// // 		<	typename
// // 				t_tProto
// // 		>
// // 	concept
// // 		ProtoUnqualifiedFunction
// // 	=	ProtoTrait
// // 		<	t_tProto
// // 		,	Trait::UnqualifiedFunction{}
// // 		>
// // 	;
//
// // 	template
// // 		<	typename
// // 				t_tProto
// // 		>
// // 	concept
// // 		ProtoQualifiedFunction
// // 	=	ProtoTrait
// // 		<	t_tProto
// // 		,	Trait::QualifiedFunction{}
// // 		>
// // 	;
// //
// // 	template
// // 		<	typename
// // 				t_tProto
// // 		>
// // 	concept
// // 		ProtoFunction
// // 	=	ProtoUnqualifiedFunction<t_tProto>
// // 	or	ProtoQualifiedFunction<t_tProto>
// // 	;
//
// 	template
// 		<	typename
// 				t_tProto
// 		>
// 	concept
// 		ProtoUnboundedArray
// 	=	ProtoTrait
// 		<	t_tProto
// 		,	Trait::UnboundedArray{}
// 		>
// 	;
//
// 	template
// 		<	typename
// 				t_tProto
// 		>
// 	concept
// 		ProtoBoundedArray
// 	=	ProtoTrait
// 		<	t_tProto
// 		,	Trait::BoundedArray{}
// 		>
// 	;
//
// 	template
// 		<	typename
// 				t_tProto
// 		>
// 	concept
// 		ProtoArray
// 	=	ProtoUnboundedArray<t_tProto>
// 	or	ProtoBoundedArray<t_tProto>
// 	;
//
// 	template
// 		<	typename
// 				t_tProto
// 		>
// 	concept
// 		ProtoClass
// 	=	ProtoTrait
// 		<	t_tProto
// 		,	Trait::Class{}
// 		>
// 	;
//
// 	template
// 		<	typename
// 				t_tProto
// 		>
// 	concept
// 		ProtoUnion
// 	=	ProtoTrait
// 		<	t_tProto
// 		,	Trait::Union{}
// 		>
// 	;
//
// 	template
// 		<	typename
// 				t_tProto
// 		>
// 	concept
// 		ProtoUserDefined
// 	=	ProtoClass<t_tProto>
// 	or	ProtoUnion<t_tProto>
// 	;
//
// 	template
// 		<	typename
// 				t_tProto
// 		>
// 	concept
// 		ProtoCompoundObject
// 	=	ProtoArray<t_tProto>
// 	or	ProtoUserDefined<t_tProto>
// 	;
//
// // 	template
// // 		<	typename
// // 				t_tProto
// // 		>
// // 	concept
// // 		ProtoObject
// // 	=	ProtoScalar<t_tProto>
// // 	or	ProtoCompoundObject<t_tProto>
// // 	;
//
// 	template
// 		<	typename
// 				t_tProto
// 		>
// 	concept
// 		ProtoCompound
// 	=	/*ProtoEnum<t_tProto>
// 	or	*/ProtoPointer<t_tProto>
// 	or	ProtoMemberPointer<t_tProto>
// // 	or	ProtoFunction<t_tProto>
// 	or	ProtoReference<t_tProto>
// 	or	ProtoCompoundObject<t_tProto>
// 	;
//
// 	template
// 		<	typename
// 				t_tProto
// 		,	typename
// 				t_tBase
// 		>
// 	concept
// 		ProtoDerivedFrom
// 	=	ProtoClass<t_tProto>
// 	and	ProtoTrait
// 		<	t_tProto
// 		,	Trait::DerivedFrom
// 			<	t_tBase
// 			>{}
// 		>
// 	;
//
// 	template
// 		<	typename
// 				t_tProto
// 		,	template
// 				<	typename
// 					...
// 				>
// 			typename
// 				t_t1Pack
// 		>
// 	concept
// 		ProtoTypePack
// 	=	ProtoUserDefined<t_tProto>
// 	and	ProtoTrait
// 		<	t_tProto
// 		,	Trait::TypePack
// 			<	t_t1Pack
// 			>{}
// 		>
// 	;
//
// 	template
// 		<	typename
// 				t_tProto
// 		,	template
// 				<	auto
// 					...
// 				>
// 			typename
// 				t_t1Pack
// 		>
// 	concept
// 		ProtoValuePack
// 	=	ProtoUserDefined<t_tProto>
// 	and	ProtoTrait
// 		<	t_tProto
// 		,	Trait::ValuePack
// 			<	t_t1Pack
// 			>{}
// 		>
// 	;
//
// 	template
// 		<	typename
// 				t_tProto
// 		,	template
// 				<	auto
// 				,	typename
// 				>
// 			typename
// 				t_t1Pair
// 		>
// 	concept
// 		ProtoValueTypePair
// 	=	ProtoUserDefined<t_tProto>
// 	and	ProtoTrait
// 		<	t_tProto
// 		,	Trait::ValueTypePair
// 			<	t_t1Pair
// 			>{}
// 		>
// 	;
}
