module;

#include <type_traits>
#include <compare>

export module Logic;

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
concept
	ProtoConstant
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

class
	TermTag final
{
	template<bool>
	friend class Constant;
	template<ProtoAtom, bool>
	friend class Literal;
	template<ProtoDisjunctionClause...>
	friend class And;
	template<ProtoConjunctionClause...>
	friend class Or;

	constexpr
	(	compl TermTag
	)	()
	=	default;

public:

	bool const
		IsConstant
	:	1
		=	false
	;
	bool const
		IsLiteral
	:	1
		=	IsConstant
	;
	bool const
		IsClause
	:	1
		=	IsLiteral
	;
	bool const
		IsConjunction
	:	1
		=	IsLiteral
	;
	bool const
		IsDisjunction
	:	1
		=	IsLiteral
	;
	bool const
		IsConjunctive
	:	1
		=	IsClause
		or	IsConjunction
	;
	bool const
		IsDisjunctive
	:	1
		=	IsClause
		or	IsDisjunction
	;
	bool const
		IsNested
	:	1
		=	not
			IsClause
	;
};

auto consteval
(	NameTerm
)	(	ProtoTerm auto
			i_vTerm
	)
->	ProtoTerm auto
{	return i_vTerm;	}




template
	<	typename
			t_tTerm
	>
class
	BaseTerm
{
	template<bool>
	friend class Constant;
	template<ProtoAtom, bool>
	friend class Literal;
	template<ProtoDisjunctionClause...>
	friend class And;
	template<ProtoConjunctionClause...>
	friend class Or;

	constexpr
	(	BaseTerm
	)	()
	=	default
	;

	friend auto consteval
	(	operator ==
	)	(	t_tTerm
		,	t_tTerm
		)
	->	bool
	{	return true;	}

	friend auto consteval
	(	operator >=
	)	(	t_tTerm
		,	t_tTerm
		)
	->	bool
	{	return true;	}

	friend auto consteval
	(	operator<=>
	)	(	t_tTerm
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

	friend auto consteval
	(	operator or
	)	(	t_tTerm
				i_vLeft
		,	ProtoTerm auto
				i_vRight
		)
	->	ProtoConjunctive auto
	{	return not (not i_vLeft and not i_vRight);	}
};

template
	<	bool
			t_bConstant
	>
class
	Constant
:	BaseTerm
	<	Constant
		<	t_bConstant
		>
	>
{
	template<bool>
	friend class Constant;
	template<ProtoAtom, bool>
	friend class Literal;
	template<ProtoDisjunctionClause...>
	friend class And;
	template<ProtoConjunctionClause...>
	friend class Or;

	friend struct
		True
	;
	friend struct
		False
	;

	friend auto consteval
	(	operator ==
	)	(	Constant
		,	ProtoTerm auto
		)
	->	bool
	{	return false;	}

	friend auto consteval
	(	operator >=
	)	(	Constant
				i_vLeft
		,	ProtoTerm auto
				i_vRight
		)
	->	bool
	{
		if	constexpr(i_vRight.Term.IsConstant)
			return not i_vLeft() or i_vRight();
		else
			return not i_vLeft();
	}

	friend auto consteval
	(	operator not
	)	(	Constant
		)
	->	ProtoConstant auto
	{
		return
			NameTerm
			(	Constant
				<	not
					t_bConstant
				>()
			)
		;
	}

	friend auto consteval
	(	operator and
	)	(	Constant
				i_vLeft
		,	ProtoConstant auto
				i_vRight
		)
	->	ProtoConstant auto
	{
		return
			NameTerm
			(	Constant
				<	i_vLeft
					()
				and	i_vRight
					()
				>()
			)
		;
	}

	friend auto consteval
	(	operator *
	)	(	ProtoConjunctionClause auto
				i_vLeft
		,	Constant
				i_vRight
		)
	->	ProtoConjunctionClause auto
	{
		return (i_vLeft and i_vRight);
	}

	friend auto consteval
	(	operator +
	)	(	Constant
				i_vLeft
		,	ProtoConjunctionClause auto
				i_vRight
		)
	->	ProtoConjunctionClause auto
	{
		if	constexpr(t_bConstant)
			return i_vLeft;
		else
			return i_vRight;
	}

	constexpr
	(	Constant
	)	()
	=	default
	;
public:
	static TermTag const constexpr
		Term
	{	.	IsConstant
		=	true
	};

	explicit constexpr
	(	operator bool
	)	()	const
		noexcept
	{	return t_bConstant;	}

	auto constexpr
	(	operator()
	)	(	auto&&
			...
		)	const
		noexcept
	->	bool
	{	return t_bConstant;	}
};

struct
	True final
:	Constant
	<	true
	>
{};

auto consteval inline
(	NameTerm
)	(	Constant<true>
	)
->	True
{	return True();	}

struct
	False final
:	Constant
	<	false
	>
{};

auto consteval inline
(	NameTerm
)	(	Constant<false>
	)
->	False
{	return False();	}

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

template
	<	ProtoAtom
			t_tAtom
	,	bool
			t_bPolarity
	>
class
	Literal
:	BaseTerm
	<	Literal
		<	t_tAtom
		,	t_bPolarity
		>
	>
{
	template<bool>
	friend class Constant;
	template<ProtoAtom, bool>
	friend class Literal;
	template<ProtoDisjunctionClause...>
	friend class And;
	template<ProtoConjunctionClause...>
	friend class Or;

	template
		<	ProtoAtom
		>
	friend struct
		Atom
	;

	template
		<	ProtoAtom
		>
	friend struct
		Not
	;

	friend auto consteval
	(	operator ==
	)	(	Literal
		,	ProtoTerm auto
		)
	->	bool
	{	return false;	}

	friend auto consteval
	(	operator >=
	)	(	Literal
		,	ProtoLiteral auto
				i_vRight
		)
	->	bool
	{
		if	constexpr(i_vRight.Term.IsConstant)
			return i_vRight();
		else
			return false;
	}

	friend auto consteval
	(	operator not
	)	(	Literal
		)
	->	ProtoLiteral auto
	{	return NameTerm(Literal<t_tAtom, not t_bPolarity>());	}

	friend auto consteval
	(	operator and
	)	(	ProtoConstant auto
				i_vLeft
		,	Literal
				i_vRight
		)
	->	ProtoLiteral auto
	{
		if	constexpr(i_vLeft())
			return NameTerm(i_vRight);
		else
			return NameTerm(i_vLeft);
	}

	friend auto consteval
	(	operator and
	)	(	Literal
				i_vLeft
		,	ProtoLiteral auto
				i_vRight
		)
	->	ProtoDisjunctive auto
	{
		if	constexpr(i_vRight.Term.IsConstant)
			return i_vRight and i_vLeft;
		else
		if	constexpr(i_vLeft == i_vRight)
			return NameTerm(i_vLeft);
		else
		if	constexpr(i_vLeft == not i_vRight)
			return False();
		else
		{
			ProtoLiteral auto constexpr vLeft = NameTerm(i_vLeft);
			ProtoLiteral auto constexpr vRight = NameTerm(i_vRight);
			ProtoConjunction auto constexpr vConjunction = And{vLeft, vRight};
			return NameTerm(vConjunction);
		}
	}

	friend auto consteval
	(	operator *
	)	(	ProtoConjunctionClause auto
				i_vLeft
		,	Literal
				i_vRight
		)
	->	ProtoConjunctionClause auto
	{
		return
			(i_vLeft and i_vRight)
		;
	}

	friend auto consteval
	(	operator +
	)	(	Literal
				i_vLeft
		,	ProtoConjunctionClause auto
				i_vRight
		)
	->	ProtoConjunctionClause auto
	{
		if	constexpr(i_vRight >= i_vLeft)
			return i_vLeft;
		else
		if	constexpr(i_vRight >= not i_vLeft)
			return True();
		else
			return i_vRight;
	}
	constexpr
	(	Literal
	)	()
	=	default
	;
public:
	static TermTag const constexpr
		Term
	{	.	IsLiteral
		=	true
	};
};

template
	<	ProtoAtom
			t_tAtom
	>
struct
	Atom
:	Literal
	<	t_tAtom
	,	true
	>
{};

template
	<	ProtoAtom
			t_tAtom
	>
auto consteval
(	NameTerm
)	(	Literal
		<	t_tAtom
		,	true
		>
	)
->	Atom<t_tAtom>
{	return Atom<t_tAtom>();	}

template
	<	ProtoAtom
			t_tAtom
	>
struct
	Not
:	Literal
	<	t_tAtom
	,	false
	>
{};

template
	<	ProtoAtom
			t_tAtom
	>
auto consteval
(	NameTerm
)	(	Literal
		<	t_tAtom
		,	false
		>
	)
->	Not<t_tAtom>
{	return Not<t_tAtom>();	}


template
	<	ProtoDisjunctionClause
		...	t_tpDisjunction
	>
class
	And
:	BaseTerm
	<	And
		<	t_tpDisjunction
			...
		>
	>
{
	template<bool>
	friend class Constant;
	template<ProtoAtom, bool>
	friend class Literal;
	template<ProtoDisjunctionClause...>
	friend class And;
	template<ProtoConjunctionClause...>
	friend class Or;

	friend auto consteval
	(	operator ==
	)	(	And
				i_vLeft
		,	ProtoTerm auto
				i_vRight
		)
	->	bool
	{
		if	constexpr(i_vRight.Term.IsLiteral)
			return false;
		else
			return
				i_vLeft >= i_vRight
			and	i_vRight >= i_vLeft
			;
	}

	friend auto consteval
	(	operator >=
	)	(	ProtoConjunction auto
				i_vLeft
		,	And
				i_vRight
		)
	->	bool
	{
		if	constexpr(i_vLeft.Term.IsDisjunctive)
			return (... and (i_vLeft >= t_tpDisjunction()));
		else
		{
			ProtoDisjunction auto constexpr
				vLeftDisjunction
			=	i_vLeft and True()
			;
			return
				vLeftDisjunction
			>=	i_vRight
			;
		}
	}

	friend auto consteval
	(	operator >=
	)	(	And
				i_vLeft
		,	ProtoDisjunction auto
				i_vRight
		)
	->	bool
	{
		if	constexpr(i_vLeft.Term.IsDisjunctive and i_vRight.Term.IsConjunctive)
			return (... or (t_tpDisjunction() >= i_vRight));
		else
			return True() == (not i_vLeft or i_vRight);
	}

	friend auto consteval
	(	operator not
	)	(	And
		)
	->	ProtoDisjunction auto
	{
		ProtoDisjunction auto constexpr
			vDisjunction
		=	Or{not t_tpDisjunction()...}
		;
		return NameTerm(vDisjunction);
	}

	friend auto consteval
	(	operator and
	)	(	And
				i_vLeft
		,	ProtoLiteral auto
				i_vRight
		)
	->	ProtoDisjunctive auto
	{
		if	constexpr(i_vLeft.Term.IsNested)
			return (t_tpDisjunction() and ... and i_vRight);
		else
		if	constexpr(i_vLeft >= i_vRight)
			return i_vLeft;
		else
		if	constexpr(i_vLeft >= not i_vRight)
			return False();
		else
		{
			ProtoLiteral auto constexpr vRight = NameTerm(i_vRight);
			ProtoConjunction auto constexpr vConjunction = ::And{t_tpDisjunction()..., vRight};
			return NameTerm(vConjunction);
		}
	}

	friend auto consteval
	(	operator and
	)	(	ProtoLiteral auto
				i_vLeft
		,	And
		)
	->	ProtoDisjunctive auto
	{	return (i_vLeft and ... and t_tpDisjunction());	}

	friend auto consteval
	(	operator *
	)	(	ProtoConjunctionClause auto
				i_vLeft
		,	And
		)
	->	ProtoConjunctionClause auto
	{
		return
			(i_vLeft and And())
		;
	}

	friend auto consteval
	(	operator +
	)	(	And
				i_vLeft
		,	ProtoConjunctionClause auto
				i_vRight
		)
	->	ProtoDisjunctive auto
	{
		if	constexpr(i_vRight >= And())
			return i_vLeft;
		else
		if	constexpr(And() >= i_vRight)
			return i_vRight;
		else
			return
				Or(And(), i_vRight.GetBase())
			;
	}

	friend auto consteval
	(	operator and
	)	(	And
				i_vLeft
		,	ProtoTerm auto
				i_vRight
		)
	->	ProtoDisjunctive auto
	{
		if	constexpr(i_vRight.Term.IsDisjunctive)
			return (t_tpDisjunction() and ... and i_vRight);
		else
			return (i_vLeft and True()) and i_vRight;
	}

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
public:

	static TermTag constexpr
		Term
	{	.	IsClause
		=	(... and ProtoLiteral<t_tpDisjunction>)
	,	.	IsConjunction
		=	true
	};


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
	Or
:	BaseTerm
	<	Or
		<	t_tpConjunction
			...
		>
	>
{
	template<bool>
	friend class Constant;
	template<ProtoAtom, bool>
	friend class Literal;
	template<ProtoDisjunctionClause...>
	friend class And;
	template<ProtoConjunctionClause...>
	friend class Or;

	friend auto consteval
	(	operator ==
	)	(	Or
				i_vLeft
		,	ProtoTerm auto
				i_vRight
		)
	->	bool
	{
		if	constexpr(i_vRight.Term.IsLiteral)
			return false;
		else
			return
				i_vLeft >= i_vRight
			and	i_vRight >= i_vLeft
			;
	}

	friend auto consteval
	(	operator >=
	)	(	ProtoLiteral auto
				i_vLeft
		,	Or
		)
	->	bool
	{	return (... or (i_vLeft >= t_tpConjunction{}));	}

	friend auto consteval
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
		{
			ProtoConjunction auto constexpr
				vLeftConjunction
			=	i_vRight or False()
			;
			return
				i_vLeft
			>=	vLeftConjunction
			;
		}

	}

	friend auto consteval
	(	operator not
	)	(	Or
		)
	->	ProtoConjunction auto
	{
		ProtoConjunction auto constexpr
			vConjunction
		=	And{not t_tpConjunction()...}
		;
		return NameTerm(vConjunction);
	}


	friend auto consteval
	(	operator *
	)	(	ProtoConjunctionClause auto
				i_vLeft
		,	Or
		)
	->	ProtoDisjunctive auto
	{
		return
			::Or((i_vLeft and t_tpConjunction())...);
	}

	friend auto consteval
	(	operator +
	)	(	Or
		,	ProtoConjunctionClause auto
				i_vRight
		)
	{
		return ::Or(t_tpConjunction()..., i_vRight);
	}

	friend auto consteval
	(	operator +
	)	(	ProtoDisjunction auto
				i_vLeft
		,	Or
		)
	{
		return (i_vLeft + ... + t_tpConjunction());
	}

	friend auto consteval
	(	Simplify
	)	(	Or
				i_vDisjunction
		)
	{
		return NameTerm(i_vDisjunction);
	}


	friend auto consteval
	(	operator and
	)	(	Or
		,	ProtoDisjunctive auto
				i_vRight
		)
	->	ProtoDisjunctive auto
	{
		return Simplify((... + (t_tpConjunction() * i_vRight)));
	}

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

public:
	static TermTag constexpr
		Term
	{	.	IsClause
		=	(... and ProtoLiteral<t_tpConjunction>)
	,	.	IsDisjunction
		=	true
	};
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

struct A{};
static auto constexpr inline a = Atom<A>();
struct B{};
static auto constexpr inline b = Atom<B>();
struct C{};
static auto constexpr inline c = Atom<C>();

struct D{};
static auto constexpr inline d = Atom<D>();


static auto constexpr inline a_or_b = (a or b) and (c or d);
struct E{};
static auto constexpr inline e = Atom<E>();
struct F{};
static auto constexpr inline f = Atom<F>();
struct G{};
static auto constexpr inline g = Atom<G>();
struct H{};
static auto constexpr inline h = Atom<H>();


static auto constexpr inline e_or_f = (e or f) and (g or h);

static auto constexpr inline result = a_or_b and e_or_f;
