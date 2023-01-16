export module Meta.Logic.Constraint;

export import Meta.Logic.LiteralBase;
export import Meta.Logic.Erased.Literal;
export import Meta.Logic.Erased.Clause;
export import Meta.Logic.Erased.Term;
import Meta.Token.Type;

export namespace
	Meta::Proto
{
	template
		<	typename
				t_tProto
		,	Logic::Erased::Literal
				t_vLiteral
		>
	concept
		Literal
	=	t_vLiteral.Polarity
	==	RestoreTypeEntity<t_vLiteral.Type>
		{}(	Type<t_tProto>
		)
	;

	template
		<	typename
				t_tProto
		,	auto
				t_vClause
		>
	concept
		Clause
	=	Literal<t_tProto, t_vClause[0x00]>
	and	Literal<t_tProto, t_vClause[0x01]>
	and	Literal<t_tProto, t_vClause[0x02]>
	and	Literal<t_tProto, t_vClause[0x03]>
	and	Literal<t_tProto, t_vClause[0x04]>
	and	Literal<t_tProto, t_vClause[0x05]>
	and	Literal<t_tProto, t_vClause[0x06]>
	and	Literal<t_tProto, t_vClause[0x07]>
	and	Literal<t_tProto, t_vClause[0x08]>
	and	Literal<t_tProto, t_vClause[0x09]>
	and	Literal<t_tProto, t_vClause[0x0A]>
	and	Literal<t_tProto, t_vClause[0x0B]>
	and	Literal<t_tProto, t_vClause[0x0C]>
	and	Literal<t_tProto, t_vClause[0x0D]>
	and	Literal<t_tProto, t_vClause[0x0E]>
	and	Literal<t_tProto, t_vClause[0x0F]>
	and	Literal<t_tProto, Logic::Erased::Tautology>
	;
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
	=	Proto::Clause<t_tProto, t_vTerm[0x00]>
	or	Proto::Clause<t_tProto, t_vTerm[0x01]>
	or	Proto::Clause<t_tProto, t_vTerm[0x02]>
	or	Proto::Clause<t_tProto, t_vTerm[0x03]>
	or	Proto::Literal<t_tProto, Logic::Erased::Contradiction>
	;
}
