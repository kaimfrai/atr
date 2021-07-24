#pragma once

#include <type_traits>
#include <compare>

// namespace
// 	_
// {
class
	TermTag
;

template
	<	typename
			t_tProto
	>
concept
	ProtoTerm
=	std::is_same_v
	<	decltype
		(	t_tProto
		::	Term
		)
	,	TermTag const
	>
;

template
	<	typename
			t_tProto
	>
concept
	ProtoConjunctive
=	ProtoTerm
	<	t_tProto
	>
and	(	t_tProto
	::	Term
	.	IsConjunctive
	)
;

template
	<	typename
			t_tProto
	>
concept
	ProtoConjunction
=	ProtoConjunctive
	<	t_tProto
	>
and	(	t_tProto
	::	Term
	.	IsConjunction
	)
;

template
	<	typename
			t_tProto
	>
concept
	ProtoDisjunctive
=	ProtoTerm
	<	t_tProto
	>
and	(	t_tProto
	::	Term
	.	IsDisjunctive
	)
;

template
	<	typename
			t_tProto
	>
concept
	ProtoDisjunction
=	ProtoDisjunctive
	<	t_tProto
	>
and	(	t_tProto
	::	Term
	.	IsDisjunction
	)
;

template
	<	typename
			t_tProto
	>
concept
	ProtoConjunctionClause
=	ProtoConjunction
	<	t_tProto
	>
and	ProtoDisjunctive
	<	t_tProto
	>
;

template
	<	typename
			t_tProto
	>
concept
	ProtoDisjunctionClause
=	ProtoDisjunction
	<	t_tProto
	>
and	ProtoConjunctive
	<	t_tProto
	>
;

template
	<	typename
			t_tProto
	>
concept
	ProtoLiteral
=	ProtoConjunctionClause
	<	t_tProto
	>
and	ProtoDisjunctionClause
	<	t_tProto
	>
;

template
	<	typename
			t_tProto
	>
concept ProtoConstant
=	ProtoLiteral
	<	t_tProto
	>
and	(	t_tProto
	::	Term
	.	IsConstant
	)
;

template
	<	typename
			t_tProto
	>
concept
	ProtoAtom
=	(	std::is_class_v
		<	t_tProto
		>
	or	std::is_union_v
		<	t_tProto
		>
	)
and not
	ProtoTerm
	<	t_tProto
	>
;

template
	<	ProtoDisjunctionClause
		...
	>
class
	And
;

template
	<	ProtoConjunctionClause
		...
	>
class
	Or
;

class
	TermTag final
{
	template
		<	bool
		>
	friend class
		Constant
	;

	template
		<	ProtoAtom
		,	bool
		>
	friend class
		Literal
	;

	template
		<	ProtoDisjunctionClause
			...
		>
	friend class
		And
	;
	template
		<	ProtoConjunctionClause
			...
		>
	friend class
		Or
	;

	constexpr
	(	compl TermTag
	)	()
	=	default;

public:

	bool const
		IsConstant
		: 1
		=	false
	;
	bool const
		IsLiteral
		: 1
		=	IsConstant
	;
	bool const
		IsClause
		: 1
		=	IsLiteral
	;
	bool const
		IsConjunction
		: 1
		=	IsLiteral
	;
	bool const
		IsDisjunction
		: 1
		=	IsLiteral
	;
	bool const
		IsConjunctive
		: 1
		=	IsClause
		or	IsConjunction
	;
	bool const
		IsDisjunctive
		: 1
		=	IsClause
		or	IsDisjunction
	;
	bool const
		IsNested
		: 1
	=	not
		IsClause
	;
};

template
	<	bool
			t_bConstant
	>
class
	Constant
{
public:
	static TermTag const constexpr
		Term
	{	.	IsConstant
		=	true
	};

	explicit constexpr
	(	operator bool
	)	()	const
	{	return t_bConstant;	}

	auto constexpr
	(	operator()
	)	(	auto&&
			...
		)
	->	bool
	{	return t_bConstant;	}

	static auto constexpr
	(	SharesLiteralWith
	)	(	ProtoTerm auto
			...	i_vpTerm
		)
	->	bool
	{	return (... and (Constant{} == i_vpTerm));	}

	friend
	auto constexpr
	(	operator *
	)	(	Constant
		)
	->	ProtoDisjunctive auto
	{	return Constant{};	}

	friend
	auto constexpr
	(	operator +
	)	(	Constant
		)
	->	ProtoConjunctive auto
	{	return Constant{};	}

	friend
	auto constexpr
	(	operator not
	)	(	Constant
		)
	->	ProtoConstant auto
	{	return Constant<not t_bConstant>{};	}

	friend
	auto constexpr
	(	operator compl
	)	(	Constant
		)
	->	ProtoConstant auto
	{	return Constant<not t_bConstant>{};	}

	friend
	auto constexpr
	(	operator ==
	)	(	Constant
		,	Constant
		)
	->	bool
	{	return true;	}

	friend
	auto constexpr
	(	operator ==
	)	(	Constant
		,	ProtoTerm auto
		)
	->	bool
	{	return false;	}

	friend
	auto constexpr
	(	operator >=
	)	(	Constant
		,	Constant
		)
	->	bool
	{	return true;	}

	friend
	auto constexpr
	(	operator >=
	)	(	Constant
		,	Constant<not t_bConstant>
		)
	->	bool
	{	return not t_bConstant;	}

	friend
	auto constexpr
	(	operator >=
	)	(	Constant
		,	ProtoLiteral auto
		)
	->	bool
	{	return not t_bConstant;	}

	friend
	auto constexpr
	(	operator<=>
	)	(	Constant
		,	Constant
		)
	->	std::partial_ordering
	{	return std::partial_ordering::equivalent;	}

	friend
	auto constexpr
	(	operator<=>
	)	(	Constant
		,	ProtoTerm auto
		)
	->	std::partial_ordering
	{
		return
			t_bConstant
		?	std::partial_ordering::less
		:	std::partial_ordering::greater
		;
	}

	friend
	auto constexpr
	(	operator and
	)	(	Constant
				i_vLeft
		,	Constant
		)
	->	ProtoConjunctive auto
	{	return i_vLeft;	}

	friend
	auto constexpr
	(	operator and
	)	(	Constant
		,	Constant<not t_bConstant>
		)
	->	ProtoConjunctive auto
	{	return Constant<false>{};	}

	friend
	auto constexpr
	(	operator *
	)	(	Constant
				i_vLeft
		,	ProtoLiteral auto
				i_vRight
		)
	->	ProtoDisjunctive auto
	{	return i_vLeft and i_vRight;	}

	friend
	auto constexpr
	(	operator or
	)	(	Constant
				i_vLeft
		,	Constant
		)
	->	ProtoConjunctive auto
	{	return i_vLeft;	}

	friend
	auto constexpr
	(	operator or
	)	(	Constant
		,	Constant<not t_bConstant>
		)
	->	ProtoConjunctive auto
	{	return Constant<true>{};	}

	friend
	auto constexpr
	(	operator +
	)	(	Constant
				i_vLeft
		,	ProtoLiteral auto
				i_vRight
		)
	->	ProtoConjunctive auto
	{	return i_vLeft or i_vRight;	}
};

using True = Constant<true>;
using False = Constant<false>;

template
	<	ProtoAtom
			t_tAtom
	,	bool
			t_bPolarity
	>
class
	Literal final
{
public:
	static TermTag const constexpr
		Term
	{	.	IsLiteral
		=	true
	};

	static auto constexpr
	(	SharesLiteralWith
	)	(	Literal
		)
	->	bool
	{	return true;	}

	static auto constexpr
	(	SharesLiteralWith
	)	(	ProtoConstant auto
		)
	->	bool
	{	return false;	}

	static auto constexpr
	(	SharesLiteralWith
	)	(	ProtoLiteral auto
		)
	->	bool
	{	return false;	}

	template
		<	ProtoDisjunctionClause
			...	t_tpDisjunction
		>
	static auto constexpr
	(	SharesLiteralWith
	)	(	And<t_tpDisjunction...>
		)
	->	bool
	{	return (... or SharesLiteralWith(t_tpDisjunction{}));	}

	template
		<	ProtoConjunctionClause
			...	t_tpConjunction
		>
	static auto constexpr
	(	SharesLiteralWith
	)	(	Or<t_tpConjunction...>
		)
	->	bool
	{	return (... or SharesLiteralWith(t_tpConjunction{}));	}

	static auto constexpr
	(	SharesLiteralWith
	)	(	ProtoTerm auto
			...	i_vpTerm
		)
	->	bool
	{	return (... and SharesLiteralWith(i_vpTerm));	}

	friend
	auto constexpr
	(	operator >=
	)	(	Literal
		,	ProtoLiteral auto
		)
	->	bool
	{	return false;	}

	friend
	auto constexpr
	(	operator *
	)	(	Literal
		)
	->	ProtoDisjunctive auto
	{	return Literal{};	}

	friend
	auto constexpr
	(	operator +
	)	(	Literal
		)
	->	ProtoConjunctive auto
	{	return Literal{};	}

	friend
	auto constexpr
	(	operator not
	)	(	Literal
		)
	->	ProtoLiteral auto
	{	return Literal<t_tAtom, not t_bPolarity>{};	}

	friend
	auto constexpr
	(	operator compl
	)	(	Literal
				i_vAtom
		)
	->	ProtoLiteral auto
	{	return not i_vAtom;	}

	friend
	auto constexpr
	(	operator ==
	)	(	Literal
		,	Literal
		)
	->	bool
	{	return true;	}

	friend
	auto constexpr
	(	operator ==
	)	(	Literal
		,	ProtoTerm auto
		)
	->	bool
	{	return false;	}

	friend
	auto constexpr
	(	operator >=
	)	(	Literal
		,	Literal
		)
	->	bool
	{	return true;	}

	friend
	auto constexpr
	(	operator >=
	)	(	Literal
		,	ProtoConstant auto
				i_vRight
		)
	->	bool
	{	return i_vRight();	}

	friend
	auto constexpr
	(	operator<=>
	)	(	Literal
				i_vLeft
		,	ProtoTerm auto
				i_vRight
		)
	->	std::partial_ordering
	{
		if	constexpr(i_vLeft == i_vRight)
			return std::partial_ordering::equivalent;
		else
		if	constexpr(i_vLeft >= i_vRight)
			return std::partial_ordering::greater;
		else
		if	constexpr(i_vRight >= i_vLeft)
			return std::partial_ordering::less;
		else
			return std::partial_ordering::unordered;
	}

	friend
	auto constexpr
	(	operator and
	)	(	ProtoConstant auto
				i_vLeft
		,	Literal
				i_vRight
		)
	{
		if	constexpr(i_vLeft())
			return i_vRight;
		else
			return i_vLeft;
	}

	friend
	auto constexpr
	(	operator and
	)	(	Literal
				i_vLeft
		,	ProtoConstant auto
				i_vRight
		)
	{
		if	constexpr(i_vRight())
			return i_vLeft;
		else
			return i_vRight;
	}

	friend
	auto constexpr
	(	operator and
	)	(	Literal
				i_vLeft
		,	Literal
		)
	->	ProtoConjunctive auto
	{	return i_vLeft;	}

	friend
	auto constexpr
	(	operator and
	)	(	Literal
		,	Literal<t_tAtom, not t_bPolarity>
		)
	->	ProtoConjunctive auto
	{	return False{};	}

	friend
	auto constexpr
	(	operator and
	)	(	Literal
				i_vLeft
		,	ProtoLiteral auto
				i_vRight
		)
	->	ProtoConjunctive auto
	{	return And{i_vLeft, i_vRight};	}

	friend
	auto constexpr
	(	operator *
	)	(	Literal
				i_vLeft
		,	ProtoLiteral auto
				i_vRight
		)
	->	ProtoDisjunctive auto
	{	return i_vLeft and i_vRight;	}

	friend
	auto constexpr
	(	operator or
	)	(	ProtoConstant auto
				i_vLeft
		,	Literal
				i_vRight
		)
	{
		if	constexpr(i_vLeft())
			return i_vLeft;
		else
			return i_vRight;
	}

	friend
	auto constexpr
	(	operator or
	)	(	Literal
				i_vLeft
		,	ProtoConstant auto
				i_vRight
		)
	{
		if	constexpr(i_vRight())
			return i_vRight;
		else
			return i_vLeft;
	}

	friend
	auto constexpr
	(	operator or
	)	(	Literal
				i_vLeft
		,	Literal
		)
	->	ProtoConjunctive auto
	{	return i_vLeft;	}

	friend
	auto constexpr
	(	operator or
	)	(	Literal
		,	Literal<t_tAtom, not t_bPolarity>
		)
	->	ProtoConjunctive auto
	{	return True{};	}

	friend
	auto constexpr
	(	operator or
	)	(	Literal
				i_vLeft
		,	ProtoLiteral auto
				i_vRight
		)
	->	ProtoConjunctive auto
	{	return Or{i_vLeft, i_vRight};	}

	friend
	auto constexpr
	(	operator +
	)	(	Literal
				i_vLeft
		,	ProtoLiteral auto
				i_vRight
		)
	->	ProtoConjunctive auto
	{	return i_vLeft or i_vRight;	}
};

template
	<	ProtoAtom
			t_tAtom
	>
using
	Atom
=	Literal
	<	t_tAtom
	,	true
	>
;

template
	<	ProtoAtom
			t_tAtom
	>
using
	Not
=	Literal
	<	t_tAtom
	,	false
	>
;

template
	<	ProtoDisjunctionClause
		...	t_tpDisjunction
	>
class
	And final
{
public:
	constexpr
	(	And
	)	()
	=	default;

	explicit constexpr
	(	And
	)	(	t_tpDisjunction
			...
		)
	{}

	static auto constexpr
	(	SharesLiteralWith
	)	(	And
		)
	->	bool
	{	return true;	}

	static auto constexpr
	(	SharesLiteralWith
	)	(	ProtoConstant auto
		)
	->	bool
	{	return false;	}

	static auto constexpr
	(	SharesLiteralWith
	)	(	ProtoTerm auto
				i_vTerm
		)
	->	bool
	{	return (... or t_tpDisjunction::SharesLiteralWith(i_vTerm));	}

	static auto constexpr
	(	SharesLiteralWith
	)	(	ProtoTerm auto
			...	i_vpTerm
		)
	->	bool
	{	return (... and SharesLiteralWith(i_vpTerm));	}

	static auto constexpr
	(	Replace
	)	(	ProtoDisjunctionClause auto
				i_vContained
		,	ProtoDisjunctionClause auto
				i_vReplacement
		)
	->	ProtoConjunction auto
	{
		static_assert(And{} >= i_vContained);
		static_assert(not (And{} >= i_vReplacement));
		return
			And<std::conditional_t
				<	i_vContained == t_tpDisjunction{}
				,	decltype(i_vReplacement)
				,	t_tpDisjunction
				>
				...
			>{}
		;
	}

	template
		<	ProtoDisjunctionClause
				t_tInsert
		>
	static auto constexpr
	(	Insert
	)	(	t_tInsert
				i_vInsert
		)
	->	ProtoConjunction auto
	{
		if	constexpr((... or (t_tpDisjunction{} >= i_vInsert)))
			return And<t_tpDisjunction...>{};
		else
		if	constexpr
			(	(... or (i_vInsert >= t_tpDisjunction{}))
			)
			return
			(	...
			and	(	t_tpDisjunction{}
				and	std::conditional_t
					<	i_vInsert >= t_tpDisjunction{}
					,	t_tInsert
					,	True
					>{}
				)
			);
		else
		if	constexpr
			((	...
			or	(	Replace(t_tpDisjunction{}, i_vInsert)
				>=	t_tpDisjunction{}
				)
			))
			return
			(	(	t_tpDisjunction{}
				or	std::conditional_t
					<	(	Replace(t_tpDisjunction{}, i_vInsert)
						>=	t_tpDisjunction{}
						)
					,	True
					,	t_tpDisjunction
					>{}
				)
			and	...
			and	i_vInsert
			);
		else
			return And<t_tpDisjunction..., t_tInsert>{};
	}

	friend class Test;

	static TermTag constexpr
		Term
	{	.	IsClause
		=	(... and ProtoLiteral<t_tpDisjunction>)
	,	.	IsConjunction
		=	true
	};

// 	static_assert
// 	(	sizeof...(t_tpDisjunction)
// 	>=	2ul
// 	,	"Conjunction must contain at least two clauses."
// 	);

	static auto constexpr
	(	ContainsOnce
	)	(	ProtoDisjunctive auto
				i_vClause
		)
	->	bool
	{
		return
			1ul
		==	(	...
			+	(	t_tpDisjunction
					{}
				>=	i_vClause
				)
			)
		;
	}

// 	static_assert
// 	(	(	...
// 		and ContainsOnce
// 			(	t_tpDisjunction
// 				{}
// 			)
// 		)
// 	,	"Conjunction mustn't contain subsuming clauses."
// 	);
//
// 	static_assert
// 	(	(	...
// 		and not
// 			ContainsOnce
// 			(	not
// 				t_tpDisjunction
// 				{}
// 			)
// 		)
// 	,	"Conjunction mustn't contain contradictory clauses."
// 	);

	friend
	auto constexpr
	(	operator *
	)	(	And
				i_vConjunction
		)
	->	ProtoDisjunctive auto
	{
		if	constexpr(Term.IsClause)
			return i_vConjunction;
		else
			return (... * t_tpDisjunction{});
	}

	friend
	auto constexpr
	(	operator +
	)	(	And
				i_vConjunction
		)
	->	ProtoConjunctive auto
	{	return i_vConjunction;	}

	friend
	auto constexpr
	(	operator not
	)	(	And
		)
	->	ProtoDisjunction auto
	{	return Or{not t_tpDisjunction{}...};	}

	friend
	auto constexpr
	(	operator compl
	)	(	And
		)
	->	ProtoConjunction auto
	{	return ::And{compl t_tpDisjunction{}...};	}

	friend
	auto constexpr
	(	operator ==
	)	(	And
		,	And
		)
	->	bool
	{	return true;	}

	friend
	auto constexpr
	(	operator ==
	)	(	And
		,	ProtoLiteral auto
		)
	->	bool
	{	return false;	}

	friend
	auto constexpr
	(	operator ==
	)	(	And
				i_vLeft
		,	ProtoTerm auto
				i_vRight
		)
	->	bool
	{
		return
			i_vLeft >= i_vRight
		and	i_vRight >= i_vLeft
		;
	}

	friend
	auto constexpr
	(	operator >=
	)	(	And
		,	And
		)
	->	bool
	{	return true;	}

	friend
	auto constexpr
	(	operator >=
	)	(	ProtoConjunction auto
				i_vLeft
		,	And
				i_vRight
		)
	->	bool
	{
		if	constexpr(i_vLeft.Term.IsDisjunctive)
			return (... and (i_vLeft >= t_tpDisjunction{}));
		else
			return True{} == (not i_vLeft or i_vRight);
	}

	friend
	auto constexpr
	(	operator >=
	)	(	And
				i_vLeft
		,	ProtoDisjunction auto
				i_vRight
		)
	->	bool
	{
		if	constexpr(i_vLeft.Term.IsDisjunctive and i_vRight.Term.IsConjunctive)
			return (... or (t_tpDisjunction{} >= i_vRight));
		else
			return True{} == (not i_vLeft or i_vRight);
	}

	friend
	auto constexpr
	(	operator<=>
	)	(	And
				i_vLeft
		,	ProtoTerm auto
				i_vRight
		)
	->	std::partial_ordering
	{
		if	constexpr(i_vLeft == i_vRight)
			return std::partial_ordering::equivalent;
		else
		if	constexpr(i_vLeft >= i_vRight)
			return std::partial_ordering::greater;
		else
		if	constexpr(i_vRight >= i_vLeft)
			return std::partial_ordering::less;
		else
			return std::partial_ordering::unordered;
	}

	friend
	auto constexpr
	(	operator and
	)	(	ProtoTerm auto
				i_vLeft
		,	And
		)
	->	ProtoConjunctive auto
	{	return (i_vLeft and ... and t_tpDisjunction{});	}

	friend
	auto constexpr
	(	operator and
	)	(	And
				i_vLeft
		,	ProtoLiteral auto
				i_vRight
		)
	->	ProtoConjunctive auto
	{
		if	constexpr(i_vLeft >= i_vRight)
			return i_vLeft;
		else
		if	constexpr
			(	(... or (i_vRight >= t_tpDisjunction{}))
			or	(... or (not i_vRight >= t_tpDisjunction{}))
			)
			return (... and (t_tpDisjunction{} and i_vRight));
		else
			return i_vLeft.Insert(i_vRight);
	}

	friend
	auto constexpr
	(	operator *
	)	(	ProtoTerm auto
				i_vLeft
		,	And
				i_vRight
		)
	->	ProtoDisjunctive auto
	{
		if	constexpr(i_vLeft >= i_vRight)
			return *i_vLeft;
		else
			return (i_vLeft * ... * t_tpDisjunction{});
	}

	friend
	auto constexpr
	(	operator *
	)	(	And
				i_vLeft
		,	ProtoLiteral auto
				i_vRight
		)
	->	ProtoDisjunctive auto
	{
		if	constexpr(i_vLeft >= i_vRight)
			return *i_vLeft;
		else
		if	constexpr(i_vLeft.Term.IsNested)
			return (t_tpDisjunction{} * ... * i_vRight);
		else
			return i_vLeft and i_vRight;
	}

	friend
	auto constexpr
	(	operator or
	)	(	ProtoLiteral auto
				i_vLeft
		,	And
				i_vRight
		)
	->	ProtoDisjunctive auto
	{
		if	constexpr(i_vRight >= i_vLeft)
			return i_vLeft;
		else
		if	constexpr
			((	i_vRight.Term.IsNested
			or	...
			or	(	i_vLeft >= t_tpDisjunction{}
				or	i_vLeft >= compl t_tpDisjunction{}
				)
			))
			return (... * (i_vLeft or t_tpDisjunction{}));
		else
			return Or{i_vLeft, i_vRight};
	}

	friend
	auto constexpr
	(	operator or
	)	(	ProtoConjunction auto
				i_vLeft
		,	And
				i_vRight
		)
	->	ProtoDisjunctive auto
	{
		if	constexpr(i_vRight >= i_vLeft)
			return i_vLeft;
		else
			if	constexpr
			(	i_vLeft.Term.IsNested
			or	i_vRight.Term.IsNested
			or	i_vLeft >= i_vRight
			or	(	(i_vLeft != compl i_vRight)
				and	...
				and	(	(i_vLeft >= t_tpDisjunction{})
					or	(i_vLeft >= not t_tpDisjunction{})
					)
				)
			)
			return (... * (i_vLeft or t_tpDisjunction{}));
		else
			return Or{i_vLeft, i_vRight};
	}

	friend
	auto constexpr
	(	operator or
	)	(	ProtoDisjunction auto
				i_vLeft
		,	And
				i_vRight
		)
	->	ProtoDisjunctive auto
	{
		if	constexpr(i_vRight.Term.IsNested)
			return i_vLeft or *i_vRight;
		else
			if	constexpr(i_vRight >= i_vLeft)
			return i_vLeft;
		else
		if	constexpr
			(	(i_vLeft >= not i_vRight)
			or	(... or (t_tpDisjunction{} >= i_vLeft))
			or	(... or (t_tpDisjunction{} >= compl i_vLeft))
			or	(... and (t_tpDisjunction::SharesLiteralWith(compl i_vLeft)))
			)
			return (... * (i_vLeft or t_tpDisjunction{}));
		else
			return i_vLeft.Insert(i_vRight);
	}

	friend
	auto constexpr
	(	operator or
	)	(	And
				i_vLeft
		,	ProtoLiteral auto
				i_vRight
		)
	->	ProtoDisjunctive auto
	{
		if	constexpr
			(	i_vLeft.Term.IsNested
			or	i_vLeft >= not i_vRight
			)
			return (... * (t_tpDisjunction{} or i_vRight));
		else
		if	constexpr(i_vLeft >= i_vRight)
			return i_vRight;
		else
			return Or{i_vLeft, i_vRight};
	}

	friend
	auto constexpr
	(	operator +
	)	(	ProtoTerm auto
				i_vLeft
		,	And
				i_vRight
		)
	->	ProtoConjunctive auto
	{
		if	constexpr(i_vRight >= i_vLeft)
			return +i_vLeft;
		else
			return (... and (i_vLeft + t_tpDisjunction{}));
	}

	friend
	auto constexpr
	(	operator +
	)	(	And
				i_vLeft
		,	ProtoLiteral auto
				i_vRight
		)
	->	ProtoConjunctive auto
	{
		if	constexpr(i_vRight >= i_vLeft)
			return i_vLeft;
		else
			return (... and (t_tpDisjunction{} + i_vRight));
	}
};

template
	<	ProtoDisjunctionClause
		...	t_tpDisjunction
	>
(	And
)	(	t_tpDisjunction
		...
	)
->	And
	<	t_tpDisjunction
		...
	>
;

template
	<	ProtoConjunctionClause
		...	t_tpConjunction
	>
class
	Or final
{
public:
	constexpr
	(	Or
	)	()
	=	default;

	explicit constexpr
	(	Or
	)	(	t_tpConjunction
			...
		)
	{}

	static auto constexpr
	(	SharesLiteralWith
	)	(	Or
		)
	->	bool
	{	return true;	}

	static auto constexpr
	(	SharesLiteralWith
	)	(	ProtoConstant auto
		)
	->	bool
	{	return false;	}

	static auto constexpr
	(	SharesLiteralWith
	)	(	ProtoTerm auto
				i_vTerm
		)
	->	bool
	{	return (... or t_tpConjunction::SharesLiteralWith(i_vTerm));	}

	static auto constexpr
	(	SharesLiteralWith
	)	(	ProtoTerm auto
			...	i_vpTerm
		)
	->	bool
	{	return (... and SharesLiteralWith(i_vpTerm));	}


	static auto constexpr
	(	Replace
	)	(	ProtoConjunctionClause auto
				i_vContained
		,	ProtoConjunctionClause auto
				i_vReplacement
		)
	->	ProtoDisjunction auto
	{
		static_assert(i_vContained >= Or{});
		static_assert(not (i_vReplacement >= Or{}));
		return
			Or<	std::conditional_t
				<	i_vContained == t_tpConjunction{}
				,	decltype(i_vReplacement)
				,	t_tpConjunction
				>
				...
			>{}
		;
	}

	template
		<	ProtoConjunctionClause
				t_tInsert
		>
	static auto constexpr
	(	Insert
	)	(	t_tInsert
				i_vInsert
		)
	->	ProtoDisjunctive auto
	{
		if	constexpr((... or (i_vInsert >= t_tpConjunction{})))
			return Or<t_tpConjunction...>{};
		else
		if	constexpr
			(	(... or (t_tpConjunction{} >= i_vInsert))
			)
			return
			(	...
			or	(	t_tpConjunction{}
				or	std::conditional_t
					<	t_tpConjunction{} >= i_vInsert
					,	t_tInsert
					,	False
					>{}
				)
			);
		else
// 		if	constexpr
// 			(	(... or (t_tpConjunction{} >= not i_vInsert))
// 			)
// 			return
// 			(	...
// 			or	(	t_tpConjunction{}
// 				or	std::conditional_t
// 					<	t_tpConjunction{} >= not i_vInsert
// 					,	t_tInsert
// 					,	False
// 					>{}
// 				)
// 			);
// 		else
		if	constexpr
			((	...
			or	(	t_tpConjunction{}
				>=	Replace(t_tpConjunction{}, i_vInsert)
				)
			))
			return
			(	(	t_tpConjunction{}
				and	std::conditional_t
					<	(	t_tpConjunction{}
						>=	Replace(t_tpConjunction{}, i_vInsert)
						)
					,	False
					,	t_tpConjunction
					>{}
				)
			or	...
			or	i_vInsert
			);
		else
			return Or<t_tpConjunction..., t_tInsert>{};
	}

	friend class Test;

	static TermTag constexpr
		Term
	{	.	IsClause
		=	(... and ProtoLiteral<t_tpConjunction>)
	,	.	IsDisjunction
		=	true
	};

	static_assert
	(	sizeof...(t_tpConjunction)
	>=	2ul
	,	"Disjunction must contain at least two clauses."
	);

	static auto constexpr
	(	ContainsOnce
	)	(	ProtoConjunctive auto
				i_vClause
		)
	->	bool
	{
		return
			1ul
		==	(	...
			+	(	i_vClause
				>=	t_tpConjunction
					{}
				)
			)
		;
	}

// 	static_assert
// 	(	(	...
// 		and ContainsOnce
// 			(	t_tpConjunction
// 				{}
// 			)
// 		)
// 	,	"Disjunction mustn't contain subsuming clauses."
// 	);
//
// 	static_assert
// 	(	(	...
// 		and not
// 			ContainsOnce
// 			(	not
// 				t_tpConjunction
// 				{}
// 			)
// 		)
// 	,	"Disjunction mustn't contain contradictory clauses."
// 	);

	friend
	auto constexpr
	(	operator *
	)	(	Or
				i_vDisjunction
		)
	->	ProtoDisjunctive auto
	{	return i_vDisjunction;	}

	friend
	auto constexpr
	(	operator +
	)	(	Or
				i_vDisjunction
		)
	->	ProtoConjunctive auto
	{
		if	constexpr(Term.IsClause)
			return i_vDisjunction;
		else
			return (... + t_tpConjunction{});
	}

	friend
	auto constexpr
	(	operator not
	)	(	Or
		)
	->	ProtoConjunction auto
	{	return And{not t_tpConjunction{}...};	}

	friend
	auto constexpr
	(	operator compl
	)	(	Or
		)
	->	ProtoDisjunction auto
	{	return ::Or{compl t_tpConjunction{}...};	}

	friend
	auto constexpr
	(	operator ==
	)	(	Or
		,	Or
		)
	->	bool
	{	return true;	}

	friend
	auto constexpr
	(	operator ==
	)	(	Or
		,	ProtoLiteral auto
		)
	->	bool
	{	return false;	}

	friend
	auto constexpr
	(	operator ==
	)	(	Or
				i_vLeft
		,	ProtoTerm auto
				i_vRight
		)
	->	bool
	{
		return
			i_vLeft >= i_vRight
		and	i_vRight >= i_vLeft
		;
	}

	friend
	auto constexpr
	(	operator >=
	)	(	Or
		,	Or
		)
	->	bool
	{	return true;	}

	friend
	auto constexpr
	(	operator >=
	)	(	ProtoLiteral auto
				i_vLeft
		,	Or
		)
	->	bool
	{	return (... or (i_vLeft >= t_tpConjunction{}));	}

	friend
	auto constexpr
	(	operator >=
	)	(	Or
				i_vLeft
		,	ProtoTerm auto
				i_vRight
		)
	->	bool
	{
		if	constexpr(i_vRight.Term.IsConjunctive)
			return (... and (t_tpConjunction{} >= i_vRight));
		else
			return True{} == (not i_vLeft or i_vRight);
	}

	friend
	auto constexpr
	(	operator<=>
	)	(	Or
				i_vLeft
		,	ProtoTerm auto
				i_vRight
		)
	->	std::partial_ordering
	{
		if	constexpr(i_vLeft == i_vRight)
			return std::partial_ordering::equivalent;
		else
		if	constexpr(i_vLeft >= i_vRight)
			return std::partial_ordering::greater;
		else
		if	constexpr(i_vRight >= i_vLeft)
			return std::partial_ordering::less;
		else
			return std::partial_ordering::unordered;
	}

	friend
	auto constexpr
	(	operator and
	)	(	True
		,	Or
				i_vRight
		)
	->	ProtoConjunctive auto
	{	return +i_vRight;	}

	friend
	auto constexpr
	(	operator and
	)	(	ProtoLiteral auto
				i_vLeft
		,	Or
				i_vRight
		)
	->	ProtoConjunctive auto
	{
		if	constexpr(i_vLeft >= i_vRight)
			return i_vLeft;
		else
		if	constexpr
			(	not i_vLeft.Term.IsConjunctive
			or	i_vRight.Term.IsNested
			or	i_vLeft.SharesLiteralWith(i_vRight)
			or	i_vLeft.SharesLiteralWith(compl i_vRight)
			)
			return (... + (i_vLeft and t_tpConjunction{}));
		else
			return And{i_vLeft, i_vRight};
	}

	friend
	auto constexpr
	(	operator and
	)	(	ProtoConjunction auto
				i_vLeft
		,	Or
				i_vRight
		)
	->	ProtoConjunctive auto
	{
		if	constexpr(i_vLeft >= i_vRight)
			return i_vLeft;
		else
		if	constexpr
			(	i_vRight.Term.IsNested
			or	(not i_vRight >= i_vLeft)
			or	(... or (t_tpConjunction{} >= not i_vLeft))
			or	(... or (compl t_tpConjunction{} >= not i_vLeft))
			or	(... and (t_tpConjunction::SharesLiteralWith(compl i_vLeft)))
			)
			return (... + (i_vLeft and t_tpConjunction{}));
		else
			return i_vLeft.Insert(i_vRight);
	}

	friend
	auto constexpr
	(	operator and
	)	(	ProtoDisjunction auto
				i_vLeft
		,	Or
				i_vRight
		)
	->	ProtoConjunctive auto
	{
		if	constexpr(i_vLeft >= i_vRight)
			return i_vLeft;
		else
		if	constexpr
			(	not i_vLeft.Term.IsConjunctive
			or	i_vRight.Term.IsNested
			or	i_vRight >= i_vLeft
			or	(	(i_vLeft != compl i_vRight)
				and	...
				and (	(t_tpConjunction{} >= i_vLeft)
					or	(not t_tpConjunction{} >= i_vLeft)
					)
				)
			)
			return (... + (i_vLeft and t_tpConjunction{}));
		else
			return And{i_vLeft, i_vRight};
	}

	friend
	auto constexpr
	(	operator and
	)	(	Or
				i_vLeft
		,	ProtoLiteral auto
				i_vRight
		)
	->	ProtoConjunctive auto
	{
		if	constexpr
			(	i_vLeft.Term.IsNested
			or	not i_vRight >= i_vLeft
			)
			return (... + (t_tpConjunction{} and i_vRight));
		else
		if	constexpr(i_vRight >= i_vLeft)
			return i_vRight;
		else
			return And{i_vLeft, i_vRight};
	}

	friend
	auto constexpr
	(	operator *
	)	(	ProtoTerm auto
				i_vLeft
		,	Or
				i_vRight
		)
	->	ProtoDisjunctive auto
	{
		if	constexpr(i_vLeft >= i_vRight)
			return *i_vLeft;
		else
			return (... or (i_vLeft * t_tpConjunction{}));
	}

	friend
	auto constexpr
	(	operator *
	)	(	Or
				i_vLeft
		,	ProtoLiteral auto
				i_vRight
		)
	->	ProtoDisjunctive auto
	{
		if	constexpr(i_vLeft >= i_vRight)
			return i_vLeft;
		else
			return (... or (t_tpConjunction{} * i_vRight));
	}

	friend
	auto constexpr
	(	operator or
	)	(	ProtoTerm auto
				i_vLeft
		,	Or
		)
	->	ProtoDisjunctive auto
	{	return (i_vLeft or ... or t_tpConjunction{});	}

	friend
	auto constexpr
	(	operator or
	)	(	Or
				i_vLeft
		,	ProtoLiteral auto
				i_vRight
		)
	->	ProtoDisjunctive auto
	{
		if	constexpr(i_vRight >= i_vLeft)
			return i_vLeft;
		else
		if	constexpr
			(	(... or (t_tpConjunction{} >= i_vRight))
			or	(... or (t_tpConjunction{} >= not i_vRight))
			)
			return (... or (t_tpConjunction{} or i_vRight));
		else
			return ::Or{t_tpConjunction{}..., i_vRight};
	}

	friend
	auto constexpr
	(	operator +
	)	(	ProtoTerm auto
				i_vLeft
		,	Or
				i_vRight
		)
	->	ProtoConjunctive auto
	{	if	constexpr(i_vRight >= i_vLeft)
			return +i_vLeft;
		else
			return (i_vLeft + ... + t_tpConjunction{});
	}

	friend
	auto constexpr
	(	operator +
	)	(	Or
				i_vLeft
		,	ProtoLiteral auto
				i_vRight
		)
	->	ProtoConjunctive auto
	{
		if	constexpr(i_vRight >= i_vLeft)
			return +i_vLeft;
		else
		if	constexpr(i_vLeft.Term.IsNested)
			return (t_tpConjunction{} + ... + i_vRight);
		else
			return i_vLeft or i_vRight;
	}
};

template
	<	ProtoConjunctionClause
		...	t_tpConjunction
	>
(	Or
)	(	t_tpConjunction
		...
	)
->	Or
	<	t_tpConjunction
		...
	>
;

template
	<	ProtoTerm auto
			t_vTerm
	>
struct
	TermBase
{
	friend auto constexpr
	(	operator +
	)	(	TermBase const
			&
		)
	->	ProtoConjunctive auto
	{	return + t_vTerm;	}

	friend
	auto constexpr
	(	operator *
	)	(	TermBase const
			&
		)
	->	ProtoDisjunctive auto
	{	return * t_vTerm;	}

	friend
	auto constexpr
	(	operator <=>
	)	(	TermBase const
			&
		,	ProtoTerm auto
				i_vRight
		)
	->	std::partial_ordering
	{	return t_vTerm <=> i_vRight;	}

	template
		<	ProtoTerm auto
				t_vRightTerm
		>
	friend
	auto constexpr
	(	operator <=>
	)	(	TermBase const
			&
		,	TermBase<t_vRightTerm> const
			&
		)
	->	std::partial_ordering
	{	return t_vTerm <=> t_vRightTerm;	}

	friend
	auto constexpr
	(	operator ==
	)	(	TermBase const
			&
		,	ProtoTerm auto
				i_vRight
		)
	->	bool
	{	return t_vTerm == i_vRight;	}

	template
		<	ProtoTerm auto
				t_vRightTerm
		>
	friend
	auto constexpr
	(	operator ==
	)	(	TermBase const
			&
		,	TermBase<t_vRightTerm> const
			&
		)
	->	bool
	{	return t_vTerm == t_vRightTerm;	}

	friend
	auto constexpr
	(	operator not
	)	(	TermBase const
			&
		)
	->	ProtoTerm auto
	{	return not t_vTerm;	}

	friend
	auto constexpr
	(	operator compl
	)	(	TermBase const
			&
		)
	->	ProtoTerm auto
	{	return compl t_vTerm;	}

	friend
	auto constexpr
	(	operator and
	)	(	TermBase const
			&
		,	ProtoTerm auto
				i_vRight
		)
	->	ProtoConjunction auto
	{	return t_vTerm and i_vRight;	}

	friend
	auto constexpr
	(	operator *
	)	(	TermBase const
			&
		,	ProtoTerm auto
				i_vRight
		)
	->	ProtoDisjunctive auto
	{	return t_vTerm * i_vRight;	}

	friend
	auto constexpr
	(	operator and
	)	(	ProtoTerm auto
				i_vLeft
		,	TermBase const
			&
		)
	->	ProtoConjunction auto
	{	return i_vLeft and t_vTerm;	}

	friend
	auto constexpr
	(	operator *
	)	(	ProtoTerm auto
				i_vLeft
		,	TermBase const
			&
		)
	->	ProtoDisjunctive auto
	{	return i_vLeft * t_vTerm;	}

	template
		<	ProtoTerm auto
				t_vRightTerm
		>
	friend
	auto constexpr
	(	operator and
	)	(	TermBase const
			&
		,	TermBase<t_vRightTerm> const
			&
		)
	->	ProtoConjunction auto
	{	return t_vTerm and t_vRightTerm;	}

	template
		<	ProtoTerm auto
				t_vRightTerm
		>
	friend
	auto constexpr
	(	operator *
	)	(	TermBase const
			&
		,	TermBase<t_vRightTerm> const
			&
		)
	->	ProtoDisjunctive auto
	{	return t_vTerm * t_vRightTerm;	}

	friend
	auto constexpr
	(	operator or
	)	(	TermBase const
			&
		,	ProtoTerm auto
				i_vRight
		)
	->	ProtoDisjunction auto
	{	return t_vTerm or i_vRight;	}

	friend
	auto constexpr
	(	operator +
	)	(	TermBase const
			&
		,	ProtoTerm auto
				i_vRight
		)
	->	ProtoConjunctive auto
	{	return t_vTerm + i_vRight;	}

	friend
	auto constexpr
	(	operator or
	)	(	ProtoTerm auto
				i_vLeft
		,	TermBase const
			&
		)
	->	ProtoDisjunction auto
	{	return i_vLeft or t_vTerm;	}

	friend
	auto constexpr
	(	operator +
	)	(	ProtoTerm auto
				i_vLeft
		,	TermBase const
			&
		)
	->	ProtoConjunctive auto
	{	return i_vLeft + t_vTerm;	}

	template
		<	ProtoTerm auto
				t_vRightTerm
		>
	friend
	auto constexpr
	(	operator or
	)	(	TermBase const
			&
		,	TermBase<t_vRightTerm> const
			&
		)
	->	ProtoDisjunction auto
	{	return t_vTerm or t_vRightTerm;	}

	template
		<	ProtoTerm auto
				t_vRightTerm
		>
	friend
	auto constexpr
	(	operator +
	)	(	TermBase const
			&
		,	TermBase<t_vRightTerm> const
			&
		)
	->	ProtoConjunctive auto
	{	return t_vTerm + t_vRightTerm;	}
};

template
	<	ProtoAtom
			t_tAtom
	>
using
	AtomBase
=	TermBase
	<	Atom
		<	t_tAtom
		>{}
	>
;


// 	class
// 		Test
// 		final
// 	{
// 		static True constexpr inline
// 			True
// 		{};
// 		static False constexpr inline
// 			False
// 		{};
//
// 		template<ProtoAtom auto t_vAtom>
// 		static Atom<decltype(t_vAtom)> constexpr
// 			Atom
// 		{};
//
// 		template<ProtoAtom auto t_vAtom>
// 		static Not<decltype(t_vAtom)> constexpr
// 			Not
// 		{};
//
// 		template<auto... t_vpClause>
// 		static And constexpr
// 			And
// 		{	*t_vpClause
// 			...
// 		};
//
// 		template<auto... t_vpClause>
// 		static Or constexpr
// 			Or
// 		{	+t_vpClause
// 			...
// 		};
//
// 		static struct P_ : AtomBase<P_> {} constexpr inline P{};
// 		static struct Q_ : AtomBase<Q_> {} constexpr inline Q{};
// 		static struct R_ : AtomBase<R_> {} constexpr inline R{};
// 		static struct S_ : AtomBase<S_> {} constexpr inline S{};
//
//
// 		static auto constexpr
// 			Unordered
// 		=	std::partial_ordering::unordered
// 		;
// 		/// Ordering
// 		static_assert(True == True);
// 		static_assert(True < False);
// 		static_assert(True < And<P, Q>);
// 		static_assert(True < And<P, Or<Q, R>>);
// 		static_assert(True < Or<P, And<Q, R>>);
//
// 		static_assert(False > True);
// 		static_assert(False == False);
// 		static_assert(False > P);
// 		static_assert(False > And<P, Q>);
// 		static_assert(False > And<P, Or<Q, R>>);
// 		static_assert(False > Or<P, Q>);
// 		static_assert(False > Or<P, And<Q, R>>);
//
// 		static_assert(P > True);
// 		static_assert(P < False);
// 		static_assert(P == P);
// 		static_assert(P <=> R == Unordered);
// 		static_assert(P <=> And<Q, R> == Unordered);
// 		static_assert(P <=> And<Q, Or<R, S>> == Unordered);
// 		static_assert(P <=> Or<Q, R> == Unordered);
// 		static_assert(P <=> Or<Q, And<R, S>> == Unordered);
//
// 		static_assert(And<P, Q> > True);
// 		static_assert(And<P, Q> < False);
// 		static_assert(And<P, Q> <=> R == Unordered);
// 		static_assert(And<P, Q> == And<P, Q>);
// 		static_assert(And<P, Q> == And<Q, P>);
// 		static_assert(And<P, Q> <=> And<P, R> == Unordered);
// 		static_assert(And<P, Q> <=> And<R, P> == Unordered);
// 		static_assert(And<P, Q> <=> And<Q, R> == Unordered);
// 		static_assert(And<P, Q> <=> And<R, Q> == Unordered);
// 		static_assert(And<P, Q> <=> And<R, S> == Unordered);
// 		static_assert(And<P, Q> <=> And<P, Or<R, S>> == Unordered);
// 		static_assert(And<P, Q> <=> And<Or<R, S>, P> == Unordered);
// 		static_assert(And<P, Q> <=> And<R, Or<P, S>> == Unordered);
// 		static_assert(And<P, Q> <=> And<Or<P, S>, R> == Unordered);
// 		static_assert(And<P, Q> <=> And<R, Or<P, Q>> == Unordered);
// 		static_assert(And<P, Q> <=> And<Or<P, Q>, R> == Unordered);
// 		static_assert(And<P, Q> <=> Or<R, S> == Unordered);
// 		static_assert(And<P, Q> <=> Or<R, And<P, S>> == Unordered);
// 		static_assert(And<P, Q> <=> Or<And<P, S>, R> == Unordered);
//
// 		static_assert(Or<P, Q> > True);
// 		static_assert(Or<P, Q> < False);
// 		static_assert(Or<P, Q> <=> R == Unordered);
// 		static_assert(Or<P, Q> <=> And<R, S> == Unordered);
// 		static_assert(Or<P, Q> <=> And<R, Or<P, S>> == Unordered);
// 		static_assert(Or<P, Q> <=> And<Or<P, S>, R> == Unordered);
// 		static_assert(Or<P, Q> == Or<P, Q>);
// 		static_assert(Or<P, Q> == Or<Q, P>);
// 		static_assert(Or<P, Q> <=> Or<P, R> == Unordered);
// 		static_assert(Or<P, Q> <=> Or<R, P> == Unordered);
// 		static_assert(Or<P, Q> <=> Or<R, Q> == Unordered);
// 		static_assert(Or<P, Q> <=> Or<Q, R> == Unordered);
// 		static_assert(Or<P, Q> <=> Or<R, S> == Unordered);
// 		static_assert(Or<P, Q> <=> Or<P, And<R, S>> == Unordered);
// 		static_assert(Or<P, Q> <=> Or<And<R, S>, P> == Unordered);
// 		static_assert(Or<P, Q> <=> Or<R, And<P, S>> == Unordered);
// 		static_assert(Or<P, Q> <=> Or<And<P, S>, R> == Unordered);
//
// 		static_assert(P < And<P, Q>);
// 		static_assert(P < And<Q, P>);
// 		static_assert(P < And<P, Or<Q, R>>);
// 		static_assert(P < And<Or<Q, R>, P>);
// 		static_assert(P > And<Or<P, Q>, Or<P, R>>);
// 		static_assert(P > Or<P, Q>);
// 		static_assert(P > Or<Q, P>);
// 		static_assert(P > Or<P, And<Q, R>>);
// 		static_assert(P > Or<And<Q, R>, P>);
// 		static_assert(P < Or<And<P, Q>, And<P, R>>);
//
// 		static_assert(And<P, Q> > P);
// 		static_assert(And<P, Q> > Q);
// 		static_assert(And<P, Q> < And<P, Q, R>);
// 		static_assert(And<P, Q> < And<P, R, Q>);
// 		static_assert(And<P, Q> < And<Q, P, R>);
// 		static_assert(And<P, Q> < And<Q, R, P>);
// 		static_assert(And<P, Q> < And<R, P, Q>);
// 		static_assert(And<P, Q> < And<R, Q, P>);
// 		static_assert(And<P, Q> > And<P, Or<Q, R>>);
// 		static_assert(And<P, Q> > And<Or<Q, R>, P>);
// 		static_assert(And<P, Q> > And<Or<P, R>, Or<Q, S>>);
// 		static_assert(And<P, Q> > And<Or<Q, S>, Or<P, R>>);
// 		static_assert(And<P, Q> > Or<P, Q>);
// 		static_assert(And<P, Q> > Or<Q, P>);
// 		static_assert(And<P, Q> > Or<P, Q, R>);
// 		static_assert(And<P, Q> > Or<P, R, Q>);
// 		static_assert(And<P, Q> > Or<Q, P, R>);
// 		static_assert(And<P, Q> > Or<Q, R, P>);
// 		static_assert(And<P, Q> > Or<R, P, Q>);
// 		static_assert(And<P, Q> > Or<R, Q, P>);
// 		static_assert(And<P, Q> > Or<P, And<R, S>>);
// 		static_assert(And<P, Q> > Or<And<R, S>, P>);
// 		static_assert(And<P, Q> > Or<And<P, Q>, And<R, S>>);
// 		static_assert(And<P, Q> > Or<And<R, S>, And<P, Q>>);
// 		static_assert(And<P, Q> < Or<And<P, Q, R>, And<P, Q, S>>);
// 		static_assert(And<P, Q> < Or<And<P, Q, S>, And<P, Q, R>>);
//
// 		static_assert(And<P, Q, R> > P);
// 		static_assert(And<P, Q, R> > Q);
// 		static_assert(And<P, Q, R> > R);
// 		static_assert(And<P, Q, R> > And<P, Q>);
// 		static_assert(And<P, Q, R> > And<P, R>);
// 		static_assert(And<P, Q, R> > And<Q, P>);
// 		static_assert(And<P, Q, R> > And<Q, R>);
// 		static_assert(And<P, Q, R> > And<R, P>);
// 		static_assert(And<P, Q, R> > And<R, Q>);
// 		static_assert(And<P, Q, R> > And<P, Or<Q, R>>);
// 		static_assert(And<P, Q, R> > And<Or<Q, R>, P>);
// 		static_assert(And<P, Q, R> > And<P, Q, Or<R, S>>);
// 		static_assert(And<P, Q, R> > And<P, Or<R, S>, Q>);
// 		static_assert(And<P, Q, R> > And<Or<R, S>, P, Q>);
// 		static_assert(And<P, Q, R> > And<Or<P, S>, Or<Q, S>, Or<R, S>>);
//
// 		static_assert(And<P, Or<Q, R>> > P);
// 		static_assert(And<P, Or<Q, R>> <=> Q == Unordered);
// 		static_assert(And<P, Or<Q, R>> <=> R == Unordered);
// 		static_assert(And<P, Or<Q, R>> < And<P, Q>);
// 		static_assert(And<P, Or<Q, R>> < And<P, R>);
// 		static_assert(And<P, Or<Q, R>> == And<P, Or<Q, R>>);
//
// 		static_assert(Or<Q, R> >= Or<Q, R>);
// 		static_assert(And<P, Or<Q, R>> >= Or<Q, R>);
// 		static_assert(And<P, Or<Q, R>> == And<P, Or<R, Q>>);
// 		static_assert(And<P, Or<Q, R>> == And<Or<Q, R>, P>);
// 		static_assert(And<P, Or<Q, R>> == And<Or<R, Q>, P>);
// 		static_assert(And<P, Or<Q, R>> <=> And<P, Or<Q, S>> == Unordered);
// 		static_assert(And<P, Or<Q, R>> <=> And<P, Or<S, Q>> == Unordered);
// 		static_assert(And<P, Or<Q, R>> <=> And<Or<Q, S>, P> == Unordered);
// 		static_assert(And<P, Or<Q, R>> <=> And<Or<S, Q>, P> == Unordered);
// 		static_assert(And<P, Or<Q, R>> > And<Or<P, R>, Or<Q, R>>);
// 		static_assert(And<P, Or<Q, R>> > And<Or<Q, R>, Or<P, R>>);
//
// 		static_assert(And<Or<P, Q>, Or<P, R>> < P);
// 		static_assert(And<Or<P, Q>, Or<P, R>> <=> Q == Unordered);
// 		static_assert(And<Or<P, Q>, Or<P, R>> <=> R == Unordered);
// 		static_assert(And<Or<P, Q>, Or<P, R>> < And<P, R>);
// 		static_assert(And<Or<P, Q>, Or<P, R>> < And<P, Q>);
// 		static_assert(And<Or<P, Q>, Or<P, R>> < And<Q, R>);
// 		static_assert(And<Or<P, Q>, Or<P, R>> < And<P, Q, R>);
// 		static_assert(And<Or<P, Q>, Or<P, R>> < And<P, Or<Q, R>>);
// 		static_assert(And<Or<P, Q>, Or<P, R>> < And<Q, Or<P, R>>);
// 		static_assert(And<Or<P, Q>, Or<P, R>> == And<Or<P, Q>, Or<P, R>>);
// 		static_assert(And<Or<P, Q>, Or<P, R>> == And<Or<P, Q>, Or<R, P>>);
// 		static_assert(And<Or<P, Q>, Or<P, R>> == And<Or<Q, P>, Or<P, R>>);
// 		static_assert(And<Or<P, Q>, Or<P, R>> == And<Or<Q, P>, Or<R, P>>);
// 		static_assert(And<Or<P, Q>, Or<P, R>> == And<Or<P, R>, Or<P, Q>>);
// 		static_assert(And<Or<P, Q>, Or<P, R>> == And<Or<P, R>, Or<Q, P>>);
// 		static_assert(And<Or<P, Q>, Or<P, R>> == And<Or<R, P>, Or<P, Q>>);
// 		static_assert(And<Or<P, Q>, Or<P, R>> == And<Or<R, P>, Or<Q, P>>);
// 		static_assert(And<Or<P, Q>, Or<P, R>> > And<Or<P, Q>, Or<P, R, S>>);
// 		static_assert(And<Or<P, Q>, Or<P, R>> > And<Or<P, Q, S>, Or<P, R>>);
//
//
// 		static_assert(Or<P, Q> < Or<P, And<Q, R>>);
// 		static_assert(Or<P, R> < Or<P, And<Q, R>>);
// 		static_assert(Or<P, Q> < And<Q,R>);
// 		static_assert(Or<P, Q> < P);
// 		static_assert(Or<P, R> < And<Q, R>);
// 		static_assert(Or<P, R> < P);
// 		static_assert(And<Or<P, Q>, Or<P, R>> == Or<P, And<Q, R>>);
// 		static_assert(Or<R, Q> < And<P, Or<Q, R>>);
// 		static_assert(And<P, Or<Q, R>> > Or<R, Q>);
//
// 		static_assert(And<Or<P, Q>, Or<P, R>> == Or<P, And<Q, R>>);
// 		static_assert(Or<P, And<Q, R>> == And<Or<P, Q>, Or<P, R>>);
// 		static_assert(And<Or<P, Q>, Or<P, R>> < Or<And<P, R>, And<Q, R>>);
// 		static_assert(Or<And<P, R>, And<Q, R>> > And<Or<P, Q>, Or<P, R>>);
//
// 		static_assert(Or<P, Q> < P);
// 		static_assert(Or<P, Q> < Q);
// 		static_assert(Or<P, Q> > Or<P, Q, R>);
// 		static_assert(Or<P, Q> > Or<P, R, Q>);
// 		static_assert(Or<P, Q> > Or<Q, P, R>);
// 		static_assert(Or<P, Q> > Or<Q, R, P>);
// 		static_assert(Or<P, Q> > Or<R, P, Q>);
// 		static_assert(Or<P, Q> > Or<R, Q, P>);
// 		static_assert(Or<P, Q> < Or<P, And<Q, R>>);
// 		static_assert(Or<P, Q> < Or<And<Q, R>, P>);
// 		static_assert(Or<P, Q> < Or<And<P, R>, And<Q, S>>);
// 		static_assert(Or<P, Q> < Or<And<Q, S>, And<P, R>>);
//
// 		static_assert(Or<P, Q> < And<P, Q>);
// 		static_assert(Or<P, Q> < And<Q, P>);
// 		static_assert(Or<P, Q> < And<P, Q, R>);
// 		static_assert(Or<P, Q> < And<P, R, Q>);
// 		static_assert(Or<P, Q> < And<Q, P, R>);
// 		static_assert(Or<P, Q> < And<Q, R, P>);
// 		static_assert(Or<P, Q> < And<R, P, Q>);
// 		static_assert(Or<P, Q> < And<R, Q, P>);
// 		static_assert(Or<P, Q> < And<P, Or<R, S>>);
// 		static_assert(Or<P, Q> < And<Or<R, S>, P>);
// 		static_assert(Or<P, Q> < And<Or<P, Q>, Or<R, S>>);
// 		static_assert(Or<P, Q> < And<Or<R, S>, Or<P, Q>>);
// 		static_assert(Or<P, Q> > And<Or<P, Q, R>, Or<P, Q, S>>);
// 		static_assert(Or<P, Q> > And<Or<P, Q, S>, Or<P, Q, R>>);
//
// 		static_assert(Or<P, Q, R> < P);
// 		static_assert(Or<P, Q, R> < Q);
// 		static_assert(Or<P, Q, R> < R);
// 		static_assert(Or<P, Q, R> < Or<P, Q>);
// 		static_assert(Or<P, Q, R> < Or<P, R>);
// 		static_assert(Or<P, Q, R> < Or<Q, P>);
// 		static_assert(Or<P, Q, R> < Or<Q, R>);
// 		static_assert(Or<P, Q, R> < Or<R, P>);
// 		static_assert(Or<P, Q, R> < Or<R, Q>);
// 		static_assert(Or<P, Q, R> < Or<P, And<Q, R>>);
// 		static_assert(Or<P, Q, R> < Or<And<Q, R>, P>);
// 		static_assert(Or<P, Q, R> < Or<P, Q, And<R, S>>);
// 		static_assert(Or<P, Q, R> < Or<P, And<R, S>, Q>);
// 		static_assert(Or<P, Q, R> < Or<And<R, S>, P, Q>);
// 		static_assert(Or<P, Q, R> < Or<And<P, S>, And<Q, S>, And<R, S>>);
//
// 		static_assert(Or<P, And<Q, R>> < P);
// 		static_assert(Or<P, And<Q, R>> <=> Q == Unordered);
// 		static_assert(Or<P, And<Q, R>> <=> R == Unordered);
// 		static_assert(Or<P, And<Q, R>> > Or<P, Q>);
// 		static_assert(Or<P, And<Q, R>> > Or<P, R>);
// 		static_assert(Or<P, And<Q, R>> == Or<P, And<Q, R>>);
// 		static_assert(Or<P, And<Q, R>> == Or<P, And<R, Q>>);
// 		static_assert(Or<P, And<Q, R>> == Or<And<Q, R>, P>);
// 		static_assert(Or<P, And<Q, R>> == Or<And<R, Q>, P>);
// 		static_assert(Or<P, And<Q, R>> <=> Or<P, And<Q, S>> == Unordered);
// 		static_assert(Or<P, And<Q, R>> <=> Or<P, And<S, Q>> == Unordered);
// 		static_assert(Or<P, And<Q, R>> <=> Or<And<Q, S>, P> == Unordered);
// 		static_assert(Or<P, And<Q, R>> <=> Or<And<S, Q>, P> == Unordered);
// 		static_assert(Or<P, And<Q, R>> < Or<And<P, R>, And<Q, R>>);
// 		static_assert(Or<P, And<Q, R>> < Or<And<Q, R>, And<P, R>>);
//
// 		static_assert(Or<And<P, Q>, And<P, R>> > P);
// 		static_assert(Or<And<P, Q>, And<P, R>> <=> Q == Unordered);
// 		static_assert(Or<And<P, Q>, And<P, R>> <=> R == Unordered);
// 		static_assert(Or<And<P, Q>, And<P, R>> > Or<P, R>);
// 		static_assert(Or<And<P, Q>, And<P, R>> > Or<P, Q>);
// 		static_assert(Or<And<P, Q>, And<P, R>> > Or<Q, R>);
// 		static_assert(Or<And<P, Q>, And<P, R>> > Or<P, Q, R>);
// 		static_assert(Or<And<P, Q>, And<P, R>> > Or<P, And<Q, R>>);
// 		static_assert(Or<And<P, Q>, And<P, R>> > Or<Q, And<P, R>>);
// 		static_assert(Or<And<P, Q>, And<P, R>> == Or<And<P, Q>, And<P, R>>);
// 		static_assert(Or<And<P, Q>, And<P, R>> == Or<And<P, Q>, And<R, P>>);
// 		static_assert(Or<And<P, Q>, And<P, R>> == Or<And<Q, P>, And<P, R>>);
// 		static_assert(Or<And<P, Q>, And<P, R>> == Or<And<Q, P>, And<R, P>>);
// 		static_assert(Or<And<P, Q>, And<P, R>> == Or<And<P, R>, And<P, Q>>);
// 		static_assert(Or<And<P, Q>, And<P, R>> == Or<And<P, R>, And<Q, P>>);
// 		static_assert(Or<And<P, Q>, And<P, R>> == Or<And<R, P>, And<P, Q>>);
// 		static_assert(Or<And<P, Q>, And<P, R>> == Or<And<R, P>, And<Q, P>>);
// 		static_assert(Or<And<P, Q>, And<P, R>> < Or<And<P, Q>, And<P, R, S>>);
// 		static_assert(Or<And<P, Q>, And<P, R>> < Or<And<P, Q, S>, And<P, R>>);
//
// 		template<ProtoTerm auto t_vExpected, ProtoTerm auto t_vTerm>
// 		static bool constexpr
// 			ExpectType
// 		=	std::is_same_v<decltype(t_vExpected), decltype(t_vTerm)>
// 		;
//
// 		static_assert( ExpectType<True,  (True)>);
// 		static_assert( ExpectType<True, +(True)>);
// 		static_assert( ExpectType<True, *(True)>);
// 		static_assert( ExpectType<True,  (not False)>);
// 		static_assert( ExpectType<True, +(not False)>);
// 		static_assert( ExpectType<True, *(not False)>);
// 		static_assert( ExpectType<True,  (True and True)>);
// 		static_assert( ExpectType<True, +(True and True)>);
// 		static_assert( ExpectType<True, *(True and True)>);
// 		static_assert( ExpectType<True,  (True * True)>);
// 		static_assert( ExpectType<True, +(True * True)>);
// 		static_assert( ExpectType<True, *(True * True)>);
// 		static_assert( ExpectType<True,  (True or True)>);
// 		static_assert( ExpectType<True, +(True or True)>);
// 		static_assert( ExpectType<True, *(True or True)>);
// 		static_assert( ExpectType<True,  (True or False)>);
// 		static_assert( ExpectType<True, +(True or False)>);
// 		static_assert( ExpectType<True, *(True or False)>);
// 		static_assert( ExpectType<True,  (True or P)>);
// 		static_assert( ExpectType<True, +(True or P)>);
// 		static_assert( ExpectType<True, *(True or P)>);
// 		static_assert( ExpectType<True,  (False or True)>);
// 		static_assert( ExpectType<True, +(False or True)>);
// 		static_assert( ExpectType<True, *(False or True)>);
// 		static_assert( ExpectType<True,  (P or True)>);
// 		static_assert( ExpectType<True, +(P or True)>);
// 		static_assert( ExpectType<True, *(P or True)>);
// 		static_assert( ExpectType<True,  (True + True)>);
// 		static_assert( ExpectType<True, +(True + True)>);
// 		static_assert( ExpectType<True, *(True + True)>);
// 		static_assert( ExpectType<True,  (True + False)>);
// 		static_assert( ExpectType<True, +(True + False)>);
// 		static_assert( ExpectType<True, *(True + False)>);
// 		static_assert( ExpectType<True,  (True + P)>);
// 		static_assert( ExpectType<True, +(True + P)>);
// 		static_assert( ExpectType<True, *(True + P)>);
// 		static_assert( ExpectType<True,  (False + True)>);
// 		static_assert( ExpectType<True, +(False + True)>);
// 		static_assert( ExpectType<True, *(False + True)>);
// 		static_assert( ExpectType<True,  (P + True)>);
// 		static_assert( ExpectType<True, +(P + True)>);
// 		static_assert( ExpectType<True, *(P + True)>);
//
// 		static_assert( ExpectType<False,  (False)>);
// 		static_assert( ExpectType<False, +(False)>);
// 		static_assert( ExpectType<False, *(False)>);
// 		static_assert( ExpectType<False,  (not True)>);
// 		static_assert( ExpectType<False, +(not True)>);
// 		static_assert( ExpectType<False, *(not True)>);
// 		static_assert( ExpectType<False,  (True and False)>);
// 		static_assert( ExpectType<False, +(True and False)>);
// 		static_assert( ExpectType<False, *(True and False)>);
// 		static_assert( ExpectType<False,  (False and True)>);
// 		static_assert( ExpectType<False, +(False and True)>);
// 		static_assert( ExpectType<False, *(False and True)>);
// 		static_assert( ExpectType<False,  (False and False)>);
// 		static_assert( ExpectType<False, +(False and False)>);
// 		static_assert( ExpectType<False, *(False and False)>);
// 		static_assert( ExpectType<False,  (False and P)>);
// 		static_assert( ExpectType<False, +(False and P)>);
// 		static_assert( ExpectType<False, *(False and P)>);
// 		static_assert( ExpectType<False,  (P and False)>);
// 		static_assert( ExpectType<False, +(P and False)>);
// 		static_assert( ExpectType<False, *(P and False)>);
// 		static_assert( ExpectType<False,  (True * False)>);
// 		static_assert( ExpectType<False, +(True * False)>);
// 		static_assert( ExpectType<False, *(True * False)>);
// 		static_assert( ExpectType<False,  (False * True)>);
// 		static_assert( ExpectType<False, +(False * True)>);
// 		static_assert( ExpectType<False, *(False * True)>);
// 		static_assert( ExpectType<False,  (False * False)>);
// 		static_assert( ExpectType<False, +(False * False)>);
// 		static_assert( ExpectType<False, *(False * False)>);
// 		static_assert( ExpectType<False,  (False * P)>);
// 		static_assert( ExpectType<False, +(False * P)>);
// 		static_assert( ExpectType<False, *(False * P)>);
// 		static_assert( ExpectType<False,  (P * False)>);
// 		static_assert( ExpectType<False, +(P * False)>);
// 		static_assert( ExpectType<False, *(P * False)>);
// 		static_assert( ExpectType<False,  (False or False)>);
// 		static_assert( ExpectType<False, +(False or False)>);
// 		static_assert( ExpectType<False, *(False or False)>);
// 		static_assert( ExpectType<False,  (False + False)>);
// 		static_assert( ExpectType<False, +(False + False)>);
// 		static_assert( ExpectType<False, *(False + False)>);
//
// 		static_assert( ExpectType<Atom<P>, +(P)>);
// 		static_assert( ExpectType<Atom<P>, *(P)>);
// 		static_assert( ExpectType<Atom<P>,  (not not P)>);
// 		static_assert( ExpectType<Atom<P>, +(not not P)>);
// 		static_assert( ExpectType<Atom<P>, *(not not P)>);
// 		static_assert( ExpectType<Atom<P>,  (True and P)>);
// 		static_assert( ExpectType<Atom<P>, +(True and P)>);
// 		static_assert( ExpectType<Atom<P>, *(True and P)>);
// 		static_assert( ExpectType<Atom<P>,  (P and True)>);
// 		static_assert( ExpectType<Atom<P>, +(P and True)>);
// 		static_assert( ExpectType<Atom<P>, *(P and True)>);
// 		static_assert( ExpectType<Atom<P>,  (True * P)>);
// 		static_assert( ExpectType<Atom<P>, +(True * P)>);
// 		static_assert( ExpectType<Atom<P>, *(True * P)>);
// 		static_assert( ExpectType<Atom<P>,  (P * True)>);
// 		static_assert( ExpectType<Atom<P>, +(P * True)>);
// 		static_assert( ExpectType<Atom<P>, *(P * True)>);
// 		static_assert( ExpectType<Atom<P>,  (False or P)>);
// 		static_assert( ExpectType<Atom<P>, +(False or P)>);
// 		static_assert( ExpectType<Atom<P>, *(False or P)>);
// 		static_assert( ExpectType<Atom<P>,  (P or False)>);
// 		static_assert( ExpectType<Atom<P>, +(P or False)>);
// 		static_assert( ExpectType<Atom<P>, *(P or False)>);
// 		static_assert( ExpectType<Atom<P>,  (False + P)>);
// 		static_assert( ExpectType<Atom<P>, +(False + P)>);
// 		static_assert( ExpectType<Atom<P>, *(False + P)>);
// 		static_assert( ExpectType<Atom<P>,  (P + False)>);
// 		static_assert( ExpectType<Atom<P>, +(P + False)>);
// 		static_assert( ExpectType<Atom<P>, *(P + False)>);
//
// 		static_assert( ExpectType<Not<P>,  (not P)>);
// 		static_assert( ExpectType<Not<P>, +(not P)>);
// 		static_assert( ExpectType<Not<P>, *(not P)>);
// 		static_assert( ExpectType<Not<P>,  (not not not P)>);
// 		static_assert( ExpectType<Not<P>, +(not not not P)>);
// 		static_assert( ExpectType<Not<P>, *(not not not P)>);
//
// 		static_assert( ExpectType<And<P, Q>,  (P and Q)>);
// 		static_assert( ExpectType<And<P, Q>, +(P and Q)>);
// 		static_assert( ExpectType<And<P, Q>, *(P and Q)>);
// 		static_assert( ExpectType<And<P, Q>,  (P * Q)>);
// 		static_assert( ExpectType<And<P, Q>, +(P * Q)>);
// 		static_assert( ExpectType<And<P, Q>, *(P * Q)>);
//
// 		static_assert( ExpectType<And<P, Q>,  (not (not P or not Q))>);
// 		static_assert( ExpectType<And<P, Q>, +(not (not P or not Q))>);
// 		static_assert( ExpectType<And<P, Q>, *(not (not P or not Q))>);
// 		static_assert( ExpectType<And<P, Q>,  (not (not P + not Q))>);
// 		static_assert( ExpectType<And<P, Q>, +(not (not P + not Q))>);
// 		static_assert( ExpectType<And<P, Q>, *(not (not P + not Q))>);
//
// 		static_assert( ExpectType<And<P, Or<Q, R>>,  (P and (Q or R))>);
// 		static_assert( ExpectType<And<P, Or<Q, R>>, +(P and (Q or R))>);
// 		static_assert(!ExpectType<And<P, Or<Q, R>>, *(P and (Q or R))>);
// 		static_assert( ExpectType<And<P, Or<Q, R>>,  (P and (Q + R))>);
// 		static_assert( ExpectType<And<P, Or<Q, R>>, +(P and (Q + R))>);
// 		static_assert(!ExpectType<And<P, Or<Q, R>>, *(P and (Q + R))>);
// 		static_assert(!ExpectType<And<P, Or<Q, R>>,  (P * (Q and R))>);
// 		static_assert( ExpectType<And<P, Or<Q, R>>, +(P * (Q + R))>);
// 		static_assert(!ExpectType<And<P, Or<Q, R>>, *(P * (Q and R))>);
// 		static_assert(!ExpectType<And<P, Or<Q, R>>,  (P * (Q + R))>);
// 		static_assert( ExpectType<And<P, Or<Q, R>>, +(P * (Q + R))>);
// 		static_assert(!ExpectType<And<P, Or<Q, R>>, *(P * (Q + R))>);
//
// 		static_assert( ExpectType<And<Or<P, Q>, R>,  ((P or Q) and R)>);
// 		static_assert( ExpectType<And<Or<P, Q>, R>, +((P or Q) and R)>);
// 		static_assert(!ExpectType<And<Or<P, Q>, R>, *((P or Q) and R)>);
// 		static_assert( ExpectType<And<Or<P, Q>, R>,  ((P + Q) and R)>);
// 		static_assert( ExpectType<And<Or<P, Q>, R>, +((P + Q) and R)>);
// 		static_assert(!ExpectType<And<Or<P, Q>, R>, *((P + Q) and R)>);
// 		static_assert(!ExpectType<And<Or<P, Q>, R>,  ((P or Q) * R)>);
// 		static_assert( ExpectType<And<Or<P, Q>, R>, +((P or Q) * R)>);
// 		static_assert(!ExpectType<And<Or<P, Q>, R>, *((P or Q) * R)>);
// 		static_assert(!ExpectType<And<Or<P, Q>, R>,  ((P + Q) * R)>);
// 		static_assert( ExpectType<And<Or<P, Q>, R>, +((P + Q) * R)>);
// 		static_assert(!ExpectType<And<Or<P, Q>, R>, *((P + Q) * R)>);
//
// 		static_assert( ExpectType<And<Or<P, Q>, Or<R, S>>,  ((P or Q) and (R or S))>);
// 		static_assert( ExpectType<And<Or<P, Q>, Or<R, S>>, +((P or Q) and (R or S))>);
// 		static_assert(!ExpectType<And<Or<P, Q>, Or<R, S>>, *((P or Q) and (R or S))>);
// 		static_assert( ExpectType<And<Or<P, Q>, Or<R, S>>,  ((P + Q) and (R or S))>);
// 		static_assert( ExpectType<And<Or<P, Q>, Or<R, S>>, +((P + Q) and (R or S))>);
// 		static_assert(!ExpectType<And<Or<P, Q>, Or<R, S>>, *((P + Q) and (R or S))>);
// 		static_assert(!ExpectType<And<Or<P, Q>, Or<R, S>>,  ((P or Q) * (R or S))>);
// 		static_assert( ExpectType<And<Or<P, Q>, Or<R, S>>, +((P or Q) * (R or S))>);
// 		static_assert(!ExpectType<And<Or<P, Q>, Or<R, S>>, *((P or Q) * (R or S))>);
// 		static_assert(!ExpectType<And<Or<P, Q>, Or<R, S>>,  ((P + Q) * (R or S))>);
// 		static_assert( ExpectType<And<Or<P, Q>, Or<R, S>>, +((P + Q) * (R or S))>);
// 		static_assert(!ExpectType<And<Or<P, Q>, Or<R, S>>, *((P + Q) * (R or S))>);
//
// 		static_assert( ExpectType<Or<P, Q>,  (P or Q)>);
// 		static_assert( ExpectType<Or<P, Q>, +(P or Q)>);
// 		static_assert( ExpectType<Or<P, Q>, *(P or Q)>);
// 		static_assert( ExpectType<Or<P, Q>,  (P + Q)>);
// 		static_assert( ExpectType<Or<P, Q>, +(P + Q)>);
// 		static_assert( ExpectType<Or<P, Q>, *(P + Q)>);
// 		static_assert( ExpectType<Or<P, Q>,  (not (not P and not Q))>);
// 		static_assert( ExpectType<Or<P, Q>, +(not (not P and not Q))>);
// 		static_assert( ExpectType<Or<P, Q>, *(not (not P and not Q))>);
// 		static_assert( ExpectType<Or<P, Q>,  (not (not P * not Q))>);
// 		static_assert( ExpectType<Or<P, Q>, +(not (not P * not Q))>);
// 		static_assert( ExpectType<Or<P, Q>, *(not (not P * not Q))>);
//
// 		static_assert( ExpectType<Or<P, And<Q, R>>,  (P or (Q and R))>);
// 		static_assert(!ExpectType<Or<P, And<Q, R>>, +(P or (Q and R))>);
// 		static_assert( ExpectType<Or<P, And<Q, R>>, *(P or (Q and R))>);
// 		static_assert( ExpectType<Or<P, And<Q, R>>,  (P or (Q * R))>);
// 		static_assert(!ExpectType<Or<P, And<Q, R>>, +(P or (Q * R))>);
// 		static_assert( ExpectType<Or<P, And<Q, R>>, *(P or (Q * R))>);
// 		static_assert(!ExpectType<Or<P, And<Q, R>>,  (P + (Q and R))>);
// 		static_assert(!ExpectType<Or<P, And<Q, R>>, +(P + (Q and R))>);
// 		static_assert( ExpectType<Or<P, And<Q, R>>, *(P + (Q and R))>);
// 		static_assert(!ExpectType<Or<P, And<Q, R>>,  (P + (Q * R))>);
// 		static_assert(!ExpectType<Or<P, And<Q, R>>, +(P + (Q * R))>);
// 		static_assert( ExpectType<Or<P, And<Q, R>>, *(P + (Q * R))>);
//
// 		static_assert( ExpectType<Or<And<P, Q>, R>,  ((P and Q) or R)>);
// 		static_assert(!ExpectType<Or<And<P, Q>, R>, +((P and Q) or R)>);
// 		static_assert( ExpectType<Or<And<P, Q>, R>, *((P and Q) or R)>);
// 		static_assert( ExpectType<Or<And<P, Q>, R>,  ((P * Q) or R)>);
// 		static_assert(!ExpectType<Or<And<P, Q>, R>, +((P * Q) or R)>);
// 		static_assert( ExpectType<Or<And<P, Q>, R>, *((P * Q) or R)>);
// 		static_assert(!ExpectType<Or<And<P, Q>, R>,  ((P and Q) + R)>);
// 		static_assert(!ExpectType<Or<And<P, Q>, R>, +((P and Q) + R)>);
// 		static_assert( ExpectType<Or<And<P, Q>, R>, *((P and Q) + R)>);
// 		static_assert(!ExpectType<Or<And<P, Q>, R>,  ((P * Q) + R)>);
// 		static_assert(!ExpectType<Or<And<P, Q>, R>, +((P * Q) + R)>);
// 		static_assert( ExpectType<Or<And<P, Q>, R>, *((P * Q) + R)>);
//
// 		static_assert( ExpectType<Or<And<P, Q>, And<R, S>>,  ((P and Q) or (R and S))>);
// 		static_assert(!ExpectType<Or<And<P, Q>, And<R, S>>, +((P and Q) or (R and S))>);
// 		static_assert( ExpectType<Or<And<P, Q>, And<R, S>>, *((P and Q) or (R and S))>);
// 		static_assert( ExpectType<Or<And<P, Q>, And<R, S>>,  ((P * Q) or (R and S))>);
// 		static_assert(!ExpectType<Or<And<P, Q>, And<R, S>>, +((P * Q) or (R and S))>);
// 		static_assert( ExpectType<Or<And<P, Q>, And<R, S>>, *((P * Q) or (R and S))>);
// 		static_assert(!ExpectType<Or<And<P, Q>, And<R, S>>,  ((P and Q) + (R and S))>);
// 		static_assert(!ExpectType<Or<And<P, Q>, And<R, S>>, +((P and Q) + (R and S))>);
// 		static_assert( ExpectType<Or<And<P, Q>, And<R, S>>, *((P and Q) + (R and S))>);
// 		static_assert(!ExpectType<Or<And<P, Q>, And<R, S>>,  ((P * Q) + (R and S))>);
// 		static_assert(!ExpectType<Or<And<P, Q>, And<R, S>>, +((P * Q) + (R and S))>);
// 		static_assert( ExpectType<Or<And<P, Q>, And<R, S>>, *((P * Q) + (R and S))>);
//
//
//
// 		static_assert( ExpectType<Or<P, Q>, P or Q>);
// 		static_assert( ExpectType<Or<P, Q>, +P or Q>);
// 		static_assert( ExpectType<Or<P, Q>, *P or Q>);
// 		static_assert( ExpectType<Or<P, Q>, P + Q>);
// 		static_assert( ExpectType<Or<P, Q>, +P + Q>);
// 		static_assert( ExpectType<Or<P, Q>, *P + Q>);
// 		static_assert( ExpectType<Or<not P, Q>, not (P and not Q)>);
// 		static_assert( ExpectType<Or<not P, Q>, +not (P and not Q)>);
// 		static_assert( ExpectType<Or<not P, Q>, *not (P and not Q)>);
// 		static_assert( ExpectType<Or<not P, Q>, not (P * not Q)>);
// 		static_assert( ExpectType<Or<not P, Q>, +not (P * not Q)>);
// 		static_assert( ExpectType<Or<not P, Q>, *not (P * not Q)>);
//
// 		/// True
// 		static_assert(True == True);
// 		static_assert(True == not not True, "Double negation law violated.");
// 		static_assert(True < False);
// 		static_assert(True == not False);
// 		static_assert(True < P);
// 		static_assert(True < (P and Q));
// 		static_assert(True < (P and (Q or R)));
// 		static_assert(True < ((P or Q) and R));
// 		static_assert(True < (P or Q));
//
// 		static_assert((True and True) == True);
// 		static_assert((True and False ) == False);
// 		static_assert((True and P) == P, "Identity law violated.");
// 		static_assert((True or True) == True);
// 		static_assert((True or False ) == True);
// 		static_assert((True or P) == True, "Domination law violated.");
//
// 		/// False
// 		static_assert(False == not True);
// 		static_assert(False == not not False, "Double negation law violated.");
// 		static_assert((False and True) == False);
// 		static_assert((False and False ) == False);
// 		static_assert((False and P) == False, "Domination law violated.");
//  		static_assert((False or True) == True);
// 		static_assert((False or False ) == False);
// 		static_assert((False or P) == P, "Identity law violated.");
//
// 		/// Atom
// 		static_assert(P != not P);
// 		static_assert(P == not not P, "Double negation law violated.");
// 		static_assert((P and False) == False, "Domination law violated.");
// 		static_assert((P and (not P or Q)) == (P and Q));
// 		static_assert((P and True) == P, "Identity law violated.");
// 		static_assert((P and P) == P, "Idemptotent law violated");
// 		static_assert((P and Q) == (Q and P), "Commutative law violated.");
// 		static_assert((P and not P) == False);
// 		static_assert(((P and Q) and not P) == False);
// 		static_assert((P and (not P and Q)) == False);
// 		static_assert((P or (not P or Q)) == True);
// 		static_assert((P or (not P and Q)) == (Q or P));
// 		static_assert((P or False) == P, "Identity law violated.");
// 		static_assert((P or True) == True, "Domination law violated.");
// 		static_assert((P or P) == P, "Idemptotent law violated");
// 		static_assert((P or Q) == (Q or P), "Commutative law violated.");
//
// 		static_assert((not P or (P or Q)) == True);
// 		static_assert((not P or (P and Q)) == (Q or not P));
// 		static_assert((not P and (P or Q)) == (Q and not P));
// 		static_assert((not P and (P and Q)) == False);
// 		static_assert(((not P and Q) and P) == False);
//
// 		/// Conjunction
// 		static_assert(((P and Q) or not P) == (Q or not P));
// 		static_assert((P and Q) != not (P and Q));
// 		static_assert((P and Q) != not (Q and P));
// 		static_assert(((not P and Q) or P) == (Q or P));
// 		static_assert((P and Q) == not (not P or not Q), "De Morgan's law violated.");
// 		static_assert((P and Q) == not (not Q or not P), "De Morgan's law violated.");
// 		static_assert((P and not Q) == not (not P or Q), "De Morgan's law violated.");
// 		static_assert((P and not Q) == not (Q or not P), "De Morgan's law violated.");
// 		static_assert((not P and Q) == not (P or not Q), "De Morgan's law violated.");
// 		static_assert((not P and Q) == not (not Q or P), "De Morgan's law violated.");
// 		static_assert((not P and not Q) == not (P or Q), "De Morgan's law violated.");
// 		static_assert((not P and not Q) == not (Q or P), "De Morgan's law violated.");
// 		static_assert((P and Q) == not not (P and Q), "Double negation law violated.");
// 		static_assert((P and Q) == not not (Q and P), "Double negation law violated.");
// 		static_assert(((P and Q) and R) == (P and (Q and R)), "Associative law violated.");
// 		static_assert(((P and Q) or P) == P, "Absorption law violated.");
// 		static_assert(((Q and P) or P) == P, "Absorption law violated.");
//
// 		/// Disjunction
// 		static_assert((P or not P) == True);
// 		static_assert(((P or Q) or not P) == True);
// 		static_assert(((P or Q) and not P) == (Q and not P));
// 		static_assert(((not P or Q) or P) == True);
// 		static_assert(((not P or Q) and P) == (Q and P));
// 		static_assert((P or Q) != not (P or Q));
// 		static_assert((P or Q) != not (Q or P));
// 		static_assert(((P or Q) or R) == (P or (Q or R)), "Associative law violated.");
// 		static_assert((P or (P and Q)) == P, "Absorption law violated.");
// 		static_assert((P or (Q and P)) == P, "Absorption law violated.");
//
// 		static_assert((P or Q) == not (not P and not Q), "De Morgan's law violated.");
// 		static_assert((P or Q) == not (not Q and not P), "De Morgan's law violated.");
// 		static_assert((P or not Q) == not (not P and Q), "De Morgan's law violated.");
// 		static_assert((P or not Q) == not (Q and not P), "De Morgan's law violated.");
// 		static_assert((not P or Q) == not (P and not Q), "De Morgan's law violated.");
// 		static_assert((not P or Q) == not (not Q and P), "De Morgan's law violated.");
// 		static_assert((not P or not Q) == not (P and Q), "De Morgan's law violated.");
// 		static_assert((not P or not Q) == not (Q and P), "De Morgan's law violated.");
// 		static_assert((P or Q) == not not (P or Q), "Double negation law violated.");
// 		static_assert((P or Q) == not not (Q or P), "Double negation law violated.");
//
//
// 		static_assert((P or (Q and R)) == ((P or  Q) and (P or  R)), "Distribution law violated.");
// 		static_assert((P or (Q and R)) == ((P or  Q) and (R or  P)), "Distribution law violated.");
// 		static_assert((P or (Q and R)) == ((Q or  P) and (P or  R)), "Distribution law violated.");
// 		static_assert((P or (Q and R)) == ((Q or  P) and (R or  P)), "Distribution law violated.");
//
// 		static_assert((P or (Q and R)) == ((P or  R) and (P or  Q)), "Distribution law violated.");
// 		static_assert((P or (Q and R)) == ((P or  R) and (Q or  P)), "Distribution law violated.");
// 		static_assert((P or (Q and R)) == ((R or  P) and (P or  Q)), "Distribution law violated.");
// 		static_assert((P or (Q and R)) == ((R or  P) and (Q or  P)), "Distribution law violated.");
//
// 		static_assert((P or (R and Q)) == ((P or  Q) and (P or  R)), "Distribution law violated.");
// 		static_assert((P or (R and Q)) == ((P or  Q) and (R or  P)), "Distribution law violated.");
// 		static_assert((P or (R and Q)) == ((Q or  P) and (P or  R)), "Distribution law violated.");
// 		static_assert((P or (R and Q)) == ((Q or  P) and (R or  P)), "Distribution law violated.");
//
// 		static_assert((P or (R and Q)) == ((P or  R) and (P or  Q)), "Distribution law violated.");
// 		static_assert((P or (R and Q)) == ((P or  R) and (Q or  P)), "Distribution law violated.");
// 		static_assert((P or (R and Q)) == ((R or  P) and (P or  Q)), "Distribution law violated.");
// 		static_assert((P or (R and Q)) == ((R or  P) and (Q or  P)), "Distribution law violated.");
//
// 		static_assert(((Q and R) or P) == ((P or  Q) and (P or  R)), "Distribution law violated.");
// 		static_assert(((Q and R) or P) == ((P or  Q) and (R or  P)), "Distribution law violated.");
// 		static_assert(((Q and R) or P) == ((Q or  P) and (P or  R)), "Distribution law violated.");
// 		static_assert(((Q and R) or P) == ((Q or  P) and (R or  P)), "Distribution law violated.");
//
// 		static_assert(((Q and R) or P) == ((P or  R) and (P or  Q)), "Distribution law violated.");
// 		static_assert(((Q and R) or P) == ((P or  R) and (Q or  P)), "Distribution law violated.");
// 		static_assert(((Q and R) or P) == ((R or  P) and (P or  Q)), "Distribution law violated.");
// 		static_assert(((Q and R) or P) == ((R or  P) and (Q or  P)), "Distribution law violated.");
//
// 		static_assert(((R and Q) or P) == ((P or  Q) and (P or  R)), "Distribution law violated.");
// 		static_assert(((R and Q) or P) == ((P or  Q) and (R or  P)), "Distribution law violated.");
// 		static_assert(((R and Q) or P) == ((Q or  P) and (P or  R)), "Distribution law violated.");
// 		static_assert(((R and Q) or P) == ((Q or  P) and (R or  P)), "Distribution law violated.");
//
// 		static_assert(((R and Q) or P) == ((P or  R) and (P or  Q)), "Distribution law violated.");
// 		static_assert(((R and Q) or P) == ((P or  R) and (Q or  P)), "Distribution law violated.");
// 		static_assert(((R and Q) or P) == ((R or  P) and (P or  Q)), "Distribution law violated.");
// 		static_assert(((R and Q) or P) == ((R or  P) and (Q or  P)), "Distribution law violated.");
//
//
//
// 		static_assert((P and (Q or R)) == ((P and  Q) or (P and  R)), "Distribution law violated.");
// 		static_assert((P and (Q or R)) == ((P and  Q) or (R and  P)), "Distribution law violated.");
// 		static_assert((P and (Q or R)) == ((Q and  P) or (P and  R)), "Distribution law violated.");
// 		static_assert((P and (Q or R)) == ((Q and  P) or (R and  P)), "Distribution law violated.");
//
// 		static_assert((P and (Q or R)) == ((P and  R) or (P and  Q)), "Distribution law violated.");
// 		static_assert((P and (Q or R)) == ((P and  R) or (Q and  P)), "Distribution law violated.");
// 		static_assert((P and (Q or R)) == ((R and  P) or (P and  Q)), "Distribution law violated.");
// 		static_assert((P and (Q or R)) == ((R and  P) or (Q and  P)), "Distribution law violated.");
//
// 		static_assert((P and (R or Q)) == ((P and  Q) or (P and  R)), "Distribution law violated.");
// 		static_assert((P and (R or Q)) == ((P and  Q) or (R and  P)), "Distribution law violated.");
// 		static_assert((P and (R or Q)) == ((Q and  P) or (P and  R)), "Distribution law violated.");
// 		static_assert((P and (R or Q)) == ((Q and  P) or (R and  P)), "Distribution law violated.");
//
// 		static_assert((P and (R or Q)) == ((P and  R) or (P and  Q)), "Distribution law violated.");
// 		static_assert((P and (R or Q)) == ((P and  R) or (Q and  P)), "Distribution law violated.");
// 		static_assert((P and (R or Q)) == ((R and  P) or (P and  Q)), "Distribution law violated.");
// 		static_assert((P and (R or Q)) == ((R and  P) or (Q and  P)), "Distribution law violated.");
//
// 		static_assert(((Q or R) and P) == ((P and  Q) or (P and  R)), "Distribution law violated.");
// 		static_assert(((Q or R) and P) == ((P and  Q) or (R and  P)), "Distribution law violated.");
// 		static_assert(((Q or R) and P) == ((Q and  P) or (P and  R)), "Distribution law violated.");
// 		static_assert(((Q or R) and P) == ((Q and  P) or (R and  P)), "Distribution law violated.");
//
// 		static_assert(((Q or R) and P) == ((P and  R) or (P and  Q)), "Distribution law violated.");
// 		static_assert(((Q or R) and P) == ((P and  R) or (Q and  P)), "Distribution law violated.");
// 		static_assert(((Q or R) and P) == ((R and  P) or (P and  Q)), "Distribution law violated.");
// 		static_assert(((Q or R) and P) == ((R and  P) or (Q and  P)), "Distribution law violated.");
//
// 		static_assert(((R or Q) and P) == ((P and  Q) or (P and  R)), "Distribution law violated.");
// 		static_assert(((R or Q) and P) == ((P and  Q) or (R and  P)), "Distribution law violated.");
// 		static_assert(((R or Q) and P) == ((Q and  P) or (P and  R)), "Distribution law violated.");
// 		static_assert(((R or Q) and P) == ((Q and  P) or (R and  P)), "Distribution law violated.");
//
// 		static_assert(((R or Q) and P) == ((P and  R) or (P and  Q)), "Distribution law violated.");
// 		static_assert(((R or Q) and P) == ((P and  R) or (Q and  P)), "Distribution law violated.");
// 		static_assert(((R or Q) and P) == ((R and  P) or (P and  Q)), "Distribution law violated.");
// 		static_assert(((R or Q) and P) == ((R and  P) or (Q and  P)), "Distribution law violated.");
// 	};
// }


