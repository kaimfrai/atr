export module Meta.Predicate.Trivial;

export import Meta.Concept.Trivial;
export import Meta.Logic;
export import Meta.Predicate.Regular;

export namespace
	Meta
{
	Term constexpr inline
		IsTriviallyDestructible
	=		Term{Trait::TriviallyDestructible{true}}
		and	IsDestructible
	or	IsScalar
	;

	template
		<	ProtoArgument
			...	t_tpArgument
		>
	Term constexpr inline
		IsTriviallyConstructible_From
	=	Term{Trait::TriviallyConstructible_From{true, Type<t_tpArgument>...}}
	and	IsTriviallyDestructible
	and	IsConstructible_From<t_tpArgument...>
	;

	template<>
	Term constexpr inline
		IsTriviallyConstructible_From<>
	=		Term{Trait::TriviallyConstructible_From{true}}
		and	IsTriviallyDestructible
		and	IsConstructible_From<>
	or	IsScalar
	;

	Term constexpr inline
		IsTriviallyMoveConstructible
	=		Term{Trait::TriviallyMoveConstructible{true}}
		and	IsTriviallyDestructible
		and	IsMoveConstructible
	or	IsScalar
	;

	Term constexpr inline
		IsTriviallyCopyConstructible
	=		Term{Trait::TriviallyCopyConstructible{true}}
		and	IsTriviallyMoveConstructible
		and	IsCopyConstructible
	or	IsScalar
	;

	Term constexpr inline
		IsTriviallyMovable
	=		Term{Trait::TriviallyMoveAssignable{true}}
		and	IsTriviallyMoveConstructible
		and	IsMovable
	or	IsScalar
	;

	Term constexpr inline
		IsTriviallyCopyable
	=		Term{Trait::CopyAssignable{true}}
		and	IsTriviallyCopyConstructible
		and	IsTriviallyMovable
		and	IsCopyable
	or	IsScalar
	;

	Term constexpr inline
		IsTrivial
	=		IsTriviallyCopyable
		and	IsTriviallyConstructible_From<>
	or	IsScalar
	;

	Term constexpr inline
		IsTrivialRegular
	=	IsEqualityComparable
	and	IsTrivial
	or	IsScalar
	;

	Term constexpr inline
		IsEmpty
	=	Term{Trait::Empty{true}}
	and	IsCustom
	;

	Term constexpr inline
		IsStateless
	=	IsEmpty
	and	IsTrivialRegular
	;
}
