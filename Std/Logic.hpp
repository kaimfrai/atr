#pragma once

#include <type_traits>
#include <compare>

namespace
	_
{	template<typename t_tProto>
	concept ProtoAtomic
	=	not requires { t_tProto::ClauseCount; }
	;
	
	template<typename t_tProto>
	concept ProtoClause
	=	ProtoAtomic<t_tProto>
	or	not t_tProto::IsFullTerm
	;
	
	template<typename t_tProto>
	concept ProtoStatement
	=	requires
		{	requires
				(t_tProto::Subsumes(t_tProto{}))
			;
			{ (t_tProto::IsFullTerm) } -> std::same_as<bool const&>;
// 			typename t_tProto::StatementType;
		}
	;
	
	
	struct
		Always
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
	};
	static_assert(ProtoAtomic<Always>);
	static_assert(ProtoClause<Always>);
	static_assert(not ProtoStatement<Always>);
	
	struct
		Never
	{	auto constexpr
		(	operator()
		)	(	auto const
				&...
			)	const
		->	bool
		{	return false;	}
		
		explicit constexpr
		(	operator bool
		)	()	const
		{	return operator()();	}
	};
	
	static_assert(ProtoAtomic<Never>);	
	static_assert(ProtoClause<Never>);
	static_assert(not ProtoStatement<Never>);
	
	template<ProtoClause... t_tpClause>
	class
		Any
	;
	
	template<ProtoClause... t_tpClause>
	class
		All
	;
	
	template<typename t_tPredicate>
	struct
		Not
	{
		using NegationType = Not<t_tPredicate>;
	};
	
	template<typename t_tAtomic>
	using
		Negate
	= 	typename
		Not<t_tAtomic>
	::	NegationType
	;
	
	template<typename t_tPredicate>
	struct
		Not<Not<t_tPredicate>>
	{
		using NegationType = t_tPredicate;
	};
	
	template<>
	struct
		Not<Always>
	{
		using NegationType = Never;
	};
	
	template<>
	struct
		Not<Never>
	{
		using NegationType = Always;
	};
	
	template<ProtoClause... t_tpClause>
	struct
		Not<All<t_tpClause...>>
	{
		using NegationType = Any<Negate<t_tpClause>...>;
	};
	
	template<ProtoClause... t_tpClause>
	struct
		Not<Any<t_tpClause...>>
	{
		using NegationType = All<Negate<t_tpClause>...>;
	};
	
	template<typename t_tPredicate>
	auto constexpr
	(	operator not
	)	(	t_tPredicate const
			&
		)
	{	using NegatedType = Negate<t_tPredicate>;
		if constexpr(std::default_initializable<NegatedType>)
			return NegatedType{};
		else
			return All<NegatedType>{};
	}

	template<ProtoClause t_tClause>
	using
		AtomicToAll
	=	std::conditional_t
		<	ProtoAtomic<t_tClause>
		,	All<t_tClause>
		,	t_tClause
		>
	;
	
	template<ProtoClause t_tClause>
	using
		AtomicToAny
	=	std::conditional_t
		<	ProtoAtomic<t_tClause>
		,	Any<t_tClause>
		,	t_tClause
		>
	;
	
	template<ProtoClause... t_tpClause>
	class
		All
	{
	public:
		constexpr
		(	All
		)	()
		=	default;
		
		friend class Test;
		
		static auto constexpr IsFullTerm = (... or not ProtoAtomic<t_tpClause>);
		static auto constexpr ClauseCount = sizeof...(t_tpClause);
		static_assert(ClauseCount >= 1ul, "A All must contain at least one clause.");
		
		template<ProtoClause... t_tpRight>
		static auto constexpr
		(	Subsumes
		)	(	Any<t_tpRight...>
					i_vRight
			)
		->	bool
		{	
			if constexpr(ProtoClause<Any<t_tpRight...>>)
			{
				if constexpr(ClauseCount == 1ul)
				{	if constexpr (sizeof...(t_tpRight) == 1ul)
						return
						(	...
						and	(	std::is_same_v<t_tpClause, t_tpRight>
							or	std::is_same_v<t_tpClause, Never>
							or	std::is_same_v<Always, t_tpRight>
							)
						);
					else
						return (... or Any<t_tpClause...>::Subsumes(All<t_tpRight>{}));
				}
				else
					return (... or AtomicToAny<t_tpClause>::Subsumes(i_vRight));
			}
			else
				//return Negate<All>::Subsumes(not i_vRight);
				return (not All{}) or i_vRight;
				//return (... and AtomicToAny<t_tpClause>{}).Subsumes((... or AtomicToAll<t_tpRight>{}));
		}
		
		template<ProtoClause... t_tpRight>
		static auto constexpr
		(	Subsumes
		)	(	All<t_tpRight...>
					i_vRight
			)
		->	bool
		{	if constexpr((... and ProtoAtomic<t_tpRight>))
				return (... and Subsumes(Any<t_tpRight>{}));
			else if constexpr(ProtoClause<All>)
			{	if constexpr(ClauseCount == 1ul)
					return Any<t_tpClause...>::Subsumes(i_vRight);
				else
					return Any<All>::Subsumes(i_vRight);
			}
			else
				return (... and AtomicToAny<t_tpClause>{}).Subsumes(i_vRight);
		}
		
		template<ProtoStatement t_tStatement>
		static bool constexpr
			SubsumesStatement
		=	Subsumes(t_tStatement{})
		;
		
		template<ProtoClause... t_tpRight>
		static auto constexpr
		(	And
		)	(	Any<t_tpRight...>
			)
		{	if constexpr(ProtoClause<Any<t_tpRight...>>)
			{	if constexpr(sizeof...(t_tpRight) <= 1ul)
					return All<t_tpClause..., t_tpRight...>{};
				else
					return All<t_tpClause..., Any<t_tpRight...>>{};
			}
			else
				return
				(	...
				or	(	All{}
					and	AtomicToAny<t_tpRight>{}
					)
				);
		}
		
		template<ProtoClause... t_tpRight>
		static auto constexpr
		(	And
		)	(	All<t_tpRight...>
			)
		{	if constexpr(sizeof...(t_tpClause) <= 1ul or sizeof...(t_tpRight) <= 1ul)
				return All<t_tpClause..., t_tpRight...>{};
			else
				return
				(	All{}
				and	...
				and	AtomicToAny<t_tpRight>{}
				);
		}
		
		template<ProtoClause... t_tpRight>
		static auto constexpr
		(	Or
		)	(	Any<t_tpRight...>
			)
		{	if constexpr(ProtoClause<All>)
			{	if constexpr(ClauseCount <= 1ul)
					return Any<t_tpClause..., t_tpRight...>{};
				else
					return Any<All, t_tpRight...>{};
			}
			else
				return
				(	All{}
				or	...
				or	AtomicToAll<t_tpRight>{}
				);
		}
		
		template<ProtoClause... t_tpRight>
		static auto constexpr
		(	Or
		)	(	All<t_tpRight...>
					i_vRight
			)
		{	if constexpr(ProtoClause<All> and ProtoClause<All<t_tpRight...>>)
				return
					std::conditional_t
					<	ClauseCount <= 1ul
					,	Any<t_tpClause...>
					,	Any<All>
					>
				::	Or(i_vRight)
				;
			else
				return
				(	...
				and	(	All{}
					or	AtomicToAny<t_tpRight>{}
					)
				);
		}
		
		auto constexpr
		(	operator not
		)	()	const
		{	return Negate<All>{};	}
	};	
	
	template<ProtoClause... t_tpClause>
	class
		Any
	{
	public:
		constexpr
		(	Any
		)	()
		=	default;
		friend class Test;
		
		static auto constexpr IsFullTerm = (... or not ProtoAtomic<t_tpClause>);
		static auto constexpr ClauseCount = sizeof...(t_tpClause);
		static_assert(ClauseCount >= 1ul, "A Any must contain at least one clause.");
		
		template<ProtoClause... t_tpRight>
		static auto constexpr
		(	Subsumes
		)	(	Any<t_tpRight...>
					i_vRight
			)
		->	bool
		{	if constexpr((... and ProtoAtomic<t_tpRight>))
			{	if constexpr(ClauseCount == 1ul)
				{	/// Two atomics
					if constexpr(sizeof...(t_tpRight) == 1ul)
						return
						(	...
						and	(	std::is_same_v<t_tpClause, t_tpRight>
							or	std::is_same_v<t_tpClause, Never>
							or	std::is_same_v<Always, t_tpRight>
							)
						);
					else
						return (... or All<t_tpClause...>::Subsumes(All<t_tpRight>{}));
				}
				else
					return (... and AtomicToAll<t_tpClause>::Subsumes(i_vRight));
			}
			else if constexpr(ProtoClause<Any>)
			{	if constexpr(ClauseCount <= 1ul)
					return All<t_tpClause...>::Subsumes(i_vRight);
				else
					return All<Any>::Subsumes(i_vRight);
			}
			else
				return (... or AtomicToAll<t_tpClause>{}).Subsumes(i_vRight);
		}
		
		template<ProtoClause... t_tpRight>
		static auto constexpr
		(	Subsumes
		)	(	All<t_tpRight...>
			)
		->	bool
		{	return (... and Subsumes(AtomicToAny<t_tpRight>{}));	}
		
		template<ProtoStatement t_tStatement>
		static bool constexpr
			SubsumesStatement
		=	Subsumes(t_tStatement{})
		;
		
		template<ProtoClause... t_tpRight>
		static auto constexpr
		(	And
		)	(	Any<t_tpRight...>
					i_vRight
			)
		{	if constexpr(ProtoClause<Any> and ProtoClause<Any<t_tpRight...>>)
			{	return
					std::conditional_t
					<	ClauseCount <= 1ul
					,	All<t_tpClause...>
					,	All<Any>
					>
				::	And(i_vRight)
				;
			}
			else
				return
				(	...
				or	(	Any{}
					and	AtomicToAll<t_tpRight>{}
					)
				);
		}
		
		template<ProtoClause... t_tpRight>
		static auto constexpr
		(	And
		)	(	All<t_tpRight...>
			)
		{	if constexpr(ProtoClause<Any>)
			{	if constexpr(ClauseCount <= 1ul)
					return All<t_tpClause..., t_tpRight...>{};
				else
					return All<Any, t_tpRight...>{};
			}
			else
				return
				(	Any{}
				and	...
				and	AtomicToAny<t_tpRight>{}
				);
		}
		
		template<ProtoClause... t_tpRight>
		static auto constexpr
		(	Or
		)	(	Any<t_tpRight...>
			)
		{	if constexpr(ClauseCount <= 1ul or sizeof...(t_tpRight) <= 1ul)
				return Any<t_tpClause..., t_tpRight...>{};
			else
				return
				(	Any{}
				or	...
				or	AtomicToAll<t_tpRight>{}
				);
		}
		
		template<ProtoClause... t_tpRight>
		static auto constexpr
		(	Or
		)	(	All<t_tpRight...>
			)
		{	if constexpr(ProtoClause<All<t_tpRight...>>)
			{	if constexpr(sizeof...(t_tpRight) <= 1ul)
					return Any<t_tpClause..., t_tpRight...>{};
				else
					return Any<t_tpClause..., All<t_tpRight...>>{};
			}
			else
				return
				(	...
				and	(	Any{}
					or	AtomicToAny<t_tpRight>{}
					)
				);
		}
		
		auto constexpr
		(	operator not
		)	()	const
		{	return Negate<Any>{};	}
	};
	
	static_assert(not ProtoAtomic<All<Always>>);
	static_assert(ProtoClause<All<Always>>);
	static_assert(ProtoStatement<All<Always>>);
	static_assert(not ProtoAtomic<All<Never>>);
	static_assert(ProtoClause<All<Never>>);
	static_assert(ProtoStatement<All<Never>>);
	
	static_assert(not ProtoAtomic<Any<Always>>);
	static_assert(ProtoClause<Any<Always>>);
	static_assert(ProtoStatement<Any<Always>>);
	static_assert(not ProtoAtomic<Any<Never>>);
	static_assert(ProtoClause<Any<Never>>);
	static_assert(ProtoStatement<Any<Never>>);
	
	template<typename t_tLeft, typename t_tRight>
	auto constexpr
	(	operator<=>
	)	(	t_tLeft const
			&	i_rLeft
		,	t_tRight const
			&	i_rRight
		)
	->	std::partial_ordering
	{	if constexpr(std::is_same_v<t_tLeft, t_tRight>)
			return std::partial_ordering::equivalent;
		else if constexpr(ProtoAtomic<t_tLeft>)
			return All<t_tLeft>{} <=> i_rRight;
		else if constexpr(ProtoAtomic<t_tRight>)
			return i_rLeft <=> Any<t_tRight>{};
		else
		{	ProtoStatement auto& rLeft = i_rLeft;
			ProtoStatement auto& rRight = i_rRight;
			
			if	(	rLeft.Subsumes(rRight)
				and	rRight.Subsumes(rLeft)
				)
				return std::partial_ordering::equivalent;
			else if (rLeft.Subsumes(rRight))
				return std::partial_ordering::greater;
			else if (rRight.Subsumes(rLeft))
				return std::partial_ordering::less;
			else
				return std::partial_ordering::unordered;
		}
	}
	
	auto constexpr
	(	operator==
	)	(	auto const
			&	i_rLeft
		,	auto const
			&	i_rRight
		)
	->	bool
	{	return std::is_eq(i_rLeft <=> i_rRight);	}
	
	template<typename t_tLeft, typename t_tRight>
	auto constexpr
	(	operator and
	)	(	t_tLeft const
			&	i_rLeft
		,	t_tRight const
			&	i_rRight
		)
	->	decltype(auto)
	{	if constexpr
			(	std::is_same_v<t_tLeft, t_tRight>
			or	std::is_same_v<t_tLeft, Never>
			or	std::is_same_v<Always, t_tRight>
			)
			return i_rLeft;
		else if constexpr
			(	std::is_same_v<t_tLeft, Always>
			or	std::is_same_v<Never, t_tRight>
			)
			return i_rRight;
		else if constexpr(ProtoAtomic<t_tLeft>)
			return Any<t_tLeft>{} and i_rRight;
		else if constexpr(ProtoAtomic<t_tRight>)
			return i_rLeft and Any<t_tRight>{};
		else
		{	ProtoStatement auto constexpr vLeft = t_tLeft{};
			ProtoStatement auto constexpr vRight = t_tRight{};
		
			if constexpr(vLeft.Subsumes(vRight))
				return vLeft;
			else if constexpr(vRight.Subsumes(vLeft))
				return vRight;
			else if constexpr
				(	vLeft.Subsumes(not vRight)
				or	vRight.Subsumes(not vLeft)
				)
				return Never{};
			else
				return vLeft.And(vRight);
		}
	}
	
	template<typename t_tLeft, typename t_tRight>
	auto constexpr
	(	operator or
	)	(	t_tLeft const
			&	i_rLeft
		,	t_tRight const
			&	i_rRight
		)
	->	decltype(auto)
	{	if constexpr
			(	std::is_same_v<t_tLeft, t_tRight>
			or	std::is_same_v<t_tLeft, Always>
			or	std::is_same_v<Never, t_tRight>
			)
			return i_rLeft;
		else if constexpr
			(	std::is_same_v<t_tLeft, Never>
			or	std::is_same_v<Always, t_tRight>
			)
			return i_rRight;
		else if constexpr(ProtoAtomic<t_tLeft>)
			return All<t_tLeft>{} or i_rRight;
		else if constexpr(ProtoAtomic<t_tRight>)
			return i_rLeft or All<t_tRight>{};
		else
		{	ProtoStatement auto constexpr vLeft = t_tLeft{};
			ProtoStatement auto constexpr vRight = t_tRight{};
		
			if constexpr(vLeft.Subsumes(vRight))
				return vRight;
			else if constexpr(vRight.Subsumes(vLeft))
				return vLeft;
			else if constexpr
				(	(not vLeft).Subsumes(vRight)
				or	(not vRight).Subsumes(vLeft)
				)
				return Always{};
			else
				return vLeft.Or(vRight);
		}
	}
	
	

	
	class
		Test final
	{	static Always constexpr inline Always {};
		static Never constexpr inline Never {};
		
		template<ProtoClause auto... t_tpClause>
		static All<decltype(t_tpClause)...> constexpr All{};
		
		template<ProtoClause auto... t_tpClause>
		static Any<decltype(t_tpClause)...> constexpr Any{};

		static struct P_ {} constexpr inline P{};
		static struct Q_ {} constexpr inline Q{};
		static struct R_ {} constexpr inline R{};
		static struct S_ {} constexpr inline S{};
		
		static auto constexpr
			Unordered
		=	std::partial_ordering::unordered
		;
		/// Ordering
		static_assert(Always == Always);
		static_assert(Always < Never);
		static_assert(Always < P);
		static_assert(Always < All<P, Q>);
		static_assert(Always < Any<P, Q>);
		
		static_assert(Never > Always);
		static_assert(Never == Never);
		static_assert(Never > P);
		static_assert(Never > All<P, Q>);
		static_assert(Never > Any<P, Q>);
		
		static_assert(P > Always);
		static_assert(P < Never);
		static_assert(P == P);
		static_assert(P <=> R == Unordered);
		static_assert(P <=> All<Q, R> == Unordered);
		static_assert(P <=> Any<Q, R> == Unordered);
		
		static_assert(All<P, Q> > Always);
		static_assert(All<P, Q> < Never);
		static_assert(All<P, Q> <=> R == Unordered);
		static_assert(All<P, Q> == All<P, Q>);
		static_assert(All<P, Q> == All<Q, P>);
		static_assert(All<P, Q> <=> All<P, R> == Unordered);
		static_assert(All<P, Q> <=> All<R, P> == Unordered);
		static_assert(All<P, Q> <=> All<Q, R> == Unordered);
		static_assert(All<P, Q> <=> All<R, Q> == Unordered);
		static_assert(All<P, Q> <=> All<R, S> == Unordered);
		static_assert(All<P, Q> <=> Any<R, S> == Unordered);
		
		static_assert(Any<P, Q> > Always);
		static_assert(Any<P, Q> < Never);
		static_assert(Any<P, Q> <=> R == Unordered);
		static_assert(Any<P, Q> <=> All<R, S> == Unordered);
		static_assert(Any<P, Q> == Any<P, Q>);
		static_assert(Any<P, Q> == Any<Q, P>);
		static_assert(Any<P, Q> <=> Any<P, R> == Unordered);
		static_assert(Any<P, Q> <=> Any<R, P> == Unordered);
		static_assert(Any<P, Q> <=> Any<R, Q> == Unordered);
		static_assert(Any<P, Q> <=> Any<Q, R> == Unordered);
		static_assert(Any<P, Q> <=> Any<R, S> == Unordered);
		
		/// Ordering with subset and superset permutations
		static_assert(P < All<P, Q>);
		static_assert(P < All<Q, P>);
		static_assert(P > Any<P, Q>);
		static_assert(P > Any<Q, P>);
		
		static_assert(All<P, Q> > P);
		static_assert(All<P, Q> > Q);
		static_assert(All<P, Q> < All<P, Q, R>);
		static_assert(All<P, Q> < All<P, R, Q>);
		static_assert(All<P, Q> < All<Q, P, R>);
		static_assert(All<P, Q> < All<Q, R, P>);
		static_assert(All<P, Q> < All<R, P, Q>);
		static_assert(All<R, Q> < All<R, Q, P>);
		
		static_assert(Any<P, Q> < P);
		static_assert(Any<P, Q> < Q);
		static_assert(Any<P, Q> > Any<P, Q, R>);
		static_assert(Any<P, Q> > Any<P, R, Q>);
		static_assert(Any<P, Q> > Any<Q, P, R>);
		static_assert(Any<P, Q> > Any<Q, R, P>);
		static_assert(Any<P, Q> > Any<R, P, Q>);
		static_assert(Any<R, Q> > Any<R, Q, P>);
		
		static_assert(All<P, Q, R> > All<P, Q>);
		static_assert(All<P, Q, R> > All<P, R>);
		static_assert(All<P, Q, R> > All<Q, P>);
		static_assert(All<P, Q, R> > All<Q, R>);
		static_assert(All<P, Q, R> > All<R, P>);
		static_assert(All<P, Q, R> > All<R, Q>);
		
		static_assert(Any<P, Q, R> < Any<P, Q>);
		static_assert(Any<P, Q, R> < Any<P, R>);
		static_assert(Any<P, Q, R> < Any<Q, P>);
		static_assert(Any<P, Q, R> < Any<Q, R>);
		static_assert(Any<P, Q, R> < Any<R, P>);
		static_assert(Any<P, Q, R> < Any<R, Q>);
		
		/// All and Any ordered permutations
		static_assert(All<P, Q> > Any<P, Q>);
		static_assert(All<P, Q> > Any<Q, P>);
		static_assert(All<P, Q> > Any<P, Q, R>);
		static_assert(All<P, Q> > Any<P, R, Q>);
		static_assert(All<P, Q> > Any<Q, P, R>);
		static_assert(All<P, Q> > Any<Q, R, P>);
		static_assert(All<P, Q> > Any<R, P, Q>);
		static_assert(All<P, Q> > Any<R, Q, P>);
		
		static_assert(Any<P, Q> < All<P, Q>);
		static_assert(Any<P, Q> < All<Q, P>);
		static_assert(Any<P, Q> < All<P, Q, R>);
		static_assert(Any<P, Q> < All<P, R, Q>);
		static_assert(Any<P, Q> < All<Q, P, R>);
		static_assert(Any<P, Q> < All<Q, R, P>);
		static_assert(Any<P, Q> < All<R, P, Q>);
		static_assert(Any<P, Q> < All<R, Q, P>);
		
		/// Simple Negation
		static_assert(Always == not Never);
		static_assert(Never == not Always);
		static_assert(P != not P);
		static_assert((P and not P) == Never);
		static_assert((P or not P) == Always);
		static_assert(((P and Q) and not P) == Never);
		static_assert(((not P and Q) and P) == Never);
		static_assert(((P or Q) or not P) == Always);
		static_assert(((not P or Q) or P) == Always);
		
		static auto constexpr f = ((P and Q) or not P);
		static auto constexpr g = (Q or not P);
		static auto constexpr gg = not All<g>;
		static auto constexpr ff = not f;
		static_assert(f.Subsumes(g));
		static_assert(g.Subsumes(f));
		static_assert(((P and Q) or not P) == (Q or not P));
		static_assert(((not P and Q) or P) == (Q or P));
		static_assert(((P or Q) and not P) == (Q and not P));
		static_assert(((not P or Q) and P) == (Q and P));
		
		static_assert((P and Q) != not (P and Q));
		static_assert((P and Q) != not (Q and P));
		static_assert((Q and P) != not (P and Q));
		static_assert((Q and P) != not (Q and P));
		
		static_assert((P or Q) != not (P or Q));
		static_assert((P or Q) != not (Q or P));
		static_assert((Q or P) != not (P or Q));
		static_assert((Q or P) != not (Q or P));
		
		static_assert((P and Q) == not (not P or not Q), "De Morgan's law violated.");
		static_assert((P and Q) == not (not Q or not P), "De Morgan's law violated.");
		static_assert((P and not Q) == not (not P or Q), "De Morgan's law violated.");
		static_assert((P and not Q) == not (Q or not P), "De Morgan's law violated.");
		static_assert((not P and Q) == not (P or not Q), "De Morgan's law violated.");
		static_assert((not P and Q) == not (not Q or P), "De Morgan's law violated.");
		static_assert((not P and not Q) == not (P or Q), "De Morgan's law violated.");
		static_assert((not P and not Q) == not (Q or P), "De Morgan's law violated.");
		
		static_assert((P or Q) == not (not P and not Q), "De Morgan's law violated.");
		static_assert((P or Q) == not (not Q and not P), "De Morgan's law violated.");
		static_assert((P or not Q) == not (not P and Q), "De Morgan's law violated.");
		static_assert((P or not Q) == not (Q and not P), "De Morgan's law violated.");
		static_assert((not P or Q) == not (P and not Q), "De Morgan's law violated.");
		static_assert((not P or Q) == not (not Q and P), "De Morgan's law violated.");
		static_assert((not P or not Q) == not (P and Q), "De Morgan's law violated.");
		static_assert((not P or not Q) == not (Q and P), "De Morgan's law violated.");
		
		/// Double negation
		static_assert(Always == not not Always, "Double negation law violated.");
		static_assert(Never == not not Never, "Double negation law violated.");
		static_assert(P == not not P, "Double negation law violated.");
		
		static_assert((P and Q) == not not (P and Q), "Double negation law violated.");
		static_assert((P and Q) == not not (Q and P), "Double negation law violated.");
		static_assert((Q and P) == not not (P and Q), "Double negation law violated.");
		static_assert((Q and P) == not not (Q and P), "Double negation law violated.");
		
		static_assert((P or Q) == not not (P or Q), "Double negation law violated.");
		static_assert((P or Q) == not not (Q or P), "Double negation law violated.");
		static_assert((Q or P) == not not (P or Q), "Double negation law violated.");
		static_assert((Q or P) == not not (Q or P), "Double negation law violated.");
		
		
		/// Simple Conjunction
		static_assert((Always and Always) == Always);
		static_assert((Always and Never ) == Never);
 		static_assert((Never and Always) == Never);
		static_assert((Never and Never ) == Never);
		
 		static_assert((P and Always) == P, "Identity law violated.");
 		static_assert((Always and P) == P, "Identity law violated.");
		static_assert((P and Never) == Never, "Domination law violated.");
		static_assert((Never and P) == Never, "Domination law violated.");
		static_assert((P and P) == P, "Idemptotent law violated");
		static_assert((P and Q) == (Q and P), "Commutative law violated.");
		static_assert(((P and Q) and R) == (P and (Q and R)), "Associative law violated.");
		
		/// Simple disjunction
		static_assert((Always or Always) == Always);
		static_assert((Always or Never ) == Always);
 		static_assert((Never or Always) == Always);
		static_assert((Never or Never ) == Never);
		
 		static_assert((P or Never) == P, "Identity law violated.");
 		static_assert((Never or P) == P, "Identity law violated.");
		static_assert((P or Always) == Always, "Domination law violated.");
		static_assert((Always or P) == Always, "Domination law violated.");
		static_assert((P or P) == P, "Idemptotent law violated");
		static_assert((P or Q) == (Q or P), "Commutative law violated.");
		static_assert(((P or Q) or R) == (P or (Q or R)), "Associative law violated.");
		
		/// Mixed
		static_assert((P or (P and Q)) == P, "Absorption law violated.");
		static_assert((P or (Q and P)) == P, "Absorption law violated.");
		static_assert(((P and Q) or P) == P, "Absorption law violated.");
		static_assert(((Q and P) or P) == P, "Absorption law violated.");
		
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


