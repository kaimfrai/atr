export module Meta.Constraint;

export import Meta.Concept;
export import Meta.Logic;

export namespace
	Meta::Proto
{
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
// 	and	Literal<t_tProto, typename t_tTrait::template Literal<0x10>>
// 	and	Literal<t_tProto, typename t_tTrait::template Literal<0x11>>
// 	and	Literal<t_tProto, typename t_tTrait::template Literal<0x12>>
// 	and	Literal<t_tProto, typename t_tTrait::template Literal<0x13>>
// 	and	Literal<t_tProto, typename t_tTrait::template Literal<0x14>>
// 	and	Literal<t_tProto, typename t_tTrait::template Literal<0x15>>
// 	and	Literal<t_tProto, typename t_tTrait::template Literal<0x16>>
// 	and	Literal<t_tProto, typename t_tTrait::template Literal<0x17>>
// 	and	Literal<t_tProto, typename t_tTrait::template Literal<0x18>>
// 	and	Literal<t_tProto, typename t_tTrait::template Literal<0x19>>
// 	and	Literal<t_tProto, typename t_tTrait::template Literal<0x1A>>
// 	and	Literal<t_tProto, typename t_tTrait::template Literal<0x1B>>
// 	and	Literal<t_tProto, typename t_tTrait::template Literal<0x1C>>
// 	and	Literal<t_tProto, typename t_tTrait::template Literal<0x1D>>
// 	and	Literal<t_tProto, typename t_tTrait::template Literal<0x1E>>
// 	and	Literal<t_tProto, typename t_tTrait::template Literal<0x1F>>
	and	All<t_tProto>
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
	or	None<t_tProto>
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
		<	Logic::BitClause
				t_vClause
		,	TupleSet
				t_vLiterals
		>
	struct
		ConstraintClause final
	{
		static_assert
		(	t_vClause.LiteralCount()
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
			if	constexpr(t_vClause.IsIdentity())
				return Trait::Contradiction;
			else
			if	constexpr
				(	t_vClause.TestPositive
					(	t_nLiteralIndex
					)
				)
				return
					t_vLiterals
					[	Index<t_nLiteralIndex>
					]
				.	m_vValue
				;
			else
			if	constexpr
				(	t_vClause.TestNegative
					(	t_nLiteralIndex
					)
				)
				return
				not
					t_vLiterals
					[	Index<t_nLiteralIndex>
					]
				.	m_vValue
				;
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
		=	StaticConstraint
			<	GetLiteral<t_nLiteralIndex>()
			>
		;
	};

	template
		<	Logic::BitTerm
				t_vTerm
		,	TupleSet
				t_vLiterals
		>
	struct
		ConstraintTerm final
	{
		static_assert
		(	t_vTerm.ClauseCount()
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
			<	t_vTerm[t_nClauseIndex].TrimLiterals()
			,	Filter
				(	t_vLiterals
				,	Index
					<	t_vTerm[t_nClauseIndex]
					.	LiteralField()
					>
				)
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
		,	Term
				t_fTrait
		>
	concept
		ProtoConstraint
	=	Proto::Term
		<	t_tProto
		,	Trait::ConstraintTerm
			<	t_fTrait.BitTerm
			,	t_fTrait.Literals
			>
		>
	;
}
