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
			return *i_vLeft >= i_vRight;
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
			or	(	(	(	...
						+	(i_vLeft >= not t_tpDisjunction{})
						)
					<=	1ul
					)
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
			or	(	(not(compl i_vRight >= i_vLeft))
				and	...
				and (t_tpDisjunction::SharesLiteralWith(compl i_vLeft))
				)
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
			return i_vLeft >= +i_vRight;
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
		if	constexpr(i_vRight.Term.IsNested)
			return i_vLeft and +i_vRight;
		else
		if	constexpr(i_vLeft >= i_vRight)
			return i_vLeft;
		else
		if	constexpr
			(	i_vLeft.SharesLiteralWith(i_vRight)
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
			or	(... or (not t_tpConjunction{} >= not i_vLeft))
			or	(	(not(i_vLeft >= compl i_vRight))
				and	...
				and	(t_tpConjunction::SharesLiteralWith(compl i_vLeft))
				)
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
			or	(	(	(	...
						+	(not t_tpConjunction{} >= i_vLeft)
						)
					<=	1ul
					)
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
