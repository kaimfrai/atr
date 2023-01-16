export module Meta.Logic.Constraint;

export import Meta.Logic.LiteralBase;
export import Meta.Logic.Term;
export import Meta.Logic.Erased.Term;

import Meta.Size;

import Std;

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
		Literal
	=	t_tTrait{}
		(	Type<t_tProto>
		)
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
	and	Literal<t_tProto, decltype(Trait::Tautology)>
	;

	template
		<	typename
				t_tProto
		,	typename
				t_tClause0x00
		,	typename
				t_tClause0x01
		,	typename
				t_tClause0x02
		,	typename
				t_tClause0x03
		>
	concept
		Term
	=	Clause<t_tProto, t_tClause0x00>
	or	Clause<t_tProto, t_tClause0x01>
	or	Clause<t_tProto, t_tClause0x02>
	or	Clause<t_tProto, t_tClause0x03>
	or	Literal<t_tProto, decltype(Trait::Contradiction)>
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

	template
		<	Logic::Erased::Term
				t_vTerm
		>
	struct
		ConstraintClause final
	{
		using
			IndexType
		=	typename
				Logic
			::	Erased
			::	Term
			::	IndexType
		;

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
				(	BitClause.Positive
					[	IndexType{t_nLiteralIndex}
					]
				)
				return
				RestoreTypeEntity
				<	t_vTerm.Literals
					[	t_nLiteralIndex
					]
				>{};
			else
			if	constexpr
				(	BitClause.Negative
					[	IndexType{t_nLiteralIndex}
					]
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
		=	decltype
			(	GetLiteral<t_nLiteralIndex>()
			)
		;
	};
}

export namespace
	Meta
{
	template
		<	typename
				t_tProto
		,	Logic::Erased::Term
				t_vTerm
		>
	concept
		ProtoConstraint
	=	Proto::Term
		<	t_tProto
		,	Trait::ConstraintClause<t_vTerm.GetClause(0x00)>
		,	Trait::ConstraintClause<t_vTerm.GetClause(0x01)>
		,	Trait::ConstraintClause<t_vTerm.GetClause(0x02)>
		,	Trait::ConstraintClause<t_vTerm.GetClause(0x03)>
		>
	;
}
