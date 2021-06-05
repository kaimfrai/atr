#pragma once

#include <type_traits>
#include <concepts>
#include <compare>

namespace
	Z
{	template<typename t_tProto>
	concept ProtoAtomic
	=	not requires { t_tProto::IsFullTerm; }
	;
	
	/// Statements that contain one or more predicates.
	template<typename t_tProto>
	concept ProtoClause
	=	ProtoAtomic<t_tProto>
	or	not t_tProto::IsFullTerm
	;
	
	/// Statements that contain multiple clauses.
	template<typename t_tProto>
	concept ProtoTerm
	=	t_tProto::IsFullTerm
	;
	
	template<typename t_tProto>
	concept ProtoStatement
	=	requires
			(	t_tProto
					c_vProto
			)
		{	&t_tProto::Subsumes;
			{ (t_tProto::IsFullTerm) } -> std::same_as<bool const&>;
			typename t_tProto::StatementType;
		}
	;
	
	template<ProtoAtomic t_tPredicate>
	struct Negation
	{	using StatementType = t_tPredicate;
		// TODO requires default constructible?
		StatementType const constexpr static Predicate{};
		
		auto constexpr
		(	operator()
		)	(	auto const
				&...i_rpArgument
			)
		->	decltype(auto)
		{	return not Predicate(i_rpArgument...);	}
		
		explicit constexpr
		(	operator decltype(auto)
		)	()	const
		{	return not Predicate();	}
	};
	
	struct
		Tautology
	{	auto constexpr
		(	operator()
		)	(	auto const
				&...
			)	const
		->	bool
		{	return true;	}
		
		explicit constexpr
		(	operator bool
		)	()	const
		{	return operator()();	}
	}	const constexpr inline
		True
	{};
	static_assert(ProtoAtomic<Tautology>);
	static_assert(ProtoClause<Tautology>);
	static_assert(not ProtoStatement<Tautology>);
	
	using Contradiction = Negation<Tautology>;
	static_assert(ProtoAtomic<Contradiction>);
	static_assert(ProtoClause<Contradiction>);
	static_assert(not ProtoStatement<Contradiction>);
	Contradiction const constexpr inline
		False
	{};
	
// 	class
// 		StatementBase
// 	{
// 	protected:
// 		constexpr
// 		(	StatementBase
// 		)	()
// 		=	default;
// 		
// 		friend auto constexpr
// 		(	operator and
// 		)	(auto i_vLeft, Tautology)
// 		->	decltype(i_vLeft)
// 		{	return i_vLeft;	}
// 		
// 		friend auto constexpr
// 		(	operator and
// 		)	(Tautology, auto i_vRight)
// 		->	decltype(i_vRight)
// 		{	return i_vRight;	}
// 		
// 		friend auto constexpr
// 		(	operator and
// 		)	(auto, Contradiction)
// 		->	Contradiction
// 		{	return {};	}
// 		
// 		friend auto constexpr
// 		(	operator and
// 		)	(Contradiction, auto)
// 		->	Contradiction
// 		{	return {};	}
// 		
// 		friend auto constexpr
// 		(	operator and
// 		)	(auto i_vLeft, auto)
// 		->	decltype(i_vLeft)
// 		{	return i_vLeft;	}
// 		
// 		friend auto constexpr
// 		(	operator and
// 		)	(auto i_vLeft, decltype(not i_vLeft))
// 		->	Contradiction
// 		{	return {};	}
// 		
// 		friend auto constexpr
// 		(	operator or
// 		)	(auto, Tautology)
// 		->	Tautology
// 		{	return {};	}
// 		
// 		friend auto constexpr
// 		(	operator or
// 		)	(Tautology, auto)
// 		->	Tautology
// 		{	return {};	}
// 		
// 		friend auto constexpr
// 		(	operator or
// 		)	(auto i_vLeft, Contradiction)
// 		->	decltype(i_vLeft)
// 		{	return i_vLeft;	}
// 		
// 		friend auto constexpr
// 		(	operator or
// 		)	(Contradiction, auto i_vRight)
// 		->	decltype(i_vRight)
// 		{	return i_vRight;	}
// 		
// 		friend auto constexpr
// 		(	operator or
// 		)	(auto i_vLeft, decltype(i_vLeft))
// 		->	decltype(i_vLeft)
// 		{	return i_vLeft;	}
// 		
// 		friend auto constexpr
// 		(	operator or
// 		)	(auto i_vLeft, decltype(not i_vLeft))
// 		->	Tautology
// 		{	return {};	}
// 		
// 		friend auto constexpr
// 		(	operator==
// 		)	(auto i_vLeft, decltype(i_vLeft))
// 		->	bool
// 		{	return true;	}
// 		
// 		friend auto constexpr
// 		(	operator<=>
// 		)	(auto i_vLeft, decltype(i_vLeft))
// 		->	std::partial_ordering
// 		{	return std::partial_ordering::equivalent;	}
// 	};
// 	
	template<ProtoClause... t_tpClause>
	class
		Disjunction
	;
	
	template<ProtoClause... t_tpClause>
	class
		Conjunction
	;
	
	
	template<ProtoAtomic t_tPredicate>
	struct
		Atomic
	{	using StatementType = t_tPredicate;
		static auto constexpr IsFullTerm = false;
		constexpr
		(	Atomic
		)	()
		=	default;
		
		explicit constexpr
		(	Atomic
		)	(	StatementType const
				&
			)
		{}
		
		explicit constexpr
		(	operator StatementType const&
		)	()	const
		;
		
		auto constexpr
		(	operator()
		)	(	auto const
				&...i_rpArgument
			)	const
		->	decltype(auto)
		{	return operator StatementType const&(i_rpArgument...);	}
		
		/// Every statement subsumes itself.
		/// Contradiction subsumes every atomic Statement.
		/// Every Atomic statement subsumes Tautology.
		/// No other Atomic statements subsume each other.
		template<ProtoAtomic t_tRightPredicate>
		static auto constexpr
		(	Subsumes
		)	(	Atomic<t_tRightPredicate>)
		->	bool
		{	return
				std::is_same_v<StatementType, t_tRightPredicate>
			or	std::is_same_v<StatementType, Contradiction>
			or	std::is_same_v<t_tRightPredicate, Tautology>
			;
		}
		
		template<ProtoClause... t_tpClause>
		static auto constexpr
		(	Subsumes
		)	(Conjunction<t_tpClause...>)
		->	bool
		;
		
		template<ProtoClause... t_tpClause>
		static auto constexpr
		(	Subsumes
		)	(Disjunction<t_tpClause...>)
		->	bool
		;
	};
	
	template<ProtoAtomic t_tPredicate>
	(	Atomic
	)	(t_tPredicate const&)
	->	Atomic<t_tPredicate>;
	
	static_assert(not ProtoAtomic<Atomic<Tautology>>);
	static_assert(ProtoClause<Atomic<Tautology>>);
	static_assert(ProtoStatement<Atomic<Tautology>>);
	
	/// Resolves patters of statements.
	/// Resolves to an an Atomic if the pattern is not specialized for Statement,
	template<typename t_tStatement>
	auto const constexpr inline
		Statement
	=	Atomic<t_tStatement>
		{}
	;
	
	/// Atomics resolve to atomics
	template<ProtoAtomic t_tPredicate>
	auto const constexpr inline
		Statement<Atomic<t_tPredicate>>
	=	Atomic<t_tPredicate>
		{}
	;
	
	template<ProtoAtomic t_tPredicate>
	template<ProtoClause... t_tpClause>
	auto constexpr
	(	Atomic<t_tPredicate>
	::	Subsumes
	)	(Conjunction<t_tpClause...>)
	->	bool
	{	return (... and Subsumes(Statement<t_tpClause>));	}
	
	template<ProtoAtomic t_tPredicate>
	template<ProtoClause... t_tpClause>
	auto constexpr
	(	Atomic<t_tPredicate>
	::	Subsumes
	)	(Disjunction<t_tpClause...>)
	->	bool
	{	return (... or Subsumes(Statement<t_tpClause>));	}
	
	/// Defines partial order based on subsumption of the statements.
	/// Note: This defines partial order on all types within this namespace.	
	template<typename t_tLeft, typename t_tRight>
	auto constexpr
	(	operator<=>
	)	(t_tLeft const&, t_tRight const&)
	->	std::partial_ordering
	{	if constexpr(std::is_same_v<t_tLeft, t_tRight>)
			return std::partial_ordering::equivalent;
		else
		{	ProtoStatement auto constexpr vLeft = Statement<t_tLeft>;
			ProtoStatement auto constexpr vRight = Statement<t_tRight>;
			
			/// compare based on subsumption
			if (vLeft.Subsumes(vRight) and vRight.Subsumes(vLeft))
				return std::partial_ordering::equivalent;
			else if (vLeft.Subsumes(vRight))
				return std::partial_ordering::greater;
			else if (vRight.Subsumes(vLeft))
				return std::partial_ordering::less;
			else
				return std::partial_ordering::unordered;
		}
	}
		
	/// Compares the statements for equivalence.
	/// Note: This defines equivalence for all types within this namespace.
	auto constexpr
	(	operator==
	)	(auto const& i_rLeft, auto const& i_rRight)
	->	bool
	{	return std::is_eq(i_rLeft <=> i_rRight);	}
	
	template<>
	constexpr
	(	Atomic<Tautology>
	::	operator StatementType const&
	)	()	const
	{	return (True);	}
	
	template<>
	constexpr
	(	Atomic<Contradiction>
	::	operator StatementType const&
	)	()	const
	{	return (False);	}
	
	///	Simple Negation.
	template<ProtoAtomic t_tPredicate>
	auto constexpr
	(	operator not
	)	(	Atomic<t_tPredicate>
		)
	->	Atomic<Negation<t_tPredicate>>
	{	return {};	}
	
	template<ProtoAtomic t_tPredicate>
	auto constexpr
	(	operator not
	)	(	t_tPredicate const&
		)
	->	Atomic<Negation<t_tPredicate>>
	{	return {};	}
	
	template<ProtoAtomic t_tPredicate>
	auto constexpr
	(	operator not
	)	(	Negation<t_tPredicate> const&
		)
	->	Atomic<t_tPredicate>
	{	return {};	}
		
	/// Double Negation.
	template<ProtoAtomic t_tPredicate>
	auto constexpr
	(	operator not
	)	(	Atomic<Negation<t_tPredicate>>
		)
	->	Atomic<t_tPredicate>
	{	return {};	}
	
	/// Any Negation resolves to the negation of the statement.
	template<ProtoAtomic t_tStatement>
	auto const constexpr inline
		Statement<Negation<t_tStatement>>
	=	not	Statement<t_tStatement>
	;
		
		
	template
		<	ProtoAtomic
				t_tLeft
		,	ProtoAtomic
				t_tRight
		>
	auto constexpr
	(	operator bitor
	)	(	Atomic<t_tLeft>
				i_vLeft
		,	Atomic<t_tRight>
				i_vRight
		)
	{	return i_vLeft or i_vRight;	}
	
	template
		<	ProtoAtomic
				t_tLeft
		,	ProtoAtomic
				t_tRight
		>
	auto constexpr
	(	operator bitand
	)	(	Atomic<t_tLeft>
				i_vLeft
		,	Atomic<t_tRight>
				i_vRight
		)
	{	return i_vLeft and i_vRight;	}

	template<ProtoClause... t_tpClause>
	class
		Disjunction
	{	constexpr
		(	Disjunction
		)	()
		=	default;
		
		template<ProtoAtomic t_tPrepend>
		static auto constexpr
		(	PrependDisjunctiveClause
		)	(	Atomic<t_tPrepend>)
		{	static_assert
			(	(Atomic<t_tPrepend>{} <=> Disjunction{})
			==	std::partial_ordering::unordered
			,	"Cannot prepend an Atomic to a Disjunction if one subsumes the other."
			);
			return Disjunction<t_tPrepend, t_tpClause...>{};
		}
		
		template<ProtoAtomic... t_tpPrepend>
		static auto constexpr
		(	PrependDisjunctiveClause
		)	(	Conjunction<t_tpPrepend...>)
		{	static_assert
			(	(Conjunction<t_tpPrepend...>{} <=> Disjunction{})
			==	std::partial_ordering::unordered
			,	"Cannot prepend a Conjunction to a Disjunction if one subsumes the other."
			);
			return Disjunction<Conjunction<t_tpPrepend...>, t_tpClause...>{};
		}
		
		template<ProtoAtomic t_tAppend>
		static auto constexpr
		(	AppendDisjunctiveClause
		)	(	Atomic<t_tAppend>)
		{	static_assert
			(	(Atomic<t_tAppend>{} <=> Disjunction{})
			==	std::partial_ordering::unordered
			,	"Cannot append an Atomic to a Disjunction if one subsumes the other."
			);
			return Disjunction<t_tpClause..., t_tAppend>{};
		}
		
		template<ProtoAtomic... t_tpPrepend>
		static auto constexpr
		(	AppendDisjunctiveClause
		)	(	Conjunction<t_tpPrepend...>)
		{	static_assert
			(	(Conjunction<t_tpPrepend...>{} <=> Disjunction{})
			==	std::partial_ordering::unordered
			,	"Cannot append a Conjunction to a Disjunction if one subsumes the other."
			);
			return Disjunction<t_tpClause..., Conjunction<t_tpPrepend...>>{};
		}
		
		template<ProtoClause...>
		friend class Disjunction;
		
		template<typename t_tLeft, typename t_tRight>
		friend auto constexpr
		(	operator or
		)	(t_tLeft const&, t_tRight const&)
		;
		
		template<typename t_tLeft, typename t_tRight>
		friend auto constexpr
		(	operator and
		)	(t_tLeft const&, t_tRight const&)
		;
		
	public:
		using StatementType = Disjunction;
		
		static auto constexpr IsFullTerm = (... or not ProtoAtomic<t_tpClause>);
		
		auto constexpr static ClauseCount = sizeof...(t_tpClause);
		static_assert(ClauseCount >= 2ul, "A Term must contain at least 2 clauses.");
		
		static auto constexpr
		(	Subsumes
		)	(Disjunction)
		->	bool
		{	return true;	}
		
		template<ProtoAtomic t_tRight>
		static auto constexpr
		(	Subsumes
		)	(	Atomic<t_tRight>
					i_rRight
			)
		{	return	(... and (Statement<t_tpClause>.Subsumes(i_rRight)));	}
		
		
		template
			<	ProtoAtomic
					t_tRight
			>
		auto constexpr
		(	operator bitor
		)	(	Atomic<t_tRight>
					i_vRight
			)	const
		{	return (... and (Statement<t_tpClause> bitor i_vRight));	}
		
		template
			<	ProtoAtomic
				... t_tpRightClause
			>
		auto constexpr
		(	operator bitor
		)	(	Conjunction<t_tpRightClause...>
			)	const
		{	return (... and (*this bitor Atomic<t_tpRightClause>{}));	}
		
		template
			<	ProtoClause
				...	t_tpRightClause
			>
		static auto constexpr
		(	Subsumes
		)	(	Disjunction<t_tpRightClause...>
					i_vRight
			)
		->	bool
// 		{	return (... or (Statement<t_tpClause>.Subsumes(i_vRight)));	}
		{	return (not i_vRight).Subsumes(not Disjunction{});	}
// 		{	return Subsumes((... bitor Statement<t_tpRightClause>));	}
		
		template
			<	ProtoClause
				...	t_tpRightClause
			>
		static auto constexpr
		(	Subsumes
		)	(	Conjunction<t_tpRightClause...>
					i_vRight
			)
		->	bool
		{	return (... and (Statement<t_tpClause>.Subsumes(i_vRight)));	}
		
		/// Idempotent law.
		friend auto constexpr
		(	operator or
		)	(	Disjunction
			,	Disjunction
			)
		->	Disjunction
		{	return {};	}
		
		/// Idempotent law.
		friend auto constexpr
		(	operator and
		)	(	Disjunction
			,	Disjunction
			)
		->	Disjunction
		{	return {};	}
		
		/// Forms the Conjunction of the negated clauses.
		auto constexpr
		(	operator not
		)	()	const
		{	return (... and not Statement<t_tpClause>);	}
	};
	
	template<ProtoClause... t_tpClause>
	(	Disjunction
	)	(	Disjunction<t_tpClause...> const
			&
		)
	->	Disjunction<t_tpClause...>
	;
	
	/// Any Disjunction resolves to the disjunction of the clauses.
	template<ProtoClause... t_tpClause>
	auto const constexpr inline
		Statement<Disjunction<t_tpClause...>>
	=	(	...
		or	Statement<t_tpClause>
		)
	;
	
	template<ProtoClause... t_tpClause>
	class
		Conjunction
	{	constexpr
		(	Conjunction
		)	()
		=	default;
		
		template<ProtoAtomic t_tPrepend>
		static auto constexpr
		(	PrependConjunctiveClause
		)	(	Atomic<t_tPrepend>)
		{	static_assert
			(	(Atomic<t_tPrepend>{} <=> Conjunction{})
			==	std::partial_ordering::unordered
			,	"Cannot prepend an Atomic to a Conjunction if one subsumes the other."
			);
			return Conjunction<t_tPrepend, t_tpClause...>{};
		}
		
		template<ProtoAtomic... t_tpPrependClause>
		static auto constexpr
		(	PrependConjunctiveClause
		)	(	Disjunction<t_tpPrependClause...>)
		{	static_assert
			(	(Disjunction<t_tpPrependClause...>{} <=> Conjunction{})
			==	std::partial_ordering::unordered
			,	"Cannot prepend an Disjunction to a Conjunction if one subsumes the other."
			);
			return Conjunction<Disjunction<t_tpPrependClause...>, t_tpClause...>{};
		}
		
		template<ProtoAtomic t_tAppend>
		static auto constexpr
		(	AppendConjunctiveClause
		)	(	Atomic<t_tAppend>)
		{	static_assert
			(	(Atomic<t_tAppend>{} <=> Conjunction{})
			==	std::partial_ordering::unordered
			,	"Cannot append an Atomic to a Conjunction if one subsumes the other."
			);
			return Conjunction<t_tpClause..., t_tAppend>{};
		}
		
		template<ProtoAtomic... t_tpAppendClause>
		static auto constexpr
		(	AppendConjunctiveClause
		)	(	Disjunction<t_tpAppendClause...>)
		{	static_assert
			(	(Disjunction<t_tpAppendClause...>{} <=> Conjunction{})
			==	std::partial_ordering::unordered
			,	"Cannot append an Disjunction to a Conjunction if one subsumes the other."
			);
			return Conjunction<t_tpClause..., Disjunction<t_tpAppendClause...>>{};
		}
		
		template<ProtoClause...>
		friend class Conjunction;
		
		template<typename t_tLeft, typename t_tRight>
		friend auto constexpr
		(	operator and
		)	(t_tLeft const&, t_tRight const&)
		;
		
		template<typename t_tLeft, typename t_tRight>
		friend auto constexpr
		(	operator or
		)	(t_tLeft const&, t_tRight const&)
		;
		
	public:
		using StatementType = Conjunction;
		
		static auto constexpr IsFullTerm = (... or not ProtoAtomic<t_tpClause>);
		
		auto constexpr static ClauseCount = sizeof...(t_tpClause);
		static_assert(ClauseCount >= 2ul, "A Term must contain at least 2 clauses.");
		
		static auto constexpr
		(	Subsumes
		)	(Conjunction)
		->	bool
		{	return true;	}
		
		template<ProtoAtomic t_tRight>
		static auto constexpr
		(	Subsumes
		)	(	Atomic<t_tRight>
					i_vRight
			)
		->	bool
		{	return (... or Statement<t_tpClause>.Subsumes(i_vRight));	}
		
		template
			<	ProtoClause
				...	t_tpRightClause
			>
		static auto constexpr
		(	Subsumes
		)	(	Disjunction<t_tpRightClause...>
					i_vRight
			)
		->	bool
		{	return (... or Statement<t_tpClause>.Subsumes(i_vRight));	}
				
		template
			<	ProtoAtomic
					t_tRight
			>
		auto constexpr
		(	operator bitand
		)	(	Atomic<t_tRight>
					i_vRight
			)	const
		{	return (... or (Statement<t_tpClause> bitand i_vRight));	}
		
		template
			<	ProtoAtomic
				... t_tpRightClause
			>
		auto constexpr
		(	operator bitand
		)	(	Conjunction<t_tpRightClause...>
			)	const
		{	return (... or (*this bitand Atomic<t_tpRightClause>{}));	}
		
		template
			<	ProtoClause
				...	t_tpRightClause
			>
		static auto constexpr
		(	Subsumes
		)	(	Conjunction<t_tpRightClause...>
					i_vRight
			)
		->	bool
		{	return (... and Conjunction{}.Subsumes(Statement<t_tpRightClause>));	}
		//{	return Subsumes((... bitand Statement<t_tpRightClause>));	}
		
		/// Idempotent law.
		friend auto constexpr
		(	operator and
		)	(	Conjunction
			,	Conjunction
			)
		->	Conjunction
		{	return {};	}
		
		/// Idempotent law.
		friend auto constexpr
		(	operator or
		)	(	Conjunction
			,	Conjunction
			)
		->	Conjunction
		{	return {};	}
		
		/// Forms the Disjunction of the negated clauses.
		auto constexpr
		(	operator not
		)	()	const
		{	return (... or not Statement<t_tpClause>);	}
	};
	
	template<ProtoClause... t_tpClause>
	(	Conjunction
	)	(	Conjunction<t_tpClause...> const
			&
		)
	->	Conjunction<t_tpClause...>
	;
	
	/// Any Conjunction resolves to the conjunction of the predicates.
	template<ProtoClause... t_tpClause>
	auto const constexpr inline
		Statement<Conjunction<t_tpClause...>>
	=	(	...
		and	Statement<t_tpClause>
		)
	;
	
	/// Forms the conjunction of two clauses.
	/// Note: Conjunctions of Disjunctions or Conjunctions are handled by different overloads.
	template
		<	typename
				t_tLeft
		,	typename
				t_tRight
		>
	auto constexpr
	(	operator and
	)	(	t_tLeft const
			&	i_rLeft
		,	t_tRight const
			&	i_rRight
		)
	{	/// optimization using idempotent law
		if constexpr(std::is_same_v<t_tLeft, t_tRight>)
			return i_rLeft;
		else if constexpr(ProtoAtomic<t_tLeft>)
			return Atomic{i_rLeft} and i_rRight;
		else if constexpr(ProtoAtomic<t_tRight>)
			return i_rLeft and Atomic{i_rRight};
		else
		{	ProtoStatement auto constexpr vLeft = t_tLeft{};
			ProtoStatement auto constexpr vRight = t_tRight{};
			
			if constexpr(vLeft.Subsumes(vRight))
				return i_rLeft;
			else if constexpr(vRight.Subsumes(vLeft))
				return i_rRight;
			else if constexpr(vLeft.Subsumes(not vRight) or vRight.Subsumes(not vLeft))
				return False;
			//	concatenate
			else 
			{	
				using LeftStatementType = typename decltype(vLeft)::StatementType;
				using RightStatementType = typename decltype(vRight)::StatementType;
				/// left is a Conjunction and right an Atomic or Disjunction
				if constexpr(requires{vLeft.AppendConjunctiveClause(vRight);})
					return vLeft.AppendConjunctiveClause(vRight);
				/// left is an Atomic or Disjunction and right is a Conjunction
				else if constexpr(requires{vRight.PrependConjunctiveClause(vLeft);})
					return vRight.PrependConjunctiveClause(vLeft);
				else
					return
						Conjunction
						<	LeftStatementType
						,	RightStatementType 
						>{}
					;
			}
		}
	}
		
	/// Concatenates the terms clause by clause.
	template
		<	ProtoClause
			...	t_tpLeftClause
		,	ProtoClause
			...	t_tpRightClause
		>
	auto constexpr
	(	operator and
	)	(	Conjunction<t_tpLeftClause...>
				i_vLeft
		,	Conjunction<t_tpRightClause...>
		)
	{	return (i_vLeft and ... and	Statement<t_tpRightClause>);	}
	
	template
		<	ProtoClause
			...	t_tpLeftClause
		,	ProtoClause
			...	t_tpRightClause
		>
	auto constexpr
	(	operator and
	)	(	Disjunction<t_tpLeftClause...>
				i_vLeft
		,	Conjunction<t_tpRightClause...>
		)
	{	return (i_vLeft and ... and Statement<t_tpRightClause>);	}
	
	template
		<	ProtoClause
			...	t_tpLeftClause
		,	ProtoClause
			...	t_tpRightClause
		>
	auto constexpr
	(	operator and
	)	(	Conjunction<t_tpLeftClause...>
		,	Disjunction<t_tpRightClause...>
				i_vRight
		)
	{	return (Statement<t_tpLeftClause> and ... and i_vRight);	}
	
	/// Performs double distribution.
	template
		<	ProtoClause
			...	t_tpLeftClause
		,	ProtoClause
			...	t_tpRightClause
		>
	auto constexpr
	(	operator and
	)	(	Disjunction<t_tpLeftClause...>
		,	Disjunction<t_tpRightClause...>
				i_vRight
		)
	requires
		ProtoTerm<Disjunction<t_tpLeftClause...>>
	or	ProtoTerm<Disjunction<t_tpRightClause...>>
	{	return (... or (Statement<t_tpLeftClause> and i_vRight));	}
	
	/// Distribution of an atomic.
	template
		<	ProtoClause
			...	t_tpLeftClause
		,	ProtoAtomic
				t_tRight
		>
	auto constexpr
	(	operator and
	)	(	Disjunction<t_tpLeftClause...>
		,	Atomic<t_tRight>
				i_vRight
		)
	requires
		ProtoTerm<Disjunction<t_tpLeftClause...>>
	{	return (... or (Statement<t_tpLeftClause> and i_vRight));	}
	
	/// Distribution of an atomic.
	template
		<	ProtoAtomic t_tLeft
		,	ProtoClause
			...	t_tpRightClause
		>
	auto constexpr
	(	operator and
	)	(	Atomic<t_tLeft>
				i_vLeft
		,	Disjunction<t_tpRightClause...>
		)
	requires
		ProtoTerm<Disjunction<t_tpRightClause...>>
	{	return (... or (i_vLeft and Statement<t_tpRightClause>));	}
	
	template
		<	typename
				t_tLeft
		,	typename
				t_tRight
		>
	auto constexpr
	(	operator or
	)	(	t_tLeft const
			&	i_rLeft
		,	t_tRight const
			&	i_rRight
		)
	{	/// optimization using idempotent law
		if constexpr(std::is_same_v<t_tLeft, t_tRight>)
			return i_rLeft;
		else if constexpr(ProtoAtomic<t_tLeft>)
			return Atomic{i_rLeft} or i_rRight;
		else if constexpr(ProtoAtomic<t_tRight>)
			return i_rLeft or Atomic{i_rRight};
		else
		{	ProtoStatement auto constexpr vLeft = t_tLeft{};
			ProtoStatement auto constexpr vRight = t_tRight{};
			if constexpr(vLeft.Subsumes(vRight))
				return i_rRight;
			else if constexpr(vRight.Subsumes(vLeft))
				return i_rLeft;
			else if constexpr((not vLeft).Subsumes(vRight) or (not vRight).Subsumes(vLeft))
				return True;
			//	concatenate
			else 
			{	using LeftStatementType = typename decltype(vLeft)::StatementType;
				using RightStatementType = typename decltype(vRight)::StatementType;
				/// left is a Disjunction and right an Atomic or Conjunction
				if constexpr(requires{vLeft.AppendDisjunctiveClause(vRight);})
					return vLeft.AppendDisjunctiveClause(vRight);
				/// left is an Atomic or Conjunction and right is a Disjunction
				else if constexpr(requires{vRight.PrependDisjunctiveClause(vLeft);})
					return vRight.PrependDisjunctiveClause(vLeft);
				else
					return
						Disjunction
						<	LeftStatementType
						,	RightStatementType 
						>{}
					;
			}
		}
	}
		
	/// Concatenates the terms clause by clause.
	template
		<	ProtoClause
			...	t_tpLeftClause
		,	ProtoClause
			...	t_tpRightClause
		>
	auto constexpr
	(	operator or
	)	(	Disjunction<t_tpLeftClause...>
				i_vLeft
		,	Disjunction<t_tpRightClause...>
		)
	{	return (i_vLeft or ... or Statement<t_tpRightClause>);	}
	
	template
		<	ProtoClause
			... t_tpLeftClause
		,	ProtoClause
			... t_tpRightClause
		>
	auto constexpr
	(	operator or
	)	(	Conjunction<t_tpLeftClause...>
				i_vLeft
		,	Disjunction<t_tpRightClause...>
		)
	{	return (i_vLeft or ... or Statement<t_tpRightClause>);	}
	
	template
		<	ProtoClause
			... t_tpLeftClause
		,	ProtoClause
			... t_tpRightClause
		>
	auto constexpr
	(	operator or
	)	(	Disjunction<t_tpLeftClause...>
		,	Conjunction<t_tpRightClause...>
				i_vRight
		)
	{	return (Statement<t_tpLeftClause> or ... or i_vRight);	}
		
	/// Performs double distribution.
	template
		<	ProtoClause
			... t_tpLeftClause
		,	ProtoClause
			... t_tpRightClause
		>
	auto constexpr
	(	operator or 
	)	(	Conjunction<t_tpLeftClause...>
		,	Conjunction<t_tpRightClause...>
				i_vRight
		)
	requires
		ProtoTerm<Conjunction<t_tpLeftClause...>>
	or	ProtoTerm<Conjunction<t_tpRightClause...>>
	{	return (... and (Statement<t_tpLeftClause> or i_vRight));	}
		
	/// Distribution of an atomic.
	template
		<	ProtoClause
			... t_tpLeftClause
		,	 ProtoAtomic
				t_tRight
		>
	auto constexpr
	(	operator or
	)	(	Conjunction<t_tpLeftClause...>
		,	Atomic<t_tRight>
				i_vRight
		)
	requires
		ProtoTerm<Conjunction<t_tpLeftClause...>>
	{	return (... and (Statement<t_tpLeftClause> or i_vRight));	}
	
	/// Distribution of an atomic.
	template
		<	ProtoAtomic
				t_tLeft
		,	ProtoClause
			...	t_tpRightClause
		>
	auto constexpr
	(	operator or
	)	(	Atomic<t_tLeft>
				i_vLeft
		,	Conjunction<t_tpRightClause...>
		)
	requires
		ProtoTerm<Conjunction<t_tpRightClause...>>
	{	return (... and (i_vLeft or Statement<t_tpRightClause>));	}
	
	/// Equality
	static_assert(True == True);
	static_assert(False == False);
	static_assert(True != False);
	static_assert((not True) == False);
	static_assert(True == (not False));
	
	/// Ordering
	static_assert(True < False);
	static_assert(True <= False);
	static_assert(not (True > False));
	static_assert(not (True >= False));
	
	/// Conjunction
	static_assert((True  and True ) == True );
	static_assert((True  and False) == False);
	static_assert((False and True ) == False);
	static_assert((False and False) == False);
	
	/// Disjunction
	static_assert((True  or  True ) == True );
	static_assert((True  or  False) == True);
	static_assert((False or  True ) == True);
	static_assert((False or  False) == False);
	
// 	namespace Test
// 	{
		struct P {} constexpr inline p{};
		struct Q {} constexpr inline q{};
		struct R {} constexpr inline r{};
		struct S {} constexpr inline s{};
		
		/// Result types
		static_assert
		(	std::is_same_v
			<	Conjunction<P, Q, R, S>
			,	decltype(p and q and r and s)
			>
		);
		static_assert
		(	std::is_same_v
			<	Conjunction<P, Disjunction<Q, R, S>>
			,	decltype(p and (q or r or s))
			>
		);
		static_assert
		(	std::is_same_v
			<	Disjunction<P, Q, Conjunction<R, S>>
			,	decltype((p or q) or (r and s))
			>
		);
		static_assert
		(	std::is_same_v
			<	Conjunction<P, Q, Disjunction<R, S>>
			,	decltype(p and (q and (r or s)))
			>
		);
		
		static_assert
		(	std::is_same_v
			<	Conjunction<Disjunction<P, Q>, R>
			,	decltype((p or q) and r)
			>
		);
		
		static_assert
		(	std::is_same_v
			<	Disjunction<P, Q, R, S>
			,	decltype(p or q or r or s)
			>
		);
		
		static_assert
		(	std::is_same_v
			<	Disjunction<P, Conjunction<Q, R>>
			,	decltype(p or (q and r))
			>
		);
		
		static_assert
		(	std::is_same_v
			<	Disjunction<Conjunction<P, Q>, R>
			,	decltype((p and q) or r)
			>
		);
		
		// TODO
		//auto constexpr foo = ((p and q) or r) and (s and (p or q));
		
		/// Ordering
		static_assert(p >= p);
		static_assert(q >= q);
		static_assert(r >= r);
		static_assert((p <=> q) == std::partial_ordering::unordered);
		static_assert((p <=> r) == std::partial_ordering::unordered);
		static_assert((q <=> r) == std::partial_ordering::unordered);
		
		static_assert((p and q) > p);
		static_assert(p < (p and q));
		static_assert((p and q) > q);
		static_assert(p < (p and q));
		
		static_assert((p and q and r) > p);
		static_assert(p < (p and q and r));
		static_assert((p and q and r) > q);
		static_assert(q < (p and q and r));
		static_assert((p and q and r) > r);
		static_assert(r < (p and q and r));
		
		static_assert((p and q and r) > (p and q));
		static_assert((p and q) < (p and q and r));
		static_assert((p and q and r) > (p and r));
		static_assert((p and r) < (p and q and r));
		static_assert((p and q and r) > (q and r));
		static_assert((q and r) < (p and q and r));
		
		static_assert((p or q) < p);
		static_assert(p > (p or q));
		static_assert((p or q) < q);
		static_assert(p > (p or q));
		
		static_assert((p or q or r) < p);
		static_assert(p > (p or q or r));
		static_assert((p or q or r) < q);
		static_assert(q > (p or q or r));
		static_assert((p or q or r) < r);
		static_assert(r > (p or q or r));
		
		static_assert((p or q or r) < (p or q));
		static_assert((p or q) > (p or q or r));
		static_assert((p or q or r) < (p or r));
		static_assert((p or r) > (p or q or r));
		static_assert((p or q or r) < (q or r));
		static_assert((q or r) > (p or q or r));
		
		///	Identity law
		static_assert((p and True) == p);
		static_assert((p or False) == p);
		/// Domination law
		static_assert((p and False) == False);
		static_assert((p or  True ) == True);
		/// Idempotent law
		static_assert((p and p) == p);
		static_assert((p or  p) == p);
		/// Double negation law
		static_assert((not(not p)) == p);
		/// Commutative law
		static_assert((p and q) == (q and p));
		static_assert((p or  q) == (q or  p));
		/// Associative law
		static_assert(((p and q) and r) == (p and (q and r)));
		static_assert(((p or  q) or  r) == (p or  (q or  r)));
		/// Distributive law
		auto constexpr pqr = p or (q and r);
		auto constexpr pqpr = (p or q) and (p or r);
		static_assert(pqr.Subsumes(pqpr));
		static_assert(pqpr.Subsumes(pqr));
		static_assert((p or  (q and r)) >= ((p or  q) and (p or  r)));
		static_assert((p and (q or  r)) <= ((p and q) or  (p and r)));
		static_assert((p or  (q and r)) == ((p or  q) and (p or  r)));
		static_assert((p and (q or  r)) == ((p and q) or  (p and r)));
		/// De Morgan's law
		static_assert((not(p and q)) == ((not p) or  (not q)));
		static_assert((not(p or  q)) == ((not p) and (not q)));
		/// Absorbtion laws
		static_assert((p or  (p and q)) == p);
		static_assert((p and (p or  q)) == p);
		/// Negation law
		static_assert((p and not p) == False);
		static_assert((p or  not p) == True);
// 	}
}
