export module Meta.Predicate.Regular;

export import Meta.Concept.Regular;
export import Meta.Logic;
export import Meta.Predicate.Category;

export namespace
	Meta
{
	Term constexpr inline
		IsEqualityComparable
	=	Term{Trait::EqualityComparable{true}}
	and	IsMember
	;

	Term constexpr inline
		IsDestructible
	=		Term{Trait::Destructible{true}}
		and	IsValue
	or	IsScalar
	;

	template
		<	ProtoArgument
			...	t_tpArgument
		>
	Term constexpr inline
		IsConstructible_From
	=	Term{Trait::Constructible_From{true, Type<t_tpArgument>...}}
	and	IsDestructible
	;

	template<>
	Term constexpr inline
		IsConstructible_From<>
	=		Term{Trait::Constructible_From{true}}
		and	IsDestructible
	or	IsScalar
	;

	Term constexpr inline
		IsDefaultInitializable
	=		Term{Trait::DefaultInitializable{true}}
		and	IsConstructible_From<>
	or	IsScalar
	;

	Term constexpr inline
		IsMoveConstructible
	=		Term{Trait::MoveConstructible{true}}
		and	IsDestructible
	or	IsScalar
	;

	Term constexpr inline
		IsCopyConstructible
	=		Term{Trait::CopyConstructible{true}}
		and	IsMoveConstructible
	or	IsScalar
	;

	Term constexpr inline
		IsMovable
	=		Term{Trait::MoveAssignable{true}}
		and	IsMoveConstructible
	or	IsScalar
	;

	Term constexpr inline
		IsCopyable
	=		Term{Trait::CopyAssignable{true}}
		and	IsMoveConstructible
		and	IsMovable
	or	IsScalar
	;

	Term constexpr inline
		IsSemiregular
	=		IsCopyable
		and	IsDefaultInitializable
	or	IsScalar
	;

	Term constexpr inline
		IsRegular
	=		IsEqualityComparable
		and	IsSemiregular
	or	IsScalar
	;
}
