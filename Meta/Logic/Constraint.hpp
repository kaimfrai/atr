export module Meta.Logic:Constraint;

export import :LiteralBase;
export import :Term;

export namespace
	Meta::Proto
{
	template
		<	typename
				t_tTrait
		,	t_tTrait
				t_fTrait
		>
	struct
		Constraint final
	{
		template
			<	typename
					t_tProto
			>
		static bool constexpr
			Evaluate
		=	t_fTrait
			(	Type<t_tProto>
			)
		;
	};

	template
		<	auto
				t_fTrait
		>
	using
		StaticConstraint
	=	Constraint
		<	decltype(t_fTrait)
		,	t_fTrait
		>
	;

	template
		<	typename
				t_tProto
		,	typename
				t_tTrait
		>
	concept
		Literal
	=		t_tTrait
		::	template
			Evaluate
			<	t_tProto
			>
	;

	template
		<	typename
				t_tProto
		,	typename
				t_tTrait
		>
	concept
		Clause
	=	Literal<t_tProto, typename t_tTrait::template Literal<0x00>>
	and	Literal<t_tProto, typename t_tTrait::template Literal<0x01>>
	and	Literal<t_tProto, typename t_tTrait::template Literal<0x02>>
	and	Literal<t_tProto, typename t_tTrait::template Literal<0x03>>
	and	Literal<t_tProto, typename t_tTrait::template Literal<0x04>>
	and	Literal<t_tProto, typename t_tTrait::template Literal<0x05>>
	and	Literal<t_tProto, typename t_tTrait::template Literal<0x06>>
	and	Literal<t_tProto, typename t_tTrait::template Literal<0x07>>
	and	Literal<t_tProto, typename t_tTrait::template Literal<0x08>>
	and	Literal<t_tProto, typename t_tTrait::template Literal<0x09>>
	and	Literal<t_tProto, typename t_tTrait::template Literal<0x0A>>
	and	Literal<t_tProto, typename t_tTrait::template Literal<0x0B>>
	and	Literal<t_tProto, typename t_tTrait::template Literal<0x0C>>
	and	Literal<t_tProto, typename t_tTrait::template Literal<0x0D>>
	and	Literal<t_tProto, typename t_tTrait::template Literal<0x0E>>
	and	Literal<t_tProto, typename t_tTrait::template Literal<0x0F>>
	and	Literal<t_tProto, StaticConstraint<Trait::Tautology>>
	;

	template
		<	typename
				t_tProto
		,	typename
				t_tTrait
		>
	concept
		Term
	=	Clause<t_tProto, typename t_tTrait::template Clause<0x00>>
	or	Clause<t_tProto, typename t_tTrait::template Clause<0x01>>
	or	Clause<t_tProto, typename t_tTrait::template Clause<0x02>>
	or	Clause<t_tProto, typename t_tTrait::template Clause<0x03>>
	or	Literal<t_tProto, StaticConstraint<Trait::Contradiction>>
	;
}

export namespace
	Meta::Trait
{
	///	Corresponds to the amount of Literals listed in Meta::Proto::Clause
	USize constexpr inline
		ConstraintLiteralLimit
	=	16uz
	;

	///	Corresponds to the amount of Clauses listed in Meta::Proto::Term
	USize constexpr inline
		ConstraintClauseLimit
	=	4uz
	;

	template
		<	ErasedTerm
				t_vTerm
		>
	struct
		ConstraintClause final
	{
		static_assert
		(	t_vTerm.ClauseCount()
		<=	1uz
		,	"Given term is not a clause!"
		);

		static auto constexpr
			BitClause
		=	t_vTerm.BitTerm[0uz]
		;

		static_assert
		(	BitClause.LiteralCount()
		<=	ConstraintLiteralLimit
		,	"Too many predicates to be used in a constraint clause!"
		);

		template
			<	USize
					t_nLiteralIndex
			>
		static auto constexpr
		(	GetLiteral
		)	()
		{
			if	constexpr(BitClause.IsIdentity())
				return Trait::Contradiction;
			else
			if	constexpr
				(	BitClause.TestPositive
					(	t_nLiteralIndex
					)
				)
				return
				RestoreTypeEntity
				<	t_vTerm.Literals
					[	t_nLiteralIndex
					]
				>{};
			else
			if	constexpr
				(	BitClause.TestNegative
					(	t_nLiteralIndex
					)
				)
				return
				not
				RestoreTypeEntity
				<	t_vTerm.Literals
					[	t_nLiteralIndex
					]
				>{};
			else
				return Trait::Tautology;
		}

		template
			<	USize
					t_nLiteralIndex
			>
		requires
			(t_nLiteralIndex < ConstraintLiteralLimit)
		using
			Literal
		=	Proto::StaticConstraint
			<	GetLiteral<t_nLiteralIndex>()
			>
		;
	};

	template
		<	ErasedTerm const
			&	t_rTerm
		>
	struct
		ConstraintTerm final
	{
		static_assert
		(	t_rTerm.ClauseCount()
		<=	ConstraintClauseLimit
		,	"Too many clauses to be used in a constraint term!"
		);

		template
			<	USize
					t_nClauseIndex
			>
		requires
			(t_nClauseIndex < ConstraintClauseLimit)
		using
			Clause
		=	ConstraintClause
			<	t_rTerm.GetClause(t_nClauseIndex)
			>
		;
	};
}

export namespace
	Meta
{
	template
		<	typename
				t_tProto
		,	ErasedTerm const
			&	t_rTerm
		>
	concept
		ProtoConstraint
	=	Proto::Term
		<	t_tProto
		,	Trait::ConstraintTerm
			<	t_rTerm
			>
		>
	;
}
