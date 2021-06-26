#pragma once

#include <type_traits>
#include <compare>

namespace
	_
{
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
		<	bool
		>
	struct
		Constant
	;
	
	template
		<	ProtoAtom
		,	bool
		>
	struct
		Atom
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
		TermTag
		final
	{
		template
			<	bool
			>
		friend struct
			Constant
		;
		
		template
			<	ProtoAtom
			,	bool
			>
		friend struct
			Atom
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
			IsFull
			: 1
		=	not
			IsClause
		;
	};
	
	template
		<	bool
				t_bConstant
		>
	struct
		Constant final
	{
		static TermTag const constexpr
			Term
		{	.	IsConstant
			=	true
		};
		
		explicit consteval
		(	operator bool
		)	()	const
		{	return t_bConstant;	}
		
		auto consteval
		(	operator()
		)	(	auto&&
				...
			)
		->	bool
		{	return t_bConstant;	}
		
		friend auto consteval
		(	operator *
		)	(	Constant
			)
		->	ProtoDisjunctive auto
		{	return Constant{};	}
		
		friend auto consteval
		(	operator +
		)	(	Constant
			)
		->	ProtoConjunctive auto
		{	return Constant{};	}
	
		friend auto consteval
		(	operator not
		)	(	Constant
			)
		->	ProtoConstant auto
		{	return Constant<not t_bConstant>{};	}
	
		friend auto consteval
		(	operator compl
		)	(	Constant
			)
		->	ProtoConstant auto
		{	return Constant<not t_bConstant>{};	}
		
		friend auto consteval
		(	operator ==
		)	(	Constant
			,	Constant
			)
		->	bool
		{	return true;	}
		
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
			,	Constant
			)
		->	bool
		{	return true;	}
		
		friend auto consteval
		(	operator >=
		)	(	Constant
			,	Constant<not t_bConstant>
			)
		->	bool
		{	return not t_bConstant;	}
		
		friend auto consteval
		(	operator >=
		)	(	Constant
			,	ProtoLiteral auto
			)
		->	bool
		{	return not t_bConstant;	}
		
		friend auto consteval
		(	operator<=>
		)	(	Constant
			,	Constant
			)
		->	std::partial_ordering
		{	return std::partial_ordering::equivalent;	}
		
		friend auto consteval
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
		
		friend auto consteval
		(	operator and
		)	(	Constant
					i_vLeft
			,	Constant
			)
		->	ProtoConjunctive auto
		{	return i_vLeft;	}
		
		friend auto consteval
		(	operator and
		)	(	Constant
			,	Constant<not t_bConstant>
			)
		->	ProtoConjunctive auto
		{	return Constant<false>{};	}
	
		friend auto consteval
		(	operator *
		)	(	Constant
					i_vLeft
			,	ProtoLiteral auto
					i_vRight
			)
		->	ProtoDisjunctive auto
		{	return i_vLeft and i_vRight;	}
		
		friend auto consteval
		(	operator or
		)	(	Constant
					i_vLeft
			,	Constant
			)
		->	ProtoConjunctive auto
		{	return i_vLeft;	}
		
		friend auto consteval
		(	operator or
		)	(	Constant
			,	Constant<not t_bConstant>
			)
		->	ProtoConjunctive auto
		{	return Constant<true>{};	}
	
		friend auto consteval
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
	
	static_assert(ProtoConstant<True>);
	static_assert(not ProtoAtom<True>);
	
	static_assert(ProtoTerm<False>);
	static_assert(not ProtoAtom<False>);
	
	template
		<	ProtoAtom
				t_tAtom
		,	bool
				t_bState
			=	true
		>
	struct
		Atom
		final
	{
		static TermTag const constexpr
			Term
		{	.	IsLiteral
			=	true
		};
		
		friend auto consteval
		(	operator >=
		)	(	Atom
			,	ProtoLiteral auto
			)
		->	bool
		{	return false;	}
		
		friend auto consteval
		(	operator *
		)	(	Atom
			)
		->	ProtoDisjunctive auto
		{	return Atom{};	}
		
		friend auto consteval
		(	operator +
		)	(	Atom
			)
		->	ProtoConjunctive auto
		{	return Atom{};	}
		
		friend auto consteval
		(	operator not
		)	(	Atom
			)
		->	ProtoLiteral auto
		{	return Atom<t_tAtom, not t_bState>{};	}
		
		friend auto consteval
		(	operator compl
		)	(	Atom
					i_vAtom
			)
		->	ProtoLiteral auto
		{	return not i_vAtom;	}
		
		friend auto consteval
		(	operator ==
		)	(	Atom
			,	Atom
			)
		->	bool
		{	return true;	}
		
		friend auto consteval
		(	operator ==
		)	(	Atom
			,	ProtoTerm auto
			)
		->	bool
		{	return false;	}
		
		friend auto consteval
		(	operator >=
		)	(	Atom
			,	Atom
			)
		->	bool
		{	return true;	}
		
		friend auto consteval
		(	operator >=
		)	(	Atom
			,	ProtoConstant auto
					i_vRight
			)
		->	bool
		{	return i_vRight();	}
	
		friend auto consteval
		(	operator<=>
		)	(	Atom
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
		(	operator and
		)	(	ProtoConstant auto
					i_vLeft
			,	Atom
					i_vRight
			)
		{
			if	constexpr(i_vLeft())
				return i_vRight;
			else
				return i_vLeft;
		}
		
		friend auto consteval
		(	operator and
		)	(	Atom
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
		
		friend auto consteval
		(	operator and
		)	(	Atom
					i_vLeft
			,	Atom
			)
		->	ProtoConjunctive auto
		{	return i_vLeft;	}
		
		friend auto consteval
		(	operator and
		)	(	Atom
			,	Atom<t_tAtom, not t_bState>
			)
		->	ProtoConjunctive auto
		{	return False{};	}
		
		friend auto consteval
		(	operator and
		)	(	Atom
					i_vLeft
			,	ProtoLiteral auto
					i_vRight
			)
		->	ProtoConjunctive auto
		{	return And<decltype(i_vLeft), decltype(i_vRight)>{};	}
	
		friend auto consteval
		(	operator *
		)	(	Atom
					i_vLeft
			,	ProtoLiteral auto
					i_vRight
			)
		->	ProtoDisjunctive auto
		{	return i_vLeft and i_vRight;	}
			
		friend auto consteval
		(	operator or
		)	(	ProtoConstant auto
					i_vLeft
			,	Atom
					i_vRight
			)
		{
			if	constexpr(i_vLeft())
				return i_vLeft;
			else
				return i_vRight;
		}
		
		friend auto consteval
		(	operator or
		)	(	Atom
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
		
		friend auto consteval
		(	operator or
		)	(	Atom
					i_vLeft
			,	Atom
			)
		->	ProtoConjunctive auto
		{	return i_vLeft;	}
		
		friend auto consteval
		(	operator or
		)	(	Atom
			,	Atom<t_tAtom, not t_bState>
			)
		->	ProtoConjunctive auto
		{	return True{};	}
		
		friend auto consteval
		(	operator or
		)	(	Atom
					i_vLeft
			,	ProtoLiteral auto
					i_vRight
			)
		->	ProtoConjunctive auto
		{	return Or<decltype(i_vLeft), decltype(i_vRight)>{};	}
	
		friend auto consteval
		(	operator +
		)	(	Atom
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
		Not
	=	Atom
		<	t_tAtom
		,	false
		>
	;
	
	template
		<	ProtoDisjunctionClause
			...	t_tpDisjunction
		>
	class
		And
		final
	{
	public:
		constexpr
		(	And
		)	()
		=	default;
		
		friend class Test;
		
		static TermTag constexpr
			Term
		{	.	IsClause
			=	(... and ProtoLiteral<t_tpDisjunction>)
		,	.	IsConjunction
			=	true
		};
		
		static_assert
		(	sizeof...(t_tpDisjunction)
		>=	2ul
		,	"Conjunction must contain at least two clauses."
		);
		
		static auto consteval
		(	ContainsOnce
		)	(	ProtoDisjunctive auto
					i_vClause
			)
		->	bool
		{
			return
				1ul
			==	(	...
				+	(	i_vClause
					>=	t_tpDisjunction
						{}
					)
				)
			;
		}
		
		static_assert
		(	(	...
			and ContainsOnce
				(	t_tpDisjunction
					{}
				)
			)
		,	"Conjunction mustn't contain subsuming clauses."
		);
		
		static_assert
		(	(	...
			and not
				ContainsOnce
				(	not
					t_tpDisjunction
					{}
				)
			)
		,	"Conjunction mustn't contain contradictory clauses."
		);
		
		friend auto consteval
		(	operator *
		)	(	And
			)
		->	ProtoDisjunctive auto
		{
			if	constexpr(Term.IsDisjunctive)
				return And{};
			else
				return (... * t_tpDisjunction{});
		}
		
		friend auto consteval
		(	operator +
		)	(	And
			)
		->	ProtoConjunctive auto
		{	return And{};	}
		
		friend auto consteval
		(	operator not
		)	(	And
			)
		->	ProtoDisjunction auto
		{	return Or<decltype(not t_tpDisjunction{})...>{};	}
		
		friend auto consteval
		(	operator compl
		)	(	And
			)
		->	ProtoConjunction auto
		{	return And<decltype(compl t_tpDisjunction{})...>{};	}
		
		friend auto consteval
		(	operator ==
		)	(	And
			,	And
			)
		->	bool
		{	return true;	}
		
		friend auto consteval
		(	operator ==
		)	(	And
			,	ProtoLiteral auto
			)
		->	bool
		{	return false;	}
		
		friend auto consteval
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
	
		friend auto consteval
		(	operator >=
		)	(	And
			,	And
			)
		->	bool
		{	return true;	}
		
		friend auto consteval
		(	operator >=
		)	(	ProtoConjunction auto
					i_vLeft
			,	And
					i_vRight
			)
		->	bool
		{	
			if	constexpr(ProtoDisjunctive<decltype(i_vLeft)>)
				return (... and (i_vLeft >= t_tpDisjunction{}));
			else
				return *i_vLeft >= i_vRight;
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
			if	constexpr
				(	ProtoLiteral<decltype(i_vRight)>
				or	(	ProtoDisjunctive<decltype(i_vLeft)>
					and	ProtoConjunctive<decltype(i_vRight)>
					)
				)
				return (... or (t_tpDisjunction{} >= i_vRight));
			else
				return *i_vLeft >= +i_vRight;
		}
	
		friend auto consteval
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

		friend auto consteval
		(	operator and
		)	(	ProtoTerm auto
					i_vLeft
			,	And
			)
		->	ProtoConjunctive auto
		{	return (i_vLeft and ... and t_tpDisjunction{});	}
		
		friend auto consteval
		(	operator and
		)	(	And
					i_vLeft
			,	ProtoDisjunction auto
					i_vRight
			)
		->	ProtoConjunctive auto
		{
			if	constexpr(not ProtoConjunctive<decltype(i_vRight)>)
				return i_vLeft and +i_vRight;
			else
			if	constexpr(i_vLeft >= i_vRight)
				return i_vLeft;
			else
			if	constexpr
				(	(	...
					or	(	i_vRight >= t_tpDisjunction{}
						or	not i_vRight >= t_tpDisjunction{}
						)
					)
				)
				return (... and (t_tpDisjunction{} and i_vRight));
			else
				return And<t_tpDisjunction..., decltype(i_vRight)>{};
		}
	
		friend auto consteval
		(	operator *
		)	(	ProtoTerm auto
					i_vLeft
			,	And
			)
		->	ProtoDisjunctive auto
		{	return (i_vLeft * ... * t_tpDisjunction{});	}
		
		friend auto consteval
		(	operator *
		)	(	And
					i_vLeft
			,	ProtoLiteral auto
					i_vRight
			)
		->	ProtoDisjunctive auto
		{
			if	constexpr(not ProtoDisjunctive<decltype(i_vLeft)>)
				return (t_tpDisjunction{} * ... * i_vRight);
			else
				return i_vLeft and i_vRight;
		}
	
		friend auto consteval
		(	operator or
		)	(	ProtoConjunction auto
					i_vLeft
			,	And
					i_vRight
			)
		->	ProtoDisjunctive auto
		{
			if	constexpr
				(	not ProtoDisjunctive<decltype(i_vLeft)>
				or	not ProtoDisjunctive<decltype(i_vRight)>
				or	i_vRight >= not i_vLeft
				or	i_vLeft >= i_vRight
				or	i_vLeft >= not i_vRight
				)
				return (... * (i_vLeft or t_tpDisjunction{}));
			else
			if	constexpr(i_vRight >= i_vLeft)
				return i_vLeft;
			else
				return Or<decltype(i_vLeft), decltype(i_vRight)>{};
		}

		friend auto consteval
		(	operator or
		)	(	And
					i_vLeft
			,	ProtoLiteral auto
					i_vRight
			)
		->	ProtoDisjunctive auto
		{
			if	constexpr
				(	not ProtoDisjunctive<decltype(i_vLeft)>
				or	i_vLeft >= not i_vRight
				)
				return (... * (t_tpDisjunction{} or i_vRight));
			else
			if	constexpr(i_vLeft >= i_vRight)
				return i_vRight;
			else
				return Or<decltype(i_vLeft), decltype(i_vRight)>{};
		}
		
		friend auto consteval
		(	operator +
		)	(	ProtoTerm auto
					i_vLeft
			,	And
			)
		->	ProtoConjunctive auto
		{	return (... and (i_vLeft + t_tpDisjunction{}));	}
		
		friend auto consteval
		(	operator +
		)	(	And
			,	ProtoLiteral auto
					i_vRight
			)
		->	ProtoConjunctive auto
		{	return (... and (t_tpDisjunction{} + i_vRight));	}
	};
	
	template
		<	ProtoConjunctionClause
			...	t_tpConjunction
		>
	class
		Or
		final
	{
	public:
		constexpr
		(	Or
		)	()
		=	default;
		
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
		
		static auto consteval
		(	ContainsOnce
		)	(	ProtoConjunctive auto
					i_vClause
			)
		->	bool
		{
			return
				1ul
			==	(	...
				+	(	t_tpConjunction
						{}
					>=	i_vClause
					)
				)
			;
		}
		
		static_assert
		(	(	...
			and ContainsOnce
				(	t_tpConjunction
					{}
				)
			)
		,	"Disjunction mustn't contain subsuming clauses."
		);
		
		static_assert
		(	(	...
			and not
				ContainsOnce
				(	not
					t_tpConjunction
					{}
				)
			)
		,	"Disjunction mustn't contain contradictory clauses."
		);
		
		friend auto consteval
		(	operator *
		)	(	Or
			)
		->	ProtoDisjunctive auto
		{	return Or{};	}
		
		friend auto consteval
		(	operator +
		)	(	Or
			)
		->	ProtoConjunctive auto
		{
			if	constexpr(Term.IsConjunctive)
				return Or{};
			else
				return (... + t_tpConjunction{});
		}

		friend auto consteval
		(	operator not
		)	(	Or
			)
		->	ProtoConjunction auto
		{	return And<decltype(not t_tpConjunction{})...>{};	}

		friend auto consteval
		(	operator compl
		)	(	Or
			)
		->	ProtoDisjunction auto
		{	return Or<decltype(compl t_tpConjunction{})...>{};	}
		
		friend auto consteval
		(	operator ==
		)	(	Or
			,	Or
			)
		->	bool
		{	return true;	}
		
		friend auto consteval
		(	operator ==
		)	(	Or
			,	ProtoLiteral auto
			)
		->	bool
		{	return false;	}
		
		friend auto consteval
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
	
		friend auto consteval
		(	operator >=
		)	(	Or
			,	Or
			)
		->	bool
		{	return true;	}
	
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
			if	constexpr(ProtoConjunctive<decltype(i_vRight)>)
				return (... and (t_tpConjunction{} >= i_vRight));
			else
				return i_vLeft >= +i_vRight;
		}
	
		friend auto consteval
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
		
		friend auto consteval
		(	operator and
		)	(	ProtoDisjunction auto
					i_vLeft
			,	Or
					i_vRight
			)
		->	ProtoConjunctive auto
		{
			if	constexpr
				(	not ProtoConjunctive<decltype(i_vLeft)>
					or	not ProtoConjunctive<decltype(i_vRight)>
					or	not i_vLeft >= i_vRight
					or	i_vRight >= i_vLeft
					or	not i_vRight >= i_vLeft
				)
				return (... + (i_vLeft and t_tpConjunction{}));
			else
			if	constexpr(i_vLeft >= i_vRight)
				return i_vLeft;
			else
				return And<decltype(i_vLeft), decltype(i_vRight)>{};
		}
	
		friend auto consteval
		(	operator and
		)	(	Or
					i_vLeft
			,	ProtoLiteral auto
					i_vRight
			)
		->	ProtoConjunctive auto
		{
			if	constexpr
				(	not ProtoConjunctive<decltype(i_vLeft)>
				or	not i_vRight >= i_vLeft
				)
				return (... + (t_tpConjunction{} and i_vRight));
			else
			if	constexpr(i_vRight >= i_vLeft)
				return i_vRight;
			else
				return And<decltype(i_vLeft), decltype(i_vRight)>{};
		}
		
		friend auto consteval
		(	operator *
		)	(	ProtoTerm auto
					i_vLeft
			,	Or
			)
		->	ProtoDisjunctive auto
		{	return (... or (i_vLeft * t_tpConjunction{}));	}

		friend auto consteval
		(	operator *
		)	(	Or
			,	ProtoLiteral auto
					i_vRight
			)
		->	ProtoDisjunctive auto
		{	return (... or (t_tpConjunction{} * i_vRight));	}

		friend auto consteval
		(	operator or
		)	(	ProtoTerm auto
					i_vLeft
			,	Or
			)
		->	ProtoDisjunctive auto
		{	return (i_vLeft or ... or t_tpConjunction{});	}
		
		friend auto consteval
		(	operator or
		)	(	Or
					i_vLeft
			,	ProtoConjunction auto
					i_vRight
			)
		->	ProtoDisjunctive auto
		{
			if	constexpr(not ProtoDisjunctive<decltype(i_vRight)>)
				return i_vLeft or *i_vRight;
			else
			if	constexpr(i_vRight >= i_vLeft)
				return i_vLeft;
			else
			if	constexpr
				(	(	...
					or	(	t_tpConjunction{} >= i_vRight
						or	t_tpConjunction{} >= not i_vRight
						)
					)
				)
				return (... or (t_tpConjunction{} or i_vRight));
			else
				return Or<t_tpConjunction..., decltype(i_vRight)>{};
		}
		
		friend auto consteval
		(	operator +
		)	(	ProtoTerm auto
					i_vLeft
			,	Or
			)
		->	ProtoConjunctive auto
		{	return (i_vLeft + ... + t_tpConjunction{});	}

		friend auto consteval
		(	operator +
		)	(	Or
					i_vLeft
			,	ProtoLiteral auto
					i_vRight
			)
		->	ProtoConjunctive auto
		{
			if	constexpr(not ProtoConjunctive<decltype(i_vLeft)>)
				return (t_tpConjunction{} + ... + i_vRight);
			else
				return i_vLeft or i_vRight;
		}
	};
	
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
		
		friend auto consteval
		(	operator *
		)	(	TermBase const
				&
			)
		->	ProtoDisjunctive auto
		{	return * t_vTerm;	}
		
		friend auto consteval
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
		friend auto consteval
		(	operator <=>
		)	(	TermBase const
				&
			,	TermBase<t_vRightTerm> const
				&
			)
		->	std::partial_ordering
		{	return t_vTerm <=> t_vRightTerm;	}
		
		friend auto consteval
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
		friend auto consteval
		(	operator ==
		)	(	TermBase const
				&
			,	TermBase<t_vRightTerm> const
				&
			)
		->	bool
		{	return t_vTerm == t_vRightTerm;	}
		
		friend auto consteval
		(	operator not
		)	(	TermBase const
				&
			)
		->	ProtoTerm auto
		{	return not t_vTerm;	}
		
		friend auto consteval
		(	operator compl
		)	(	TermBase const
				&
			)
		->	ProtoTerm auto
		{	return compl t_vTerm;	}
			
		friend auto consteval
		(	operator and
		)	(	TermBase const
				&
			,	ProtoTerm auto
					i_vRight
			)
		->	ProtoConjunction auto
		{	return t_vTerm and i_vRight;	}
		
		friend auto consteval
		(	operator *
		)	(	TermBase const
				&
			,	ProtoTerm auto
					i_vRight
			)
		->	ProtoDisjunctive auto
		{	return t_vTerm * i_vRight;	}
		
		friend auto consteval
		(	operator and
		)	(	ProtoTerm auto
					i_vLeft
			,	TermBase const
				&
			)
		->	ProtoConjunction auto
		{	return i_vLeft and t_vTerm;	}
		
		friend auto consteval
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
		friend auto consteval
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
		friend auto consteval
		(	operator *
		)	(	TermBase const
				&
			,	TermBase<t_vRightTerm> const
				&
			)
		->	ProtoDisjunctive auto
		{	return t_vTerm * t_vRightTerm;	}
		
		friend auto consteval
		(	operator or
		)	(	TermBase const
				&
			,	ProtoTerm auto
					i_vRight
			)
		->	ProtoDisjunction auto
		{	return t_vTerm or i_vRight;	}
		
		friend auto consteval
		(	operator +
		)	(	TermBase const
				&
			,	ProtoTerm auto
					i_vRight
			)
		->	ProtoConjunctive auto
		{	return t_vTerm + i_vRight;	}
		
		friend auto consteval
		(	operator or
		)	(	ProtoTerm auto
					i_vLeft
			,	TermBase const
				&
			)
		->	ProtoDisjunction auto
		{	return i_vLeft or t_vTerm;	}
		
		friend auto consteval
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
		friend auto consteval
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
		friend auto consteval
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
	
	class
		ConceptTest
		final
	{
		struct A : AtomBase<A> {};
		
		static_assert( ProtoAtom		<A>);
		static_assert(!ProtoTerm		<A>);
		static_assert(!ProtoConjunction	<A>);
		static_assert(!ProtoConjunctive	<A>);
		static_assert(!ProtoDisjunction	<A>);
		static_assert(!ProtoDisjunctive	<A>);
		static_assert(!ProtoLiteral		<A>);
		
		static_assert(!ProtoAtom		<Atom<A>>);
		static_assert( ProtoTerm		<Atom<A>>);
		static_assert( ProtoConjunction	<Atom<A>>);
		static_assert( ProtoConjunctive	<Atom<A>>);
		static_assert( ProtoDisjunction	<Atom<A>>);
		static_assert( ProtoDisjunctive	<Atom<A>>);
		static_assert( ProtoLiteral		<Atom<A>>);
		
		static_assert(!ProtoAtom		<Not<A>>);
		static_assert( ProtoTerm		<Not<A>>);
		static_assert( ProtoConjunction	<Not<A>>);
		static_assert( ProtoConjunctive	<Not<A>>);
		static_assert( ProtoDisjunction	<Not<A>>);
		static_assert( ProtoDisjunctive	<Not<A>>);
		static_assert( ProtoLiteral		<Not<A>>);

		using P = Atom<struct p>;
		using Q = Atom<struct q>;
		using R = Atom<struct r>;
		using S = Atom<struct s>;
		
		static_assert(!ProtoAtom		<And<P, Q>>);
		static_assert( ProtoTerm		<And<P, Q>>);
		static_assert( ProtoConjunction	<And<P, Q>>);
		static_assert( ProtoConjunctive	<And<P, Q>>);
		static_assert(!ProtoDisjunction	<And<P, Q>>);
		static_assert( ProtoDisjunctive	<And<P, Q>>);
		static_assert(!ProtoLiteral		<And<P, Q>>);
		
		static_assert(!ProtoAtom		<And<Or<P, Q>, R>>);
		static_assert( ProtoTerm		<And<Or<P, Q>, R>>);
		static_assert( ProtoConjunction	<And<Or<P, Q>, R>>);
		static_assert( ProtoConjunctive	<And<Or<P, Q>, R>>);
		static_assert(!ProtoDisjunction	<And<Or<P, Q>, R>>);
		static_assert(!ProtoDisjunctive	<And<Or<P, Q>, R>>);
		static_assert(!ProtoLiteral		<And<Or<P, Q>, R>>);
		
		static_assert(!ProtoAtom		<And<Or<P, Q>, Or<R, S>>>);
		static_assert( ProtoTerm		<And<Or<P, Q>, Or<R, S>>>);
		static_assert( ProtoConjunction	<And<Or<P, Q>, Or<R, S>>>);
		static_assert( ProtoConjunctive	<And<Or<P, Q>, Or<R, S>>>);
		static_assert(!ProtoDisjunction	<And<Or<P, Q>, Or<R, S>>>);
		static_assert(!ProtoDisjunctive	<And<Or<P, Q>, Or<R, S>>>);
		static_assert(!ProtoLiteral		<And<Or<P, Q>, Or<R, S>>>);
		
		static_assert(!ProtoAtom		<Or<P, Q>>);
		static_assert( ProtoTerm		<Or<P, Q>>);
		static_assert(!ProtoConjunction	<Or<P, Q>>);
		static_assert( ProtoConjunctive	<Or<P, Q>>);
		static_assert( ProtoDisjunction	<Or<P, Q>>);
		static_assert( ProtoDisjunctive	<Or<P, Q>>);
		static_assert(!ProtoLiteral		<Or<P, Q>>);
		
		static_assert(!ProtoAtom		<Or<And<P, Q>, R>	>);
		static_assert( ProtoTerm		<Or<And<P, Q>, R>	>);
		static_assert(!ProtoConjunction	<Or<And<P, Q>, R>	>);
		static_assert(!ProtoConjunctive	<Or<And<P, Q>, R>	>);
		static_assert( ProtoDisjunction	<Or<And<P, Q>, R>	>);
		static_assert( ProtoDisjunctive	<Or<And<P, Q>, R>	>);
		static_assert(!ProtoLiteral		<Or<And<P, Q>, R>	>);
		
		static_assert(!ProtoAtom		<Or<And<P, Q>, And<R, S>>	>);
		static_assert( ProtoTerm		<Or<And<P, Q>, And<R, S>>	>);
		static_assert(!ProtoConjunction	<Or<And<P, Q>, And<R, S>>	>);
		static_assert(!ProtoConjunctive	<Or<And<P, Q>, And<R, S>>	>);
		static_assert( ProtoDisjunction	<Or<And<P, Q>, And<R, S>>	>);
		static_assert( ProtoDisjunctive	<Or<And<P, Q>, And<R, S>>	>);
		static_assert(!ProtoLiteral		<Or<And<P, Q>, And<R, S>>	>);
	};
	
	class
		TypeTest
		final
	{
		static True constexpr inline T{};
		static False constexpr inline F{};
		static struct P : AtomBase<P> {} constexpr inline p{};
		using aP = Atom<P>;
		using nP = Not<P>;
		static struct Q : AtomBase<Q> {} constexpr inline q{};
		using aQ = Atom<Q>;
		using nQ = Not<Q>;
		static struct R : AtomBase<R> {} constexpr inline r{};
		using aR = Atom<R>;
		using nR = Not<R>;
		static struct S : AtomBase<S> {} constexpr inline s{};
		using aS = Atom<S>;
		using nS = Not<S>;
		
		template
			<	ProtoTerm auto
					t_vTerm
			,	ProtoTerm
					t_tExpected
			>
		static bool constexpr
			ExpectType
		=	std::is_same_v
			<	decltype(t_vTerm)
			,	t_tExpected
			>
		;
		
		//	Atom
		static_assert(ExpectType<* T, True>);
		static_assert(ExpectType<+ T, True>);
		static_assert(ExpectType<! T, False>);
		static_assert(ExpectType<~ T, False>);
		
		static_assert(ExpectType<* F, False>);
		static_assert(ExpectType<+ F, False>);
		static_assert(ExpectType<! F, True>);
		static_assert(ExpectType<~ F, True>);
		
		static_assert(ExpectType<* p, aP>);
		static_assert(ExpectType<+ p, aP>);
		static_assert(ExpectType<! p, nP>);
		static_assert(ExpectType<~ p, nP>);
		
		static_assert(ExpectType<* not p, nP>);
		static_assert(ExpectType<+ not p, nP>);
		static_assert(ExpectType<! not p, aP>);
		static_assert(ExpectType<~ not p, aP>);
		
		//	Atom x Atom
		static_assert(ExpectType<T and T, True>);
		static_assert(ExpectType<T and F, False>);
		static_assert(ExpectType<T and p, aP>);
		
		static_assert(ExpectType<F and T, False>);
		static_assert(ExpectType<F and F, False>);
		static_assert(ExpectType<F and p, False>);
		
		static_assert(ExpectType<p and T, aP>);
		static_assert(ExpectType<p and F, False>);
		static_assert(ExpectType<p and p, aP>);		
		static_assert(ExpectType<p and not p, False>);
		static_assert(ExpectType<p and q, And<aP, aQ>>);
		
		static_assert(ExpectType<T * T, True>);
		static_assert(ExpectType<T * F, False>);
		static_assert(ExpectType<T * p, aP>);
		
		static_assert(ExpectType<F * T, False>);
		static_assert(ExpectType<F * F, False>);
		static_assert(ExpectType<F * p, False>);
		
		static_assert(ExpectType<p * T, aP>);
		static_assert(ExpectType<p * F, False>);
		static_assert(ExpectType<p * p, aP>);
		static_assert(ExpectType<p * not p, False>);		
		static_assert(ExpectType<p * q, And<aP, aQ>>);
		
		static_assert(ExpectType<T or T, True>);
		static_assert(ExpectType<T or F, True>);
		static_assert(ExpectType<T or p, True>);
		
		static_assert(ExpectType<F or T, True>);
		static_assert(ExpectType<F or F, False>);
		static_assert(ExpectType<F or p, aP>);
		
		static_assert(ExpectType<p or T, True>);
		static_assert(ExpectType<p or F, aP>);
		static_assert(ExpectType<p or p, aP>);
		
		static_assert(ExpectType<p or not p, True>);
		static_assert(ExpectType<p or q, Or<aP, aQ>>);
		
		static_assert(ExpectType<T + T, True>);
		static_assert(ExpectType<T + F, True>);
		static_assert(ExpectType<T + p, True>);
		
		static_assert(ExpectType<F + T, True>);
		static_assert(ExpectType<F + F, False>);
		static_assert(ExpectType<F + p, aP>);
		
		static_assert(ExpectType<p + T, True>);
		static_assert(ExpectType<p + F, aP>);
		static_assert(ExpectType<p + p, aP>);
		static_assert(ExpectType<p + not p, True>);
		static_assert(ExpectType<p + q, Or<aP, aQ>>);
		
		//	Clause
		static_assert(ExpectType<+(p and q), And<aP, aQ>>);
		static_assert(ExpectType<*(p and q), And<aP, aQ>>);
		static_assert(ExpectType<!(p and q), Or<nP, nQ>>);
		static_assert(ExpectType<~(p and q), And<nP, nQ>>);
		
		static_assert(ExpectType<+(p or q), Or<aP, aQ>>);
		static_assert(ExpectType<*(p or q), Or<aP, aQ>>);
		static_assert(ExpectType<!(p or q), And<nP, nQ>>);
		static_assert(ExpectType<~(p or q), Or<nP, nQ>>);

		//	Atom x Clause
		static_assert(ExpectType<p and (p and q), And<aP, aQ>>);
		static_assert(ExpectType<p and (not p and q), False>);
		static_assert(ExpectType<p and (q and r), And<aP, aQ, aR>>);
		
		static_assert(ExpectType<p and (p or q), aP>);
		static_assert(ExpectType<p and (not p or q), And<aP, aQ>>);
		static_assert(ExpectType<p and (q or r), And<aP, Or<aQ, aR>>>);

		static_assert(ExpectType<p * (p and q), And<aP, aQ>>);
		static_assert(ExpectType<p * (not p and q), False>);
		static_assert(ExpectType<p * (q and r), And<aP, aQ, aR>>);
		
		static_assert(ExpectType<p * (p or q), aP>);
		static_assert(ExpectType<p * (not p or q), And<aP, aQ>>);
		static_assert(ExpectType<p * (q or r), Or<And<aP, aQ>, And<aP, aR>>>);
		
		static_assert(ExpectType<p or (p and q), aP>);
		static_assert(ExpectType<p or (not p and q), Or<aP, aQ>>);
		static_assert(ExpectType<p or (q and r), Or<aP, And<aQ, aR>>>);
		
		static_assert(ExpectType<p or (p or q), Or<aP, aQ>>);
		static_assert(ExpectType<p or (not p or q), True>);
		static_assert(ExpectType<p or (q or r), Or<aP, aQ, aR>>);
		
		static_assert(ExpectType<p + (p and q), aP>);
		static_assert(ExpectType<p + (not p and q), Or<aP, aQ>>);
		static_assert(ExpectType<p + (q and r), And<Or<aP, aQ>, Or<aP, aR>>>);
		
		static_assert(ExpectType<p + (p or q), Or<aP, aQ>>);
		static_assert(ExpectType<p + (not p or q), True>);
		static_assert(ExpectType<p + (q or r), Or<aP, aQ, aR>>);
		
		//	Clause x Atomic
		static_assert(ExpectType<(p and q) and p, And<aP, aQ>>);
		static_assert(ExpectType<(p and q) and not p, False>);
		static_assert(ExpectType<(p and q) and r, And<aP, aQ, aR>>);
		
		static_assert(ExpectType<(p or q) and p, aP>);
		static_assert(ExpectType<(p or q) and not p, And<aQ, nP>>);
		static_assert(ExpectType<(p or q) and r, And<Or<aP, aQ>, aR>>);
		
		static_assert(ExpectType<(p and q) * p, And<aP, aQ>>);
		static_assert(ExpectType<(p and q) * not p, False>);
		static_assert(ExpectType<(p and q) * r, And<aP, aQ, aR>>);
		
		static_assert(ExpectType<(p or q) * p, aP>);
		static_assert(ExpectType<(p or q) * not p, And<aQ, nP>>);
		static_assert(ExpectType<(p or q) * r, Or<And<aP, aR>, And<aQ, aR>>>);
		
		static_assert(ExpectType<(p and q) or p, aP>);
		static_assert(ExpectType<(p and q) or not p, Or<aQ, nP>>);
		static_assert(ExpectType<(p and q) or r, Or<And<aP, aQ>, aR>>);
		
		static_assert(ExpectType<(p or q) or p, Or<aP, aQ>>);
		static_assert(ExpectType<(p or q) or not p, True>);
		static_assert(ExpectType<(p or q) or r, Or<aP, aQ, aR>>);
		
		static_assert(ExpectType<(p and q) + p, aP>);
		static_assert(ExpectType<(p and q) + not p, Or<aQ, nP>>);
		static_assert(ExpectType<(p and q) + r, And<Or<aP, aR>, Or<aQ, aR>>>);
		
		static_assert(ExpectType<(p or q) + p, Or<aP, aQ>>);
		static_assert(ExpectType<(p or q) + not p, True>);
		static_assert(ExpectType<(p or q) + r, Or<aP, aQ, aR>>);
		
		//	Clause x Clause
		static_assert(ExpectType<(p and q) and (p and q), And<aP, aQ>>);
		static_assert(ExpectType<(p and q) and (not p and q), False>);
		static_assert(ExpectType<(p and q) and (not p and r), False>);
		static_assert(ExpectType<(p and q) and (not p and not q), False>);
		static_assert(ExpectType<(p and q) and (not p and not q and r), False>);
		static_assert(ExpectType<(p and q) and (p and r), And<aP, aQ, aR>>);
		static_assert(ExpectType<(p and q) and (r and s), And<aP, aQ, aR, aS>>);
		
		static_assert(ExpectType<(p and q) and (p or q), And<aP, aQ>>);
		static_assert(ExpectType<(p and q) and (not p or q), And<aP, aQ>>);
		static_assert(ExpectType<(p and q) and (not p or r), And<aP, aR, aQ>>);
		static_assert(ExpectType<(p and q) and (not p or not q), False>);
		static_assert(ExpectType<(p and q) and (not p or not q or r), And<aP, aQ, aR>>);
		static_assert(ExpectType<(p and q) and (p or r), And<aP, aQ>>);
		static_assert(ExpectType<(p and q) and (r or s), And<aP, aQ, Or<aR, aS>>>);
		
		static_assert(ExpectType<(p or q) and (p and q), And<aP, aQ>>);
		static_assert(ExpectType<(p or q) and (not p and q), And<aQ, nP>>);
		static_assert(ExpectType<(p or q) and (not p and r), And<aQ, nP, aR>>);
		static_assert(ExpectType<(p or q) and (not p and not q), False>);
		static_assert(ExpectType<(p or q) and (not p and not q and r), False>);
		static_assert(ExpectType<(p or q) and (p and r), And<aP, aR>>);
		static_assert(ExpectType<(p or q) and (r and s), And<Or<aP, aQ>, aR, aS>>);
		
		static_assert(ExpectType<(p or q) and (p or q), Or<aP, aQ>>);
		static_assert(ExpectType<(p or q) and (not p or q), aQ>);
// 		static_assert(ExpectType<(p or q) and (not p or r), aQ>);
// 		static_assert(ExpectType<(p or q) and (not p or not q), And<Or<aP, aQ>, Or<nP, nQ>>>);
// 		static_assert(ExpectType<(p or q) and (not p or not q or r), And<Or<aP, aQ>, Or<nP, nQ>>>);
		static_assert(ExpectType<(p or q) and (p or r), And<Or<aP, aQ>, Or<aP, aR>>>);
		static_assert(ExpectType<(p or q) and (r or s), And<Or<aP, aQ>, Or<aR, aS>>>);
		
		static_assert(ExpectType<(p and q) * (p and q), And<aP, aQ>>);
		static_assert(ExpectType<(p and q) * (not p and q), False>);
		static_assert(ExpectType<(p and q) * (not p and r), False>);
		static_assert(ExpectType<(p and q) * (not p and not q), False>);
		static_assert(ExpectType<(p and q) * (not p and not q and r), False>);
		static_assert(ExpectType<(p and q) * (p and r), And<aP, aQ, aR>>);
		static_assert(ExpectType<(p and q) * (r and s), And<aP, aQ, aR, aS>>);
		
		static_assert(ExpectType<(p and q) * (p or q), And<aP, aQ>>);
		static_assert(ExpectType<(p and q) * (not p or q), And<aP, aQ>>);
		static_assert(ExpectType<(p and q) * (not p or r), And<aP, aQ, aR>>);
		static_assert(ExpectType<(p and q) * (not p or not q), False>);
		static_assert(ExpectType<(p and q) * (not p or not q or r), And<aP, aQ, aR>>);
		static_assert(ExpectType<(p and q) * (p or r), And<aP, aQ>>);
		static_assert(ExpectType<(p and q) * (r or s), Or<And<aP, aQ, aR>, And<aP, aQ, aS>>>);
		
		static_assert(ExpectType<(p or q) * (p and q), And<aP, aQ>>);
		static_assert(ExpectType<(p or q) * (not p and q), And<aQ, nP>>);
		static_assert(ExpectType<(p or q) * (not p and r), And<aQ, nP, aR>>);
		static_assert(ExpectType<(p or q) * (not p and not q), False>);
		static_assert(ExpectType<(p or q) * (not p and not q and r), False>);
		static_assert(ExpectType<(p or q) * (p and r), And<aP, aR>>);
		static_assert(ExpectType<(p or q) * (r and s), Or<And<aP, aR, aS>, And<aQ, aR, aS>>>);
		
		static_assert(ExpectType<(p or q) * (p or q), Or<aP, aQ>>);
		static_assert(ExpectType<(p or q) * (not p or q), aQ>);
// 		static_assert(ExpectType<(p or q) * (not p or r), True>);
// 		static_assert(ExpectType<(p or q) * (not p or not q), True>);
// 		static_assert(ExpectType<(p or q) * (not p or not q or r), True>);
		static_assert(ExpectType<(p or q) * (p or r), Or<aP, And<aQ, aR>>>);
		static_assert(ExpectType<(p or q) * (r or s), Or<And<aP, aR>, And<aQ, aR>, And<aP, aS>, And<aQ, aS>>>);
		
		static_assert(ExpectType<(p and q) or (p and q), And<aP, aQ>>);
		static_assert(ExpectType<(p and q) or (not p and q), aQ>);
// 		static_assert(ExpectType<(p and q) or (not p and r), True>);
// 		static_assert(ExpectType<(p and q) or (not p and not q), True>);
// 		static_assert(ExpectType<(p and q) or (not p and not q or r), True>);
		static_assert(ExpectType<(p and q) or (p and r), Or<And<aP, aQ>, And<aP, aR>>>);
		static_assert(ExpectType<(p and q) or (r and s), Or<And<aP, aQ>, And<aR, aS>>>);
		
		static_assert(ExpectType<(p and q) or (p or q), Or<aP, aQ>>);
		static_assert(ExpectType<(p and q) or (not p or q), Or<aQ, nP>>);
		static_assert(ExpectType<(p and q) or (not p or r), Or<aQ, nP, aR>>);
		static_assert(ExpectType<(p and q) or (not p or not q), True>);
		static_assert(ExpectType<(p and q) or (not p or not q or r), True>);
		static_assert(ExpectType<(p and q) or (p or r), Or<aP, aR>>);
		static_assert(ExpectType<(p and q) or (r or s), Or<And<aP, aQ>, aR, aS>>);
		
		static_assert(ExpectType<(p or q) or (p and q), Or<aP, aQ>>);
		static_assert(ExpectType<(p or q) or (not p and q), Or<aP, aQ>>);
		static_assert(ExpectType<(p or q) or (not p and r), Or<aP, aR, aQ>>);
		static_assert(ExpectType<(p or q) or (not p and not q), True>);
		static_assert(ExpectType<(p or q) or (not p and not q and r), Or<aP, aQ, aR>>);
		static_assert(ExpectType<(p or q) or (p and r), Or<aP, aQ>>);
		static_assert(ExpectType<(p or q) or (r and s), Or<aP, aQ, And<aR, aS>>>);
		
		static_assert(ExpectType<(p or q) or (p or q), Or<aP, aQ>>);
		static_assert(ExpectType<(p or q) or (not p or q), True>);
		static_assert(ExpectType<(p or q) or (not p or r), True>);
		static_assert(ExpectType<(p or q) or (not p or not q), True>);
		static_assert(ExpectType<(p or q) or (not p or not q or r), True>);
		static_assert(ExpectType<(p or q) or (p or r), Or<aP, aQ, aR>>);
		static_assert(ExpectType<(p or q) or (r or s), Or<aP, aQ, aR, aS>>);
		
		static_assert(ExpectType<(p and q) + (p and q), And<aP, aQ>>);
		static_assert(ExpectType<(p and q) + (not p and q), aQ>);
// 		static_assert(ExpectType<(p and q) + (not p and r), Or<aP, aQ, aR>>);
// 		static_assert(ExpectType<(p and q) + (not p and not q), True>);
// 		static_assert(ExpectType<(p and q) + (not p and not q and r), True>);
		static_assert(ExpectType<(p and q) + (p and r), And<aP, Or<aQ, aR>>>);
		static_assert(ExpectType<(p and q) + (r and s), And<Or<aP, aR>, Or<aQ, aR>, Or<aP, aS>, Or<aQ, aS>>>);
		
		static_assert(ExpectType<(p and q) + (p or q), Or<aP, aQ>>);
		static_assert(ExpectType<(p and q) + (not p or q), Or<aQ, nP>>);
		static_assert(ExpectType<(p and q) + (not p or r), Or<aQ, nP, aR>>);
		static_assert(ExpectType<(p and q) + (not p or not q), True>);
		static_assert(ExpectType<(p and q) + (not p or not q or r), True>);
		static_assert(ExpectType<(p and q) + (p or r), Or<aP, aR>>);
		static_assert(ExpectType<(p and q) + (r or s), And<Or<aP, aR, aS>, Or<aQ, aR, aS>>>);
		
		static_assert(ExpectType<(p or q) + (p and q), Or<aP, aQ>>);
		static_assert(ExpectType<(p or q) + (not p and q), Or<aP, aQ>>);
		static_assert(ExpectType<(p or q) + (not p and r), Or<aP, aQ, aR>>);
		static_assert(ExpectType<(p or q) + (not p and not q), True>);
		static_assert(ExpectType<(p or q) + (not p and not q and r), Or<aP, aQ, aR>>);
		static_assert(ExpectType<(p or q) + (p and r), Or<aP, aQ>>);
		static_assert(ExpectType<(p or q) + (r and s), And<Or<aP, aQ, aR>, Or<aP, aQ, aS>>>);
		
		static_assert(ExpectType<(p or q) + (p or q), Or<aP, aQ>>);
		static_assert(ExpectType<(p or q) + (not p or q), True>);
		static_assert(ExpectType<(p or q) + (not p or r), True>);
		static_assert(ExpectType<(p or q) + (not p or not q), True>);
		static_assert(ExpectType<(p or q) + (not p or not q or r), True>);
		static_assert(ExpectType<(p or q) + (p or r), Or<aP, aQ, aR>>);
		static_assert(ExpectType<(p or q) + (r or s), Or<aP, aQ, aR, aS>>);
		
		// Term
		static_assert(ExpectType<*(p and (q or r)), Or<And<aP, aQ>, And<aP, aR>>>);
		static_assert(ExpectType<+(p and (q or r)), And<aP, Or<aQ, aR>>>);
		static_assert(ExpectType<!(p and (q or r)), Or<nP, And<nQ, nR>>>);
		static_assert(ExpectType<~(p and (q or r)), And<nP, Or<nQ, nR>>>);
		
		static_assert(ExpectType<*(p or (q and r)), Or<aP, And<aQ, aR>>>);
		static_assert(ExpectType<+(p or (q and r)), And<Or<aP, aQ>, Or<aP, aR>>>);
		static_assert(ExpectType<!(p or (q and r)), And<nP, Or<nQ, nR>>>);
		static_assert(ExpectType<~(p or (q and r)), Or<nP, And<nQ, nR>>>);
		
		static_assert(ExpectType<*((p or q) and r), Or<And<aP, aR>, And<aQ, aR>>>);
		static_assert(ExpectType<+((p or q) and r), And<Or<aP, aQ>, aR>>);
		static_assert(ExpectType<!((p or q) and r), Or<And<nP, nQ>, nR>>);
		static_assert(ExpectType<~((p or q) and r), And<Or<nP, nQ>, nR>>);
		
		static_assert(ExpectType<*((p or q) and (p or r)), Or<aP, And<aQ, aR>>>);
		static_assert(ExpectType<+((p or q) and (p or r)), And<Or<aP, aQ>, Or<aP, aR>>>);
		static_assert(ExpectType<!((p or q) and (p or r)), Or<And<nP, nQ>, And<nP, nR>>>);
		static_assert(ExpectType<~((p or q) and (p or r)), And<Or<nP, nQ>, Or<nP, nR>>>);
		
		static_assert(ExpectType<*((p or q) and (r or s)), Or<And<aP, aR>, And<aQ, aR>, And<aP, aS>, And<aQ, aS>>>);
		static_assert(ExpectType<+((p or q) and (r or s)), And<Or<aP, aQ>, Or<aR, aS>>>);
		static_assert(ExpectType<!((p or q) and (r or s)), Or<And<nP, nQ>, And<nR, nS>>>);
		static_assert(ExpectType<~((p or q) and (r or s)), And<Or<nP, nQ>, Or<nR, nS>>>);
		
		static_assert(ExpectType<*((p and q) or r), Or<And<aP, aQ>, aR>>);
		static_assert(ExpectType<+((p and q) or r), And<Or<aP, aR>, Or<aQ, aR>>>);
		static_assert(ExpectType<!((p and q) or r), And<Or<nP, nQ>, nR>>);
		static_assert(ExpectType<~((p and q) or r), Or<And<nP, nQ>, nR>>);
		
		static_assert(ExpectType<*((p and q) or (p and r)), Or<And<aP, aQ>, And<aP, aR>>>);
		static_assert(ExpectType<+((p and q) or (p and r)), And<aP, Or<aQ, aR>>>);
		static_assert(ExpectType<!((p and q) or (p and r)), And<Or<nP, nQ>, Or<nP, nR>>>);
		static_assert(ExpectType<~((p and q) or (p and r)), Or<And<nP, nQ>, And<nP, nR>>>);
		
		static_assert(ExpectType<*((p and q) or (r and s)), Or<And<aP, aQ>, And<aR, aS>>>);
		static_assert(ExpectType<+((p and q) or (r and s)), And<Or<aP, aR>, Or<aQ, aR>, Or<aP, aS>, Or<aQ, aS>>>);
		static_assert(ExpectType<!((p and q) or (r and s)), And<Or<nP, nQ>, Or<nR, nS>>>);
		static_assert(ExpectType<~((p and q) or (r and s)), Or<And<nP, nQ>, And<nR, nS>>>);
	};
	
	class
		Test
		final
	{
		static True constexpr inline
			True
		{};
		static False constexpr inline
			False
		{};
		
		template<ProtoAtom auto t_vAtom>
		static Atom<decltype(t_vAtom)> constexpr
			Atom
		{};
		
		template<ProtoAtom auto t_vAtom>
		static Not<decltype(t_vAtom)> constexpr
			Not
		{};
		
		template<auto... t_vpClause>
		static And<decltype(*t_vpClause)...> constexpr
			And
		{};
		
		template<auto... t_vpClause>
		static Or<decltype(+t_vpClause)...> constexpr
			Or
		{};

		static struct P_ : AtomBase<P_> {} constexpr inline P{};
		static struct Q_ : AtomBase<Q_> {} constexpr inline Q{};
		static struct R_ : AtomBase<R_> {} constexpr inline R{};
		static struct S_ : AtomBase<S_> {} constexpr inline S{};
		
		
		static auto constexpr
			Unordered
		=	std::partial_ordering::unordered
		;
		/// Ordering
		static_assert(True == True);
		static_assert(True < False);
		static_assert(True < And<P, Q>);
		static_assert(True < And<P, Or<Q, R>>);
		static_assert(True < Or<P, And<Q, R>>);
		
		static_assert(False > True);
		static_assert(False == False);
		static_assert(False > P);
		static_assert(False > And<P, Q>);
		static_assert(False > And<P, Or<Q, R>>);
		static_assert(False > Or<P, Q>);
		static_assert(False > Or<P, And<Q, R>>);
		
		static_assert(P > True);
		static_assert(P < False);
		static_assert(P == P);
		static_assert(P <=> R == Unordered);
		static_assert(P <=> And<Q, R> == Unordered);
		static_assert(P <=> And<Q, Or<R, S>> == Unordered);
		static_assert(P <=> Or<Q, R> == Unordered);
		static_assert(P <=> Or<Q, And<R, S>> == Unordered);
		
		static_assert(And<P, Q> > True);
		static_assert(And<P, Q> < False);
		static_assert(And<P, Q> <=> R == Unordered);
		static_assert(And<P, Q> == And<P, Q>);
		static_assert(And<P, Q> == And<Q, P>);
		static_assert(And<P, Q> <=> And<P, R> == Unordered);
		static_assert(And<P, Q> <=> And<R, P> == Unordered);
		static_assert(And<P, Q> <=> And<Q, R> == Unordered);
		static_assert(And<P, Q> <=> And<R, Q> == Unordered);
		static_assert(And<P, Q> <=> And<R, S> == Unordered);
		static_assert(And<P, Q> <=> And<P, Or<R, S>> == Unordered);
		static_assert(And<P, Q> <=> And<Or<R, S>, P> == Unordered);
		static_assert(And<P, Q> <=> And<R, Or<P, S>> == Unordered);
		static_assert(And<P, Q> <=> And<Or<P, S>, R> == Unordered);
		static_assert(And<P, Q> <=> And<R, Or<P, Q>> == Unordered);
		static_assert(And<P, Q> <=> And<Or<P, Q>, R> == Unordered);
		static_assert(And<P, Q> <=> Or<R, S> == Unordered);
		static_assert(And<P, Q> <=> Or<R, And<P, S>> == Unordered);
		static_assert(And<P, Q> <=> Or<And<P, S>, R> == Unordered);
		
		static_assert(Or<P, Q> > True);
		static_assert(Or<P, Q> < False);
		static_assert(Or<P, Q> <=> R == Unordered);
		static_assert(Or<P, Q> <=> And<R, S> == Unordered);
		static_assert(Or<P, Q> <=> And<R, Or<P, S>> == Unordered);
		static_assert(Or<P, Q> <=> And<Or<P, S>, R> == Unordered);
		static_assert(Or<P, Q> == Or<P, Q>);
		static_assert(Or<P, Q> == Or<Q, P>);
		static_assert(Or<P, Q> <=> Or<P, R> == Unordered);
		static_assert(Or<P, Q> <=> Or<R, P> == Unordered);
		static_assert(Or<P, Q> <=> Or<R, Q> == Unordered);
		static_assert(Or<P, Q> <=> Or<Q, R> == Unordered);
		static_assert(Or<P, Q> <=> Or<R, S> == Unordered);
		static_assert(Or<P, Q> <=> Or<P, And<R, S>> == Unordered);
		static_assert(Or<P, Q> <=> Or<And<R, S>, P> == Unordered);
		static_assert(Or<P, Q> <=> Or<R, And<P, S>> == Unordered);
		static_assert(Or<P, Q> <=> Or<And<P, S>, R> == Unordered);
		
		static_assert(P < And<P, Q>);
		static_assert(P < And<Q, P>);
		static_assert(P < And<P, Or<Q, R>>);
		static_assert(P < And<Or<Q, R>, P>);
		static_assert(P > And<Or<P, Q>, Or<P, R>>);
		static_assert(P > Or<P, Q>);
		static_assert(P > Or<Q, P>);
		static_assert(P > Or<P, And<Q, R>>);
		static_assert(P > Or<And<Q, R>, P>);
		static_assert(P < Or<And<P, Q>, And<P, R>>);
		
		static_assert(And<P, Q> > P);
		static_assert(And<P, Q> > Q);
		static_assert(And<P, Q> < And<P, Q, R>);
		static_assert(And<P, Q> < And<P, R, Q>);
		static_assert(And<P, Q> < And<Q, P, R>);
		static_assert(And<P, Q> < And<Q, R, P>);
		static_assert(And<P, Q> < And<R, P, Q>);
		static_assert(And<P, Q> < And<R, Q, P>);
		static_assert(And<P, Q> > And<P, Or<Q, R>>);
		static_assert(And<P, Q> > And<Or<Q, R>, P>);
		static_assert(And<P, Q> > And<Or<P, R>, Or<Q, S>>);
		static_assert(And<P, Q> > And<Or<Q, S>, Or<P, R>>);
		static_assert(And<P, Q> > Or<P, Q>);
		static_assert(And<P, Q> > Or<Q, P>);
		static_assert(And<P, Q> > Or<P, Q, R>);
		static_assert(And<P, Q> > Or<P, R, Q>);
		static_assert(And<P, Q> > Or<Q, P, R>);
		static_assert(And<P, Q> > Or<Q, R, P>);
		static_assert(And<P, Q> > Or<R, P, Q>);
		static_assert(And<P, Q> > Or<R, Q, P>);
		static_assert(And<P, Q> > Or<P, And<R, S>>);
		static_assert(And<P, Q> > Or<And<R, S>, P>);
		static_assert(And<P, Q> > Or<And<P, Q>, And<R, S>>);
		static_assert(And<P, Q> > Or<And<R, S>, And<P, Q>>);
		static_assert(And<P, Q> < Or<And<P, Q, R>, And<P, Q, S>>);
		static_assert(And<P, Q> < Or<And<P, Q, S>, And<P, Q, R>>);
		
		static_assert(And<P, Q, R> > P);
		static_assert(And<P, Q, R> > Q);
		static_assert(And<P, Q, R> > R);
		static_assert(And<P, Q, R> > And<P, Q>);
		static_assert(And<P, Q, R> > And<P, R>);
		static_assert(And<P, Q, R> > And<Q, P>);
		static_assert(And<P, Q, R> > And<Q, R>);
		static_assert(And<P, Q, R> > And<R, P>);
		static_assert(And<P, Q, R> > And<R, Q>);
		static_assert(And<P, Q, R> > And<P, Or<Q, R>>);
		static_assert(And<P, Q, R> > And<Or<Q, R>, P>);
		static_assert(And<P, Q, R> > And<P, Q, Or<R, S>>);
		static_assert(And<P, Q, R> > And<P, Or<R, S>, Q>);
		static_assert(And<P, Q, R> > And<Or<R, S>, P, Q>);
		static_assert(And<P, Q, R> > And<Or<P, S>, Or<Q, S>, Or<R, S>>);
		
		static_assert(And<P, Or<Q, R>> > P);
		static_assert(And<P, Or<Q, R>> <=> Q == Unordered);
		static_assert(And<P, Or<Q, R>> <=> R == Unordered);
		static_assert(And<P, Or<Q, R>> < And<P, Q>);
		static_assert(And<P, Or<Q, R>> < And<P, R>);
		static_assert(And<P, Or<Q, R>> == And<P, Or<Q, R>>);
		
		static_assert(Or<Q, R> >= Or<Q, R>);
		static_assert(And<P, Or<Q, R>> >= Or<Q, R>);
		static_assert(And<P, Or<Q, R>> == And<P, Or<R, Q>>);
		static_assert(And<P, Or<Q, R>> == And<Or<Q, R>, P>);
		static_assert(And<P, Or<Q, R>> == And<Or<R, Q>, P>);
		static_assert(And<P, Or<Q, R>> <=> And<P, Or<Q, S>> == Unordered);
		static_assert(And<P, Or<Q, R>> <=> And<P, Or<S, Q>> == Unordered);
		static_assert(And<P, Or<Q, R>> <=> And<Or<Q, S>, P> == Unordered);
		static_assert(And<P, Or<Q, R>> <=> And<Or<S, Q>, P> == Unordered);
		static_assert(And<P, Or<Q, R>> > And<Or<P, R>, Or<Q, R>>);
		static_assert(And<P, Or<Q, R>> > And<Or<Q, R>, Or<P, R>>);
		
		static_assert(And<Or<P, Q>, Or<P, R>> < P);
		static_assert(And<Or<P, Q>, Or<P, R>> <=> Q == Unordered);
		static_assert(And<Or<P, Q>, Or<P, R>> <=> R == Unordered);
		static_assert(And<Or<P, Q>, Or<P, R>> < And<P, R>);
		static_assert(And<Or<P, Q>, Or<P, R>> < And<P, Q>);
		static_assert(And<Or<P, Q>, Or<P, R>> < And<Q, R>);
		static_assert(And<Or<P, Q>, Or<P, R>> < And<P, Q, R>);
		static_assert(And<Or<P, Q>, Or<P, R>> < And<P, Or<Q, R>>);
		static_assert(And<Or<P, Q>, Or<P, R>> < And<Q, Or<P, R>>);
		static_assert(And<Or<P, Q>, Or<P, R>> == And<Or<P, Q>, Or<P, R>>);
		static_assert(And<Or<P, Q>, Or<P, R>> == And<Or<P, Q>, Or<R, P>>);
		static_assert(And<Or<P, Q>, Or<P, R>> == And<Or<Q, P>, Or<P, R>>);
		static_assert(And<Or<P, Q>, Or<P, R>> == And<Or<Q, P>, Or<R, P>>);
		static_assert(And<Or<P, Q>, Or<P, R>> == And<Or<P, R>, Or<P, Q>>);
		static_assert(And<Or<P, Q>, Or<P, R>> == And<Or<P, R>, Or<Q, P>>);
		static_assert(And<Or<P, Q>, Or<P, R>> == And<Or<R, P>, Or<P, Q>>);
		static_assert(And<Or<P, Q>, Or<P, R>> == And<Or<R, P>, Or<Q, P>>);
		static_assert(And<Or<P, Q>, Or<P, R>> > And<Or<P, Q>, Or<P, R, S>>);
		static_assert(And<Or<P, Q>, Or<P, R>> > And<Or<P, Q, S>, Or<P, R>>);
		
		
		static_assert(Or<P, Q> < Or<P, And<Q, R>>);
		static_assert(Or<P, R> < Or<P, And<Q, R>>);
		static_assert(Or<P, Q> < And<Q,R>);
		static_assert(Or<P, Q> < P);
		static_assert(Or<P, R> < And<Q, R>);
		static_assert(Or<P, R> < P);
		static_assert(And<Or<P, Q>, Or<P, R>> == Or<P, And<Q, R>>);
		static_assert(Or<R, Q> < And<P, Or<Q, R>>);
		static_assert(And<P, Or<Q, R>> > Or<R, Q>);
		
		static_assert(And<Or<P, Q>, Or<P, R>> == Or<P, And<Q, R>>);
		static_assert(Or<P, And<Q, R>> == And<Or<P, Q>, Or<P, R>>);
		static_assert(And<Or<P, Q>, Or<P, R>> < Or<And<P, R>, And<Q, R>>);
		static_assert(Or<And<P, R>, And<Q, R>> > And<Or<P, Q>, Or<P, R>>);
		
		static_assert(Or<P, Q> < P);
		static_assert(Or<P, Q> < Q);
		static_assert(Or<P, Q> > Or<P, Q, R>);
		static_assert(Or<P, Q> > Or<P, R, Q>);
		static_assert(Or<P, Q> > Or<Q, P, R>);
		static_assert(Or<P, Q> > Or<Q, R, P>);
		static_assert(Or<P, Q> > Or<R, P, Q>);
		static_assert(Or<P, Q> > Or<R, Q, P>);
		static_assert(Or<P, Q> < Or<P, And<Q, R>>);
		static_assert(Or<P, Q> < Or<And<Q, R>, P>);
		static_assert(Or<P, Q> < Or<And<P, R>, And<Q, S>>);
		static_assert(Or<P, Q> < Or<And<Q, S>, And<P, R>>);
		
		static_assert(Or<P, Q> < And<P, Q>);
		static_assert(Or<P, Q> < And<Q, P>);
		static_assert(Or<P, Q> < And<P, Q, R>);
		static_assert(Or<P, Q> < And<P, R, Q>);
		static_assert(Or<P, Q> < And<Q, P, R>);
		static_assert(Or<P, Q> < And<Q, R, P>);
		static_assert(Or<P, Q> < And<R, P, Q>);
		static_assert(Or<P, Q> < And<R, Q, P>);
		static_assert(Or<P, Q> < And<P, Or<R, S>>);
		static_assert(Or<P, Q> < And<Or<R, S>, P>);
		static_assert(Or<P, Q> < And<Or<P, Q>, Or<R, S>>);
		static_assert(Or<P, Q> < And<Or<R, S>, Or<P, Q>>);
		static_assert(Or<P, Q> > And<Or<P, Q, R>, Or<P, Q, S>>);
		static_assert(Or<P, Q> > And<Or<P, Q, S>, Or<P, Q, R>>);
		
		static_assert(Or<P, Q, R> < P);
		static_assert(Or<P, Q, R> < Q);
		static_assert(Or<P, Q, R> < R);
		static_assert(Or<P, Q, R> < Or<P, Q>);
		static_assert(Or<P, Q, R> < Or<P, R>);
		static_assert(Or<P, Q, R> < Or<Q, P>);
		static_assert(Or<P, Q, R> < Or<Q, R>);
		static_assert(Or<P, Q, R> < Or<R, P>);
		static_assert(Or<P, Q, R> < Or<R, Q>);
		static_assert(Or<P, Q, R> < Or<P, And<Q, R>>);
		static_assert(Or<P, Q, R> < Or<And<Q, R>, P>);
		static_assert(Or<P, Q, R> < Or<P, Q, And<R, S>>);
		static_assert(Or<P, Q, R> < Or<P, And<R, S>, Q>);
		static_assert(Or<P, Q, R> < Or<And<R, S>, P, Q>);
		static_assert(Or<P, Q, R> < Or<And<P, S>, And<Q, S>, And<R, S>>);

		static_assert(Or<P, And<Q, R>> < P);
		static_assert(Or<P, And<Q, R>> <=> Q == Unordered);
		static_assert(Or<P, And<Q, R>> <=> R == Unordered);
		static_assert(Or<P, And<Q, R>> > Or<P, Q>);
		static_assert(Or<P, And<Q, R>> > Or<P, R>);
		static_assert(Or<P, And<Q, R>> == Or<P, And<Q, R>>);
		static_assert(Or<P, And<Q, R>> == Or<P, And<R, Q>>);
		static_assert(Or<P, And<Q, R>> == Or<And<Q, R>, P>);
		static_assert(Or<P, And<Q, R>> == Or<And<R, Q>, P>);
		static_assert(Or<P, And<Q, R>> <=> Or<P, And<Q, S>> == Unordered);
		static_assert(Or<P, And<Q, R>> <=> Or<P, And<S, Q>> == Unordered);
		static_assert(Or<P, And<Q, R>> <=> Or<And<Q, S>, P> == Unordered);
		static_assert(Or<P, And<Q, R>> <=> Or<And<S, Q>, P> == Unordered);
		static_assert(Or<P, And<Q, R>> < Or<And<P, R>, And<Q, R>>);
		static_assert(Or<P, And<Q, R>> < Or<And<Q, R>, And<P, R>>);
		
		static_assert(Or<And<P, Q>, And<P, R>> > P);
		static_assert(Or<And<P, Q>, And<P, R>> <=> Q == Unordered);
		static_assert(Or<And<P, Q>, And<P, R>> <=> R == Unordered);
		static_assert(Or<And<P, Q>, And<P, R>> > Or<P, R>);
		static_assert(Or<And<P, Q>, And<P, R>> > Or<P, Q>);
		static_assert(Or<And<P, Q>, And<P, R>> > Or<Q, R>);
		static_assert(Or<And<P, Q>, And<P, R>> > Or<P, Q, R>);
		static_assert(Or<And<P, Q>, And<P, R>> > Or<P, And<Q, R>>);
		static_assert(Or<And<P, Q>, And<P, R>> > Or<Q, And<P, R>>);
		static_assert(Or<And<P, Q>, And<P, R>> == Or<And<P, Q>, And<P, R>>);
		static_assert(Or<And<P, Q>, And<P, R>> == Or<And<P, Q>, And<R, P>>);
		static_assert(Or<And<P, Q>, And<P, R>> == Or<And<Q, P>, And<P, R>>);
		static_assert(Or<And<P, Q>, And<P, R>> == Or<And<Q, P>, And<R, P>>);
		static_assert(Or<And<P, Q>, And<P, R>> == Or<And<P, R>, And<P, Q>>);
		static_assert(Or<And<P, Q>, And<P, R>> == Or<And<P, R>, And<Q, P>>);
		static_assert(Or<And<P, Q>, And<P, R>> == Or<And<R, P>, And<P, Q>>);
		static_assert(Or<And<P, Q>, And<P, R>> == Or<And<R, P>, And<Q, P>>);
		static_assert(Or<And<P, Q>, And<P, R>> < Or<And<P, Q>, And<P, R, S>>);
		static_assert(Or<And<P, Q>, And<P, R>> < Or<And<P, Q, S>, And<P, R>>);
		
		template<ProtoTerm auto t_vExpected, ProtoTerm auto t_vTerm>
		static bool constexpr
			ExpectType
		=	std::is_same_v<decltype(t_vExpected), decltype(t_vTerm)>
		;
		
		static_assert( ExpectType<True,  (True)>);
		static_assert( ExpectType<True, +(True)>);
		static_assert( ExpectType<True, *(True)>);
		static_assert( ExpectType<True,  (not False)>);
		static_assert( ExpectType<True, +(not False)>);
		static_assert( ExpectType<True, *(not False)>);
		static_assert( ExpectType<True,  (True and True)>);
		static_assert( ExpectType<True, +(True and True)>);
		static_assert( ExpectType<True, *(True and True)>);
		static_assert( ExpectType<True,  (True * True)>);
		static_assert( ExpectType<True, +(True * True)>);
		static_assert( ExpectType<True, *(True * True)>);
		static_assert( ExpectType<True,  (True or True)>);
		static_assert( ExpectType<True, +(True or True)>);
		static_assert( ExpectType<True, *(True or True)>);
		static_assert( ExpectType<True,  (True or False)>);
		static_assert( ExpectType<True, +(True or False)>);
		static_assert( ExpectType<True, *(True or False)>);
		static_assert( ExpectType<True,  (True or P)>);
		static_assert( ExpectType<True, +(True or P)>);
		static_assert( ExpectType<True, *(True or P)>);
		static_assert( ExpectType<True,  (False or True)>);
		static_assert( ExpectType<True, +(False or True)>);
		static_assert( ExpectType<True, *(False or True)>);
		static_assert( ExpectType<True,  (P or True)>);
		static_assert( ExpectType<True, +(P or True)>);
		static_assert( ExpectType<True, *(P or True)>);
		static_assert( ExpectType<True,  (True + True)>);
		static_assert( ExpectType<True, +(True + True)>);
		static_assert( ExpectType<True, *(True + True)>);
		static_assert( ExpectType<True,  (True + False)>);
		static_assert( ExpectType<True, +(True + False)>);
		static_assert( ExpectType<True, *(True + False)>);
		static_assert( ExpectType<True,  (True + P)>);
		static_assert( ExpectType<True, +(True + P)>);
		static_assert( ExpectType<True, *(True + P)>);
		static_assert( ExpectType<True,  (False + True)>);
		static_assert( ExpectType<True, +(False + True)>);
		static_assert( ExpectType<True, *(False + True)>);
		static_assert( ExpectType<True,  (P + True)>);
		static_assert( ExpectType<True, +(P + True)>);
		static_assert( ExpectType<True, *(P + True)>);
		
		static_assert( ExpectType<False,  (False)>);
		static_assert( ExpectType<False, +(False)>);
		static_assert( ExpectType<False, *(False)>);
		static_assert( ExpectType<False,  (not True)>);
		static_assert( ExpectType<False, +(not True)>);
		static_assert( ExpectType<False, *(not True)>);
		static_assert( ExpectType<False,  (True and False)>);
		static_assert( ExpectType<False, +(True and False)>);
		static_assert( ExpectType<False, *(True and False)>);
		static_assert( ExpectType<False,  (False and True)>);
		static_assert( ExpectType<False, +(False and True)>);
		static_assert( ExpectType<False, *(False and True)>);
		static_assert( ExpectType<False,  (False and False)>);
		static_assert( ExpectType<False, +(False and False)>);
		static_assert( ExpectType<False, *(False and False)>);
		static_assert( ExpectType<False,  (False and P)>);
		static_assert( ExpectType<False, +(False and P)>);
		static_assert( ExpectType<False, *(False and P)>);
		static_assert( ExpectType<False,  (P and False)>);
		static_assert( ExpectType<False, +(P and False)>);
		static_assert( ExpectType<False, *(P and False)>);
		static_assert( ExpectType<False,  (True * False)>);
		static_assert( ExpectType<False, +(True * False)>);
		static_assert( ExpectType<False, *(True * False)>);
		static_assert( ExpectType<False,  (False * True)>);
		static_assert( ExpectType<False, +(False * True)>);
		static_assert( ExpectType<False, *(False * True)>);
		static_assert( ExpectType<False,  (False * False)>);
		static_assert( ExpectType<False, +(False * False)>);
		static_assert( ExpectType<False, *(False * False)>);
		static_assert( ExpectType<False,  (False * P)>);
		static_assert( ExpectType<False, +(False * P)>);
		static_assert( ExpectType<False, *(False * P)>);
		static_assert( ExpectType<False,  (P * False)>);
		static_assert( ExpectType<False, +(P * False)>);
		static_assert( ExpectType<False, *(P * False)>);
		static_assert( ExpectType<False,  (False or False)>);
		static_assert( ExpectType<False, +(False or False)>);
		static_assert( ExpectType<False, *(False or False)>);
		static_assert( ExpectType<False,  (False + False)>);
		static_assert( ExpectType<False, +(False + False)>);
		static_assert( ExpectType<False, *(False + False)>);
		
		static_assert( ExpectType<Atom<P>, +(P)>);
		static_assert( ExpectType<Atom<P>, *(P)>);
		static_assert( ExpectType<Atom<P>,  (not not P)>);
		static_assert( ExpectType<Atom<P>, +(not not P)>);
		static_assert( ExpectType<Atom<P>, *(not not P)>);
		static_assert( ExpectType<Atom<P>,  (True and P)>);
		static_assert( ExpectType<Atom<P>, +(True and P)>);
		static_assert( ExpectType<Atom<P>, *(True and P)>);
		static_assert( ExpectType<Atom<P>,  (P and True)>);
		static_assert( ExpectType<Atom<P>, +(P and True)>);
		static_assert( ExpectType<Atom<P>, *(P and True)>);
		static_assert( ExpectType<Atom<P>,  (True * P)>);
		static_assert( ExpectType<Atom<P>, +(True * P)>);
		static_assert( ExpectType<Atom<P>, *(True * P)>);
		static_assert( ExpectType<Atom<P>,  (P * True)>);
		static_assert( ExpectType<Atom<P>, +(P * True)>);
		static_assert( ExpectType<Atom<P>, *(P * True)>);
		static_assert( ExpectType<Atom<P>,  (False or P)>);
		static_assert( ExpectType<Atom<P>, +(False or P)>);
		static_assert( ExpectType<Atom<P>, *(False or P)>);
		static_assert( ExpectType<Atom<P>,  (P or False)>);
		static_assert( ExpectType<Atom<P>, +(P or False)>);
		static_assert( ExpectType<Atom<P>, *(P or False)>);
		static_assert( ExpectType<Atom<P>,  (False + P)>);
		static_assert( ExpectType<Atom<P>, +(False + P)>);
		static_assert( ExpectType<Atom<P>, *(False + P)>);
		static_assert( ExpectType<Atom<P>,  (P + False)>);
		static_assert( ExpectType<Atom<P>, +(P + False)>);
		static_assert( ExpectType<Atom<P>, *(P + False)>);
		
		static_assert( ExpectType<Not<P>,  (not P)>);
		static_assert( ExpectType<Not<P>, +(not P)>);
		static_assert( ExpectType<Not<P>, *(not P)>);
		static_assert( ExpectType<Not<P>,  (not not not P)>);
		static_assert( ExpectType<Not<P>, +(not not not P)>);
		static_assert( ExpectType<Not<P>, *(not not not P)>);
		
		static_assert( ExpectType<And<P, Q>,  (P and Q)>);
		static_assert( ExpectType<And<P, Q>, +(P and Q)>);
		static_assert( ExpectType<And<P, Q>, *(P and Q)>);
		static_assert( ExpectType<And<P, Q>,  (P * Q)>);
		static_assert( ExpectType<And<P, Q>, +(P * Q)>);
		static_assert( ExpectType<And<P, Q>, *(P * Q)>);
		
		static_assert( ExpectType<And<P, Q>,  (not (not P or not Q))>);
		static_assert( ExpectType<And<P, Q>, +(not (not P or not Q))>);
		static_assert( ExpectType<And<P, Q>, *(not (not P or not Q))>);
		static_assert( ExpectType<And<P, Q>,  (not (not P + not Q))>);
		static_assert( ExpectType<And<P, Q>, +(not (not P + not Q))>);
		static_assert( ExpectType<And<P, Q>, *(not (not P + not Q))>);
		
		static_assert( ExpectType<And<P, Or<Q, R>>,  (P and (Q or R))>);
		static_assert( ExpectType<And<P, Or<Q, R>>, +(P and (Q or R))>);
		static_assert(!ExpectType<And<P, Or<Q, R>>, *(P and (Q or R))>);
		static_assert( ExpectType<And<P, Or<Q, R>>,  (P and (Q + R))>);
		static_assert( ExpectType<And<P, Or<Q, R>>, +(P and (Q + R))>);
		static_assert(!ExpectType<And<P, Or<Q, R>>, *(P and (Q + R))>);
		static_assert(!ExpectType<And<P, Or<Q, R>>,  (P * (Q and R))>);
		static_assert( ExpectType<And<P, Or<Q, R>>, +(P * (Q + R))>);
		static_assert(!ExpectType<And<P, Or<Q, R>>, *(P * (Q and R))>);
		static_assert(!ExpectType<And<P, Or<Q, R>>,  (P * (Q + R))>);
		static_assert( ExpectType<And<P, Or<Q, R>>, +(P * (Q + R))>);
		static_assert(!ExpectType<And<P, Or<Q, R>>, *(P * (Q + R))>);
				
		static_assert( ExpectType<And<Or<P, Q>, R>,  ((P or Q) and R)>);
		static_assert( ExpectType<And<Or<P, Q>, R>, +((P or Q) and R)>);
		static_assert(!ExpectType<And<Or<P, Q>, R>, *((P or Q) and R)>);
		static_assert( ExpectType<And<Or<P, Q>, R>,  ((P + Q) and R)>);
		static_assert( ExpectType<And<Or<P, Q>, R>, +((P + Q) and R)>);
		static_assert(!ExpectType<And<Or<P, Q>, R>, *((P + Q) and R)>);
		static_assert(!ExpectType<And<Or<P, Q>, R>,  ((P or Q) * R)>);
		static_assert( ExpectType<And<Or<P, Q>, R>, +((P or Q) * R)>);
		static_assert(!ExpectType<And<Or<P, Q>, R>, *((P or Q) * R)>);
		static_assert(!ExpectType<And<Or<P, Q>, R>,  ((P + Q) * R)>);
		static_assert( ExpectType<And<Or<P, Q>, R>, +((P + Q) * R)>);
		static_assert(!ExpectType<And<Or<P, Q>, R>, *((P + Q) * R)>);
				
		static_assert( ExpectType<And<Or<P, Q>, Or<R, S>>,  ((P or Q) and (R or S))>);
		static_assert( ExpectType<And<Or<P, Q>, Or<R, S>>, +((P or Q) and (R or S))>);
		static_assert(!ExpectType<And<Or<P, Q>, Or<R, S>>, *((P or Q) and (R or S))>);
		static_assert( ExpectType<And<Or<P, Q>, Or<R, S>>,  ((P + Q) and (R or S))>);
		static_assert( ExpectType<And<Or<P, Q>, Or<R, S>>, +((P + Q) and (R or S))>);
		static_assert(!ExpectType<And<Or<P, Q>, Or<R, S>>, *((P + Q) and (R or S))>);
		static_assert(!ExpectType<And<Or<P, Q>, Or<R, S>>,  ((P or Q) * (R or S))>);
		static_assert( ExpectType<And<Or<P, Q>, Or<R, S>>, +((P or Q) * (R or S))>);
		static_assert(!ExpectType<And<Or<P, Q>, Or<R, S>>, *((P or Q) * (R or S))>);
		static_assert(!ExpectType<And<Or<P, Q>, Or<R, S>>,  ((P + Q) * (R or S))>);
		static_assert( ExpectType<And<Or<P, Q>, Or<R, S>>, +((P + Q) * (R or S))>);
		static_assert(!ExpectType<And<Or<P, Q>, Or<R, S>>, *((P + Q) * (R or S))>);
		
		static_assert( ExpectType<Or<P, Q>,  (P or Q)>);
		static_assert( ExpectType<Or<P, Q>, +(P or Q)>);
		static_assert( ExpectType<Or<P, Q>, *(P or Q)>);
		static_assert( ExpectType<Or<P, Q>,  (P + Q)>);
		static_assert( ExpectType<Or<P, Q>, +(P + Q)>);
		static_assert( ExpectType<Or<P, Q>, *(P + Q)>);		
		static_assert( ExpectType<Or<P, Q>,  (not (not P and not Q))>);
		static_assert( ExpectType<Or<P, Q>, +(not (not P and not Q))>);
		static_assert( ExpectType<Or<P, Q>, *(not (not P and not Q))>);
		static_assert( ExpectType<Or<P, Q>,  (not (not P * not Q))>);
		static_assert( ExpectType<Or<P, Q>, +(not (not P * not Q))>);
		static_assert( ExpectType<Or<P, Q>, *(not (not P * not Q))>);
		
		static_assert( ExpectType<Or<P, And<Q, R>>,  (P or (Q and R))>);
		static_assert(!ExpectType<Or<P, And<Q, R>>, +(P or (Q and R))>);
		static_assert( ExpectType<Or<P, And<Q, R>>, *(P or (Q and R))>);
		static_assert( ExpectType<Or<P, And<Q, R>>,  (P or (Q * R))>);
		static_assert(!ExpectType<Or<P, And<Q, R>>, +(P or (Q * R))>);
		static_assert( ExpectType<Or<P, And<Q, R>>, *(P or (Q * R))>);
		static_assert(!ExpectType<Or<P, And<Q, R>>,  (P + (Q and R))>);
		static_assert(!ExpectType<Or<P, And<Q, R>>, +(P + (Q and R))>);
		static_assert( ExpectType<Or<P, And<Q, R>>, *(P + (Q and R))>);
		static_assert(!ExpectType<Or<P, And<Q, R>>,  (P + (Q * R))>);
		static_assert(!ExpectType<Or<P, And<Q, R>>, +(P + (Q * R))>);
		static_assert( ExpectType<Or<P, And<Q, R>>, *(P + (Q * R))>);
				
		static_assert( ExpectType<Or<And<P, Q>, R>,  ((P and Q) or R)>);
		static_assert(!ExpectType<Or<And<P, Q>, R>, +((P and Q) or R)>);
		static_assert( ExpectType<Or<And<P, Q>, R>, *((P and Q) or R)>);
		static_assert( ExpectType<Or<And<P, Q>, R>,  ((P * Q) or R)>);
		static_assert(!ExpectType<Or<And<P, Q>, R>, +((P * Q) or R)>);
		static_assert( ExpectType<Or<And<P, Q>, R>, *((P * Q) or R)>);
		static_assert(!ExpectType<Or<And<P, Q>, R>,  ((P and Q) + R)>);
		static_assert(!ExpectType<Or<And<P, Q>, R>, +((P and Q) + R)>);
		static_assert( ExpectType<Or<And<P, Q>, R>, *((P and Q) + R)>);
		static_assert(!ExpectType<Or<And<P, Q>, R>,  ((P * Q) + R)>);
		static_assert(!ExpectType<Or<And<P, Q>, R>, +((P * Q) + R)>);
		static_assert( ExpectType<Or<And<P, Q>, R>, *((P * Q) + R)>);
				
		static_assert( ExpectType<Or<And<P, Q>, And<R, S>>,  ((P and Q) or (R and S))>);
		static_assert(!ExpectType<Or<And<P, Q>, And<R, S>>, +((P and Q) or (R and S))>);
		static_assert( ExpectType<Or<And<P, Q>, And<R, S>>, *((P and Q) or (R and S))>);
		static_assert( ExpectType<Or<And<P, Q>, And<R, S>>,  ((P * Q) or (R and S))>);
		static_assert(!ExpectType<Or<And<P, Q>, And<R, S>>, +((P * Q) or (R and S))>);
		static_assert( ExpectType<Or<And<P, Q>, And<R, S>>, *((P * Q) or (R and S))>);
		static_assert(!ExpectType<Or<And<P, Q>, And<R, S>>,  ((P and Q) + (R and S))>);
		static_assert(!ExpectType<Or<And<P, Q>, And<R, S>>, +((P and Q) + (R and S))>);
		static_assert( ExpectType<Or<And<P, Q>, And<R, S>>, *((P and Q) + (R and S))>);
		static_assert(!ExpectType<Or<And<P, Q>, And<R, S>>,  ((P * Q) + (R and S))>);
		static_assert(!ExpectType<Or<And<P, Q>, And<R, S>>, +((P * Q) + (R and S))>);
		static_assert( ExpectType<Or<And<P, Q>, And<R, S>>, *((P * Q) + (R and S))>);
		
		
		
		static_assert( ExpectType<Or<P, Q>, P or Q>);
		static_assert( ExpectType<Or<P, Q>, +P or Q>);
		static_assert( ExpectType<Or<P, Q>, *P or Q>);
		static_assert( ExpectType<Or<P, Q>, P + Q>);
		static_assert( ExpectType<Or<P, Q>, +P + Q>);
		static_assert( ExpectType<Or<P, Q>, *P + Q>);
		static_assert( ExpectType<Or<not P, Q>, not (P and not Q)>);
		static_assert( ExpectType<Or<not P, Q>, +not (P and not Q)>);
		static_assert( ExpectType<Or<not P, Q>, *not (P and not Q)>);
		static_assert( ExpectType<Or<not P, Q>, not (P * not Q)>);
		static_assert( ExpectType<Or<not P, Q>, +not (P * not Q)>);
		static_assert( ExpectType<Or<not P, Q>, *not (P * not Q)>);
// 		
		
		/// True
		static_assert(True == True);
		static_assert(True == not not True, "Double negation law violated.");
		static_assert(True < False);
		static_assert(True == not False);
		static_assert(True < P);
		static_assert(True < (P and Q));
		static_assert(True < (P and (Q or R)));
		static_assert(True < ((P or Q) and R));
		static_assert(True < (P or Q));
		
		static_assert((True and True) == True);
		static_assert((True and False ) == False);
		static_assert((True and P) == P, "Identity law violated.");
		static_assert((True or True) == True);
		static_assert((True or False ) == True);
		static_assert((True or P) == True, "Domination law violated.");
		
		/// False
		static_assert(False == not True);
		static_assert(False == not not False, "Double negation law violated.");
		static_assert((False and True) == False);
		static_assert((False and False ) == False);
		static_assert((False and P) == False, "Domination law violated.");
 		static_assert((False or True) == True);
		static_assert((False or False ) == False);
		static_assert((False or P) == P, "Identity law violated.");
		
		/// Atom
		static_assert(P != not P);
		static_assert(P == not not P, "Double negation law violated.");
		static_assert((P and False) == False, "Domination law violated.");
		static_assert((P and (not P or Q)) == (P and Q));
		static_assert((P and True) == P, "Identity law violated.");
		static_assert((P and P) == P, "Idemptotent law violated");
		static_assert((P and Q) == (Q and P), "Commutative law violated.");
		static_assert((P and not P) == False);
		static_assert(((P and Q) and not P) == False);
		static_assert((P and (not P and Q)) == False);
		static_assert((P or (not P or Q)) == True);
		static_assert((P or (not P and Q)) == (Q or P));
		static_assert((P or False) == P, "Identity law violated.");
		static_assert((P or True) == True, "Domination law violated.");
		static_assert((P or P) == P, "Idemptotent law violated");
		static_assert((P or Q) == (Q or P), "Commutative law violated.");
		
		static_assert((not P or (P or Q)) == True);
		static_assert((not P or (P and Q)) == (Q or not P));
		static_assert((not P and (P or Q)) == (Q and not P));
		static_assert((not P and (P and Q)) == False);
		static_assert(((not P and Q) and P) == False);
		
		/// Conjunction
		static_assert(((P and Q) or not P) == (Q or not P));
		static_assert((P and Q) != not (P and Q));
		static_assert((P and Q) != not (Q and P));
		static_assert(((not P and Q) or P) == (Q or P));
		static_assert((P and Q) == not (not P or not Q), "De Morgan's law violated.");
		static_assert((P and Q) == not (not Q or not P), "De Morgan's law violated.");
		static_assert((P and not Q) == not (not P or Q), "De Morgan's law violated.");
		static_assert((P and not Q) == not (Q or not P), "De Morgan's law violated.");
		static_assert((not P and Q) == not (P or not Q), "De Morgan's law violated.");
		static_assert((not P and Q) == not (not Q or P), "De Morgan's law violated.");
		static_assert((not P and not Q) == not (P or Q), "De Morgan's law violated.");
		static_assert((not P and not Q) == not (Q or P), "De Morgan's law violated.");
		static_assert((P and Q) == not not (P and Q), "Double negation law violated.");
		static_assert((P and Q) == not not (Q and P), "Double negation law violated.");
		static_assert(((P and Q) and R) == (P and (Q and R)), "Associative law violated.");
		static_assert(((P and Q) or P) == P, "Absorption law violated.");
		static_assert(((Q and P) or P) == P, "Absorption law violated.");
		
		/// Disjunction
		static_assert((P or not P) == True);
		static_assert(((P or Q) or not P) == True);
		static_assert(((P or Q) and not P) == (Q and not P));
		static_assert(((not P or Q) or P) == True);
		static_assert(((not P or Q) and P) == (Q and P));
		static_assert((P or Q) != not (P or Q));
		static_assert((P or Q) != not (Q or P));
		static_assert(((P or Q) or R) == (P or (Q or R)), "Associative law violated.");
		static_assert((P or (P and Q)) == P, "Absorption law violated.");
		static_assert((P or (Q and P)) == P, "Absorption law violated.");
		
		static_assert((P or Q) == not (not P and not Q), "De Morgan's law violated.");
		static_assert((P or Q) == not (not Q and not P), "De Morgan's law violated.");
		static_assert((P or not Q) == not (not P and Q), "De Morgan's law violated.");
		static_assert((P or not Q) == not (Q and not P), "De Morgan's law violated.");
		static_assert((not P or Q) == not (P and not Q), "De Morgan's law violated.");
		static_assert((not P or Q) == not (not Q and P), "De Morgan's law violated.");
		static_assert((not P or not Q) == not (P and Q), "De Morgan's law violated.");
		static_assert((not P or not Q) == not (Q and P), "De Morgan's law violated.");
		static_assert((P or Q) == not not (P or Q), "Double negation law violated.");
		static_assert((P or Q) == not not (Q or P), "Double negation law violated.");
		
		
		static_assert((P or (Q and R)) == ((P or  Q) and (P or  R)), "Distribution law violated.");
		static_assert((P or (Q and R)) == ((P or  Q) and (R or  P)), "Distribution law violated.");
		static_assert((P or (Q and R)) == ((Q or  P) and (P or  R)), "Distribution law violated.");
		static_assert((P or (Q and R)) == ((Q or  P) and (R or  P)), "Distribution law violated.");
		
		static_assert((P or (Q and R)) == ((P or  R) and (P or  Q)), "Distribution law violated.");
		static_assert((P or (Q and R)) == ((P or  R) and (Q or  P)), "Distribution law violated.");
		static_assert((P or (Q and R)) == ((R or  P) and (P or  Q)), "Distribution law violated.");
		static_assert((P or (Q and R)) == ((R or  P) and (Q or  P)), "Distribution law violated.");
		
		static_assert((P or (R and Q)) == ((P or  Q) and (P or  R)), "Distribution law violated.");
		static_assert((P or (R and Q)) == ((P or  Q) and (R or  P)), "Distribution law violated.");
		static_assert((P or (R and Q)) == ((Q or  P) and (P or  R)), "Distribution law violated.");
		static_assert((P or (R and Q)) == ((Q or  P) and (R or  P)), "Distribution law violated.");
		
		static_assert((P or (R and Q)) == ((P or  R) and (P or  Q)), "Distribution law violated.");
		static_assert((P or (R and Q)) == ((P or  R) and (Q or  P)), "Distribution law violated.");
		static_assert((P or (R and Q)) == ((R or  P) and (P or  Q)), "Distribution law violated.");
		static_assert((P or (R and Q)) == ((R or  P) and (Q or  P)), "Distribution law violated.");
		
		static_assert(((Q and R) or P) == ((P or  Q) and (P or  R)), "Distribution law violated.");
		static_assert(((Q and R) or P) == ((P or  Q) and (R or  P)), "Distribution law violated.");
		static_assert(((Q and R) or P) == ((Q or  P) and (P or  R)), "Distribution law violated.");
		static_assert(((Q and R) or P) == ((Q or  P) and (R or  P)), "Distribution law violated.");
		
		static_assert(((Q and R) or P) == ((P or  R) and (P or  Q)), "Distribution law violated.");
		static_assert(((Q and R) or P) == ((P or  R) and (Q or  P)), "Distribution law violated.");
		static_assert(((Q and R) or P) == ((R or  P) and (P or  Q)), "Distribution law violated.");
		static_assert(((Q and R) or P) == ((R or  P) and (Q or  P)), "Distribution law violated.");
		
		static_assert(((R and Q) or P) == ((P or  Q) and (P or  R)), "Distribution law violated.");
		static_assert(((R and Q) or P) == ((P or  Q) and (R or  P)), "Distribution law violated.");
		static_assert(((R and Q) or P) == ((Q or  P) and (P or  R)), "Distribution law violated.");
		static_assert(((R and Q) or P) == ((Q or  P) and (R or  P)), "Distribution law violated.");
		
		static_assert(((R and Q) or P) == ((P or  R) and (P or  Q)), "Distribution law violated.");
		static_assert(((R and Q) or P) == ((P or  R) and (Q or  P)), "Distribution law violated.");
		static_assert(((R and Q) or P) == ((R or  P) and (P or  Q)), "Distribution law violated.");
		static_assert(((R and Q) or P) == ((R or  P) and (Q or  P)), "Distribution law violated.");
		
		
		
		static_assert((P and (Q or R)) == ((P and  Q) or (P and  R)), "Distribution law violated.");
		static_assert((P and (Q or R)) == ((P and  Q) or (R and  P)), "Distribution law violated.");
		static_assert((P and (Q or R)) == ((Q and  P) or (P and  R)), "Distribution law violated.");
		static_assert((P and (Q or R)) == ((Q and  P) or (R and  P)), "Distribution law violated.");
		
		static_assert((P and (Q or R)) == ((P and  R) or (P and  Q)), "Distribution law violated.");
		static_assert((P and (Q or R)) == ((P and  R) or (Q and  P)), "Distribution law violated.");
		static_assert((P and (Q or R)) == ((R and  P) or (P and  Q)), "Distribution law violated.");
		static_assert((P and (Q or R)) == ((R and  P) or (Q and  P)), "Distribution law violated.");
		
		static_assert((P and (R or Q)) == ((P and  Q) or (P and  R)), "Distribution law violated.");
		static_assert((P and (R or Q)) == ((P and  Q) or (R and  P)), "Distribution law violated.");
		static_assert((P and (R or Q)) == ((Q and  P) or (P and  R)), "Distribution law violated.");
		static_assert((P and (R or Q)) == ((Q and  P) or (R and  P)), "Distribution law violated.");
		
		static_assert((P and (R or Q)) == ((P and  R) or (P and  Q)), "Distribution law violated.");
		static_assert((P and (R or Q)) == ((P and  R) or (Q and  P)), "Distribution law violated.");
		static_assert((P and (R or Q)) == ((R and  P) or (P and  Q)), "Distribution law violated.");
		static_assert((P and (R or Q)) == ((R and  P) or (Q and  P)), "Distribution law violated.");
		
		static_assert(((Q or R) and P) == ((P and  Q) or (P and  R)), "Distribution law violated.");
		static_assert(((Q or R) and P) == ((P and  Q) or (R and  P)), "Distribution law violated.");
		static_assert(((Q or R) and P) == ((Q and  P) or (P and  R)), "Distribution law violated.");
		static_assert(((Q or R) and P) == ((Q and  P) or (R and  P)), "Distribution law violated.");
		
		static_assert(((Q or R) and P) == ((P and  R) or (P and  Q)), "Distribution law violated.");
		static_assert(((Q or R) and P) == ((P and  R) or (Q and  P)), "Distribution law violated.");
		static_assert(((Q or R) and P) == ((R and  P) or (P and  Q)), "Distribution law violated.");
		static_assert(((Q or R) and P) == ((R and  P) or (Q and  P)), "Distribution law violated.");
		
		static_assert(((R or Q) and P) == ((P and  Q) or (P and  R)), "Distribution law violated.");
		static_assert(((R or Q) and P) == ((P and  Q) or (R and  P)), "Distribution law violated.");
		static_assert(((R or Q) and P) == ((Q and  P) or (P and  R)), "Distribution law violated.");
		static_assert(((R or Q) and P) == ((Q and  P) or (R and  P)), "Distribution law violated.");
		
		static_assert(((R or Q) and P) == ((P and  R) or (P and  Q)), "Distribution law violated.");
		static_assert(((R or Q) and P) == ((P and  R) or (Q and  P)), "Distribution law violated.");
		static_assert(((R or Q) and P) == ((R and  P) or (P and  Q)), "Distribution law violated.");
		static_assert(((R or Q) and P) == ((R and  P) or (Q and  P)), "Distribution law violated.");
	};
}


