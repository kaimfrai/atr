#pragma once

#include <type_traits>
#include <compare>

namespace
	_
{
	class
		StatementTag
	;

	template<typename t_tProto>
	concept ProtoStatement
	=	requires
		{	{	(t_tProto::Statement)
			}->	std::same_as<StatementTag const&>
			;
		}
	;
	
	template<typename t_tProto>
	concept ProtoConjunction
	=	ProtoStatement<t_tProto>
	and	t_tProto::Statement.IsConjunction
	;
	
	template<typename t_tProto>
	concept ProtoDisjunction
	=	ProtoStatement<t_tProto>
	and	t_tProto::Statement.IsDisjunction
	;
	
	template<typename t_tProto>
	concept ProtoAtomic
	=	(std::is_class_v<t_tProto> or std::is_union_v<t_tProto>)
	and not
		ProtoStatement<t_tProto>
	;
	
	struct
		Always
	;
	struct
		Never
	;
	
	template<typename t_tProto>
	concept ProtoClause
	=	ProtoStatement<t_tProto>
	and	t_tProto::Statement.IsConjunction
	and	t_tProto::Statement.IsDisjunction
	and not
		std::is_same_v<std::remove_cv_t<t_tProto>, Always>
	and	not
		std::is_same_v<std::remove_cv_t<t_tProto>, Never>
	;
	
	template<typename t_tProto>
	concept ProtoAtomicClause
	=	ProtoClause<t_tProto>
	and	t_tProto::Statement.IsAtomic
	;
	
	template<ProtoAtomic>
	struct
		Atomic
	;
	template<ProtoAtomic>
	struct
		Not
	;
	template<ProtoClause... t_tpClause>
	class
		All
	;
	template<ProtoClause... t_tpClause>
	class
		Any
	;
	
	class
		StatementTag final
	{	friend struct
			Always
		;
		friend struct
			Never
		;
		template<ProtoAtomic>
		friend struct
			Atomic
		;
		template<ProtoAtomic>
		friend struct
			Not
		;
		template<ProtoClause... t_tpClause>
		friend class
			All
		;
		template<ProtoClause... t_tpClause>
		friend class
			Any
		;
		
		constexpr
		(	StatementTag
		)	(	bool
					i_bAtomic
			,	bool
					i_bConjunctiveNormal
				=	true
			,	bool
					i_bDisjunctiveNormal
				=	true
			)
		:	IsAtomic
			{	i_bAtomic
			}
		,	IsConjunction
			{	i_bConjunctiveNormal
			}
		,	IsDisjunction
			{	i_bDisjunctiveNormal
			}
		{}
		
		(	StatementTag)(StatementTag const&)
		=	delete;
		(	StatementTag)(StatementTag&&)
		=	delete;
		
		StatementTag& (operator=)(StatementTag const&)
		=	delete;
		StatementTag& (operator=)(StatementTag&&)
		=	delete;
	public:
		bool const
			IsAtomic : 1
		;
		bool const
			IsConjunction: 1
		;
		bool const
			IsDisjunction : 6
		;
	};
	
	struct
		Always
	{	static StatementTag constexpr Statement{true};
	};
	
	static_assert(ProtoStatement<Always>);
	static_assert(ProtoConjunction<Always>);
	static_assert(ProtoDisjunction<Always>);
	static_assert(not ProtoAtomic<Always>);
	static_assert(not ProtoClause<Always>);
	static_assert(not ProtoAtomicClause<Always>);
	
	struct
		Never final
	{	static StatementTag constexpr Statement{true};
	};
	
	static_assert(ProtoStatement<Never>);
	static_assert(ProtoConjunction<Never>);
	static_assert(ProtoDisjunction<Never>);
	static_assert(not ProtoAtomic<Never>);
	static_assert(not ProtoClause<Never>);
	static_assert(not ProtoAtomicClause<Never>);
	
	template<ProtoAtomic t_tAtomic>
	struct
		Atomic final
	{	static StatementTag constexpr Statement{true};
	};
	
	
	
	template<ProtoAtomic t_tAtomic>
	struct
		Not final
	{	static StatementTag constexpr Statement{true};
	};
	

	
	template<ProtoClause... t_tpClause>
	class
		All final
	{
	public:
		constexpr
		(	All
		)	()
		=	default;
		
		friend class Test;
		static StatementTag constexpr
			Statement
		{	false
		,	true
		,	(... and ProtoAtomicClause<t_tpClause>)
		};
		
		static_assert
		(	sizeof...(t_tpClause) >= 2ul
		,	"Conjunction must contain at least two clauses."
		);
		
		static auto consteval
		(	ContainsOnce
		)	(	ProtoClause auto
					i_vClause
			)
		->	bool
		{
			return
				1ul
			==	(	...
				+	(	i_vClause
					==	t_tpClause{}
					)
				)
			;
		}
		
		static_assert
		(	(	...
			and ContainsOnce
				(	t_tpClause{}
				)
			)
		,	"Conjunction mustn't contain equivalent clauses."
		);
		
		static_assert
		(	(	...
			and not
				ContainsOnce
				(	not t_tpClause{}
				)
			)
		,	"Conjunction mustn't contain contradictory clauses."
		);
		
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
					and	t_tpRight{}
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
				and	t_tpRight{}
				);
		}
		
		template<ProtoClause... t_tpRight>
		static auto constexpr
		(	Or
		)	(	Any<t_tpRight...>
			)
		{	if constexpr(ProtoClause<All>)
			{	
					return Any<All, t_tpRight...>{};
			}
			else
				return
				(	All{}
				or	...
				or	t_tpRight{}
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
					Any<All>
				::	Or(i_vRight)
				;
			else
				return
				(	...
				and	(	All{}
					or	t_tpRight{}
					)
				);
		}
	};
	
	template<ProtoClause... t_tpClause>
	class
		Any final
	{
	public:
		constexpr
		(	Any
		)	()
		=	default;
		
		friend class Test;
		
		static StatementTag constexpr
			Statement
		{	false
		,	(... and ProtoAtomicClause<t_tpClause>)
		,	true
		};
		
		static_assert
		(	sizeof...(t_tpClause) >= 2ul
		,	"Disjunction must contain at least two clauses."
		);
		
		static auto consteval
		(	ContainsOnce
		)	(	ProtoClause auto
					i_vClause
			)
		->	bool
		{	return
				1ul
			==	(	...
				+	(	i_vClause
					==	t_tpClause{}
					)
				)
			;
		}
		
		static_assert
		(	(	...
			and ContainsOnce
				(	t_tpClause{}
				)
			)
		,	"Disjunction mustn't contain equivalent clauses."
		);
		
		static_assert
		(	(	...
			and not
				ContainsOnce
				(	not t_tpClause{}
				)
			)
		,	"Disjunction mustn't contain contradictory clauses."
		);
		
		template<ProtoClause... t_tpRight>
		static auto constexpr
		(	And
		)	(	All<t_tpRight...>
			)
		{	if constexpr(ProtoClause<Any>)
			{	
					return All<Any, t_tpRight...>{};
			}
			else
				return
				(	Any{}
				and	...
				and	t_tpRight{}
				);
		}
		
		template<ProtoClause... t_tpRight>
		static auto constexpr
		(	Or
		)	(	Any<t_tpRight...>
			)
		{	
		
				return
				(	Any{}
				or	...
				or	t_tpRight{}
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
					or	t_tpRight{}
					)
				);
		}
	};
	
	auto constexpr
	(	operator +
	)	(	ProtoConjunction auto
				i_vConjunction
		)
	->	decltype(i_vConjunction)
	{	return {};	}
	
	template<ProtoClause... t_tpClause>
	auto constexpr
	(	operator +
	)	(	Any<t_tpClause...>
		)
	->	ProtoConjunction auto
	{	return (... + t_tpClause{});	}
	
	auto constexpr
	(	operator *
	)	(	ProtoDisjunction auto
				i_vDisjunction
		)
	->	decltype(i_vDisjunction)
	{	return {};	}
	
	template<ProtoClause... t_tpClause>
	auto constexpr
	(	operator *
	)	(	All<t_tpClause...>
		)
	->	ProtoDisjunction auto
	{	return (... * t_tpClause{});	}
	
	auto consteval
	(	operator<=>
	)	(	Always
		,	Always
		)
	->	std::partial_ordering
	{	return std::partial_ordering::equivalent;	}
	
	auto consteval
	(	operator<=>
	)	(	Always
		,	Never
		)
	->	std::partial_ordering
	{	return std::partial_ordering::less;	}
	
	auto consteval
	(	operator<=>
	)	(	Never
		,	Never
		)
	->	std::partial_ordering
	{	return std::partial_ordering::equivalent;	}
	
	auto consteval
	(	operator<=>
	)	(	Always
		,	ProtoStatement auto
		)
	->	std::partial_ordering
	{	return std::partial_ordering::less;	}
	
	auto consteval
	(	operator<=>
	)	(	Never
		,	ProtoStatement auto
		)
	->	std::partial_ordering
	{	return std::partial_ordering::greater;	}
	
	
	auto consteval
	(	operator not
	)	(	Always
		)
	->	Never
	{	return {};	}
	
	auto consteval
	(	operator not
	)	(	Never
		)
	->	Always
	{	return {};	}
	
	auto consteval
	(	operator and
	)	(	Always
		,	Always
		)
	->	Always
	{	return {};	}
	
	auto consteval
	(	operator *
	)	(	Always
		,	Always
		)
	->	Always
	{	return {};	}
	
	auto consteval
	(	operator and
	)	(	Always
		,	Never
		)
	->	Never
	{	return {};	}
	
	auto consteval
	(	operator *
	)	(	Always
		,	Never
		)
	->	Never
	{	return {};	}
	
	auto consteval
	(	operator and
	)	(	Never
		,	Always
		)
	->	Never
	{	return {};	}
	
	auto consteval
	(	operator *
	)	(	Never
		,	Always
		)
	->	Never
	{	return {};	}
	
	auto consteval
	(	operator and
	)	(	Never
		,	Never
		)
	->	Never
	{	return {};	}
	
	auto consteval
	(	operator *
	)	(	Never
		,	Never
		)
	->	Never
	{	return {};	}
	
	auto consteval
	(	operator and
	)	(	Always
		,	ProtoStatement auto
				i_vRight
		)
	->	ProtoConjunction auto
	{	return +i_vRight;	}
	
	auto consteval
	(	operator *
	)	(	Always
		,	ProtoStatement auto
				i_vRight
		)
	->	ProtoDisjunction auto
	{	return *i_vRight;	}
	
	auto consteval
	(	operator and
	)	(	ProtoStatement auto
				i_vLeft
		,	Always
		)
	->	ProtoConjunction auto
	{	return +i_vLeft;	}
	
	auto consteval
	(	operator *
	)	(	ProtoStatement auto
				i_vLeft
		,	Always
		)
	->	ProtoDisjunction auto
	{	return *i_vLeft;	}
	
	auto consteval
	(	operator and
	)	(	Never
		,	ProtoStatement auto
		)
	->	Never
	{	return {};	}
	
	auto consteval
	(	operator *
	)	(	Never
		,	ProtoStatement auto
		)
	->	Never
	{	return {};	}
	
	auto consteval
	(	operator and
	)	(	ProtoStatement auto
		,	Never
		)
	->	Never
	{	return {};	}
	
	auto consteval
	(	operator *
	)	(	ProtoStatement auto
		,	Never
		)
	->	Never
	{	return {};	}
	
	auto consteval
	(	operator or
	)	(	Always
		,	Always
		)
	->	Always
	{	return {};	}
	
	auto consteval
	(	operator +
	)	(	Always
		,	Always
		)
	->	Always
	{	return {};	}
	
	auto consteval
	(	operator or
	)	(	Always
		,	Never
		)
	->	Always
	{	return {};	}
	
	auto consteval
	(	operator +
	)	(	Always
		,	Never
		)
	->	Always
	{	return {};	}
	
	auto consteval
	(	operator or
	)	(	Never
		,	Always
		)
	->	Always
	{	return {};	}
	
	auto consteval
	(	operator +
	)	(	Never
		,	Always
		)
	->	Always
	{	return {};	}
	
	auto consteval
	(	operator or
	)	(	Never
		,	Never
		)
	->	Never
	{	return {};	}
	
	auto consteval
	(	operator +
	)	(	Never
		,	Never
		)
	->	Never
	{	return {};	}
	
	auto consteval
	(	operator or
	)	(	Always
		,	ProtoStatement auto
		)
	->	Always
	{	return {};	}
	
	auto consteval
	(	operator +
	)	(	Always
		,	ProtoStatement auto
		)
	->	Always
	{	return {};	}
	
	auto consteval
	(	operator or
	)	(	ProtoStatement auto
		,	Always
		)
	->	Always
	{	return {};	}
	
	auto consteval
	(	operator +
	)	(	ProtoStatement auto
		,	Always
		)
	->	Always
	{	return {};	}
	
	auto consteval
	(	operator or
	)	(	Never
		,	ProtoStatement auto
				i_vRight
		)
	->	ProtoDisjunction auto
	{	return *i_vRight;	}
	
	auto consteval
	(	operator +
	)	(	Never
		,	ProtoStatement auto
				i_vRight
		)
	->	ProtoConjunction auto
	{	return +i_vRight;	}
	
	auto consteval
	(	operator or
	)	(	ProtoStatement auto
				i_vLeft
		,	Never
		)
	->	ProtoDisjunction auto
	{	return *i_vLeft;	}
	
	auto consteval
	(	operator +
	)	(	ProtoStatement auto
				i_vLeft
		,	Never
		)
	->	ProtoConjunction auto
	{	return +i_vLeft;	}
	
	template<ProtoAtomic t_tLeftAtomic, ProtoAtomic t_tRightAtomic>
	auto consteval
	(	operator<=>
	)	(	Atomic<t_tLeftAtomic>
		,	Atomic<t_tRightAtomic>
		)
	->	std::partial_ordering
	{	return
			std::is_same_v<t_tLeftAtomic, t_tRightAtomic>
		?	std::partial_ordering::equivalent
		:	std::partial_ordering::unordered
		;
	}
	
	template<ProtoAtomic t_tLeftAtomic, ProtoAtomic t_tRightAtomic>
	auto consteval
	(	operator<=>
	)	(	Atomic<t_tLeftAtomic>
		,	Not<t_tRightAtomic>
		)
	->	std::partial_ordering
	{	return std::partial_ordering::unordered;	}
	
	template<ProtoAtomic t_tLeftAtomic, ProtoAtomic t_tRightAtomic>
	auto consteval
	(	operator<=>
	)	(	Not<t_tLeftAtomic>
		,	Not<t_tRightAtomic>
		)
	->	std::partial_ordering
	{	return
			std::is_same_v<t_tLeftAtomic, t_tRightAtomic>
		?	std::partial_ordering::equivalent
		:	std::partial_ordering::unordered
		;
	}
	
	template<ProtoAtomic t_tAtomic>
	auto consteval
	(	operator not
	)	(	Atomic<t_tAtomic>
		)
	->	Not<t_tAtomic>
	{	return {};	}
	
	template<ProtoAtomic t_tAtomic>
	auto consteval
	(	operator not
	)	(	Not<t_tAtomic>
		)
	->	Atomic<t_tAtomic>
	{	return {};	}
	
	auto consteval
	(	operator and
	)	(	ProtoAtomicClause auto
				i_vLeft
		,	ProtoAtomicClause auto
				i_vRight
		)
	->	ProtoConjunction auto
	{	if	constexpr(i_vLeft == i_vRight)
			return i_vLeft;
		else
		if	constexpr(i_vLeft == not i_vRight)
			return Never{};
		else
			return All<decltype(i_vLeft), decltype(i_vRight)>{};
	}
	
	auto consteval
	(	operator *
	)	(	ProtoAtomicClause auto
				i_vLeft
		,	ProtoAtomicClause auto
				i_vRight
		)
	->	ProtoDisjunction auto
	{	return i_vLeft and i_vRight;	}

	auto consteval
	(	operator or
	)	(	ProtoAtomicClause auto
				i_vLeft
		,	ProtoAtomicClause auto
				i_vRight
		)
	->	ProtoDisjunction auto
	{	if constexpr(i_vLeft == i_vRight)
			return i_vLeft;
		else
		if	constexpr(i_vLeft == not i_vRight)
			return Always{};
		else
			return Any<decltype(i_vLeft), decltype(i_vRight)>{};
	}
	
	auto consteval
	(	operator +
	)	(	ProtoAtomicClause auto
				i_vLeft
		,	ProtoAtomicClause auto
				i_vRight
		)
	->	ProtoConjunction auto
	{	return i_vLeft or i_vRight;	}
	
	template<ProtoClause... t_tpClause>
	auto consteval
	(	operator >
	)	(	ProtoAtomicClause auto
				i_vAtomic
		,	All<t_tpClause...>
		)
	->	bool
	{	return (... and (i_vAtomic > t_tpClause{}));	}
	
	template<ProtoClause... t_tpClause>
	auto consteval
	(	operator >
	)	(	All<t_tpClause...>
		,	ProtoAtomicClause auto
				i_vAtomic
		)
	->	bool
	{	return (... or (t_tpClause{} == i_vAtomic));	}
	
	template<ProtoClause... t_tpRightClause>
	auto consteval
	(	operator<=>
	)	(	ProtoAtomicClause auto
				i_vLeft
		,	All<t_tpRightClause...>
				i_vRight
		)
	->	std::partial_ordering
	{
		if	constexpr(i_vRight > i_vLeft)
			return std::partial_ordering::less;
		else
		if	constexpr(i_vLeft > i_vRight)
			return std::partial_ordering::greater;
		else
			return std::partial_ordering::unordered;
	}
	
	template<ProtoClause... t_tpClause>
	auto consteval
	(	operator >
	)	(	ProtoAtomicClause auto
				i_vAtomic
		,	Any<t_tpClause...>
		)
	->	bool
	{	return (... or (i_vAtomic == t_tpClause{}));	}
	
	template<ProtoClause... t_tpClause>
	auto consteval
	(	operator >
	)	(	Any<t_tpClause...>
		,	ProtoAtomicClause auto
				i_vAtomic
		)
	->	bool
	{	return (... and (t_tpClause{} > i_vAtomic));	}
	
	template<ProtoClause... t_tpRightClause>
	auto consteval
	(	operator<=>
	)	(	ProtoAtomicClause auto
				i_vLeft
		,	Any<t_tpRightClause...>
				i_vRight
		)
	->	std::partial_ordering
	{
		if	constexpr(i_vLeft > i_vRight)
			return std::partial_ordering::greater;
		else
		if	constexpr(i_vRight > i_vLeft)
			return std::partial_ordering::less;
		else
			return std::partial_ordering::unordered;
	}
	
	template<ProtoClause... t_tpClause>
	auto consteval
	(	operator not
	)	(	All<t_tpClause...>
		)
	->	ProtoDisjunction auto
	{	if	constexpr((... and ProtoAtomicClause<t_tpClause>))
			return Any<decltype(not t_tpClause{})...>{};
		else
			return (... or not t_tpClause{});
	}
	
	template<ProtoClause... t_tpClause>
	auto consteval
	(	operator not
	)	(	Any<t_tpClause...>
		)
	->	ProtoConjunction auto
	{	if	constexpr((... and ProtoAtomicClause<t_tpClause>))
			return All<decltype(not t_tpClause{})...>{};
		else
			return (... and not t_tpClause{});
	}
	
	template<ProtoClause... t_tpRightClause>
	auto consteval
	(	operator and
	)	(	ProtoAtomicClause auto
				i_vLeft
		,	All<t_tpRightClause...>
				i_vRight
		)
	->	ProtoConjunction auto
	{
		if	constexpr(i_vRight > not i_vLeft)
			return Never{};
		else
		if	constexpr(i_vRight > i_vLeft)
			return (i_vLeft and ... and t_tpRightClause{});
		else
		if	constexpr
			(	(	...
				or	(	i_vLeft > t_tpRightClause{}
					or	not i_vLeft > t_tpRightClause{}
					)
				)
			)
			return (... and (i_vLeft and t_tpRightClause{}));
		else
			return All<decltype(i_vLeft), t_tpRightClause...>{};
	}
	
	template<ProtoClause... t_tpRightClause>
	auto consteval
	(	operator *
	)	(	ProtoAtomicClause auto
				i_vLeft
		,	All<t_tpRightClause...>
		)
	->	ProtoDisjunction auto
	{	return (i_vLeft * ... * t_tpRightClause{});	}
	
	template<ProtoClause... t_tpLeftClause>
	auto consteval
	(	operator and
	)	(	All<t_tpLeftClause...>
				i_vLeft
		,	ProtoAtomicClause auto
				i_vRight
		)
	->	ProtoConjunction auto
	{	if	constexpr(i_vLeft > i_vRight)
			return +i_vLeft;
		else
			return (t_tpLeftClause{} and ... and i_vRight);
	}
	
	template<ProtoClause... t_tpLeftClause>
	auto consteval
	(	operator *
	)	(	All<t_tpLeftClause...>
				i_vLeft
		,	ProtoAtomicClause auto
				i_vRight
		)
	->	ProtoDisjunction auto
	{	if	constexpr(ProtoDisjunction<decltype(i_vLeft)>)
			return i_vLeft and i_vRight;
		else
			return (t_tpLeftClause{} * ... * i_vRight);
	}	
	
	template<ProtoClause... t_tpRightClause>
	auto consteval
	(	operator and
	)	(	ProtoAtomicClause auto
				i_vLeft
		,	Any<t_tpRightClause...>
				i_vRight
		)
	->	ProtoConjunction auto
	{	if	constexpr(i_vLeft >= i_vRight)
			return +i_vLeft;
		else
		if	constexpr(i_vRight >= i_vLeft)
			return +i_vRight;
		else
		if	constexpr(i_vLeft >= not i_vRight or not i_vLeft <= i_vRight)
			return Never{};
		else
		if	constexpr(ProtoClause<decltype(i_vRight)>)
			return All<decltype(i_vLeft), decltype(i_vRight)>{};
		else
			return (... + (i_vLeft and t_tpRightClause{}));
	}
	
	template<ProtoClause... t_tpRightClause>
	auto consteval
	(	operator *
	)	(	ProtoAtomicClause auto
				i_vLeft
		,	Any<t_tpRightClause...>
				i_vRight
		)
	->	ProtoDisjunction auto
	{	if	constexpr(i_vLeft >= i_vRight)
			return *i_vLeft;
		else
		if	constexpr(i_vRight >= i_vLeft)
			return *i_vRight;
		else
		if	constexpr(not i_vLeft >= i_vRight or i_vLeft <= not i_vRight)
			return Never{};
		else
			return (... or (i_vLeft * t_tpRightClause{}));
	}
	
	template<ProtoClause... t_tpLeftClause>
	auto consteval
	(	operator and
	)	(	Any<t_tpLeftClause...>
				i_vLeft
		,	ProtoAtomicClause auto
				i_vRight
		)
	->	ProtoConjunction auto
	{	if	constexpr(i_vLeft >= i_vRight)
			return +i_vLeft;
		else
		if	constexpr(i_vRight >= i_vLeft)
			return +i_vRight;
		else
		if	constexpr(i_vLeft >= not i_vRight or not i_vLeft <= i_vRight)
			return Never{};
		else
		if	constexpr(ProtoClause<decltype(i_vLeft)>)
			return All<decltype(i_vLeft), decltype(i_vRight)>{};
		else
			return (... + (t_tpLeftClause{} and i_vRight));
	}
	
	template<ProtoClause... t_tpLeftClause>
	auto consteval
	(	operator *
	)	(	Any<t_tpLeftClause...>
				i_vLeft
		,	ProtoAtomicClause auto
				i_vRight
		)
	->	ProtoDisjunction auto
	{	if	constexpr(i_vLeft >= i_vRight)
			return *i_vLeft;
		else
		if	constexpr(i_vRight >= i_vLeft)
			return *i_vRight;
		else
		if	constexpr(not i_vLeft >= i_vRight or i_vLeft <= not i_vRight)
			return Never{};
		else
			return (... or (t_tpLeftClause{} * i_vRight));
	}
	
	template<ProtoClause... t_tpLeftClause, ProtoClause... t_tpRightClause>
	auto consteval
	(	operator and
	)	(	All<t_tpLeftClause...>
				i_vLeft
		,	All<t_tpRightClause...>
		)
	->	ProtoConjunction auto
	{	return (i_vLeft and ... and t_tpRightClause{});	}
	
	template<ProtoClause... t_tpLeftClause, ProtoClause... t_tpRightClause>
	auto consteval
	(	operator *
	)	(	All<t_tpLeftClause...>
				i_vLeft
		,	All<t_tpRightClause...>
		)
	->	ProtoDisjunction auto
	{	return (i_vLeft * ... * t_tpRightClause{});	}
	
	template<ProtoClause... t_tpLeftClause, ProtoClause... t_tpRightClause>
	auto consteval
	(	operator and
	)	(	Any<t_tpLeftClause...>
				i_vLeft
		,	Any<t_tpRightClause...>
				i_vRight
		)
	->	ProtoConjunction auto
	{	if	constexpr(i_vLeft >= i_vRight)
			return +i_vLeft;
		else
		if	constexpr(i_vRight >= i_vLeft)
			return +i_vRight;
		else
		if	constexpr(i_vLeft >= not i_vRight or not i_vLeft <= i_vRight)
			return Never{};
		else
		if	constexpr
			(	ProtoClause<decltype(i_vLeft)>
			and	ProtoClause<decltype(i_vRight)>
			)
			return All<decltype(i_vLeft), decltype(i_vRight)>{};
		else
			return (... + (i_vLeft and t_tpRightClause{}));
	}
	
	template<ProtoClause... t_tpLeftClause, ProtoClause... t_tpRightClause>
	auto consteval
	(	operator *
	)	(	Any<t_tpLeftClause...>
				i_vLeft
		,	Any<t_tpRightClause...>
				i_vRight
		)
	->	ProtoDisjunction auto
	{	if	constexpr(i_vLeft >= i_vRight)
			return *i_vLeft;
		else
		if	constexpr(i_vRight >= i_vLeft)
			return *i_vRight;
		else
		if	constexpr(i_vLeft >= not i_vRight or not i_vLeft <= i_vRight)
			return Never{};
		else
			return (... or (i_vLeft * t_tpRightClause{}));
	}
	
	template<ProtoClause... t_tpRightClause>
	auto consteval
	(	operator or
	)	(	ProtoAtomicClause auto
				i_vLeft
		,	All<t_tpRightClause...>
				i_vRight
		)
	->	ProtoDisjunction auto
	{	if	constexpr(i_vRight >= i_vLeft)
			return *i_vLeft;
		else
		if	constexpr(i_vLeft >= i_vRight)
			return *i_vRight;
		else
		if	constexpr(not i_vLeft >=  i_vRight or i_vLeft <= not i_vRight)
			return Always{};
		else
		if	constexpr(ProtoClause<decltype(i_vRight)>)
			return Any<decltype(i_vLeft), decltype(i_vRight)>{};
		else
			return (... * (i_vLeft or t_tpRightClause{}));
	}
	
	template<ProtoClause... t_tpRightClause>
	auto consteval
	(	operator +
	)	(	ProtoAtomicClause auto
				i_vLeft
		,	All<t_tpRightClause...>
				i_vRight
		)
	->	ProtoConjunction auto
	{	if	constexpr(i_vRight >= i_vLeft)
			return +i_vLeft;
		else
		if	constexpr(i_vLeft >= i_vRight)
			return +i_vRight;
		else
		if	constexpr(not i_vLeft >=  i_vRight or i_vLeft <= not i_vRight)
			return Always{};
		else
			return (... and (i_vLeft + t_tpRightClause{}));
	}
	
	template<ProtoClause... t_tpLeftClause>
	auto consteval
	(	operator or
	)	(	All<t_tpLeftClause...>
				i_vLeft
		,	ProtoAtomicClause auto
				i_vRight
		)
	->	ProtoDisjunction auto
	{	if	constexpr(i_vRight >= i_vLeft)
			return *i_vLeft;
		else
		if	constexpr(i_vLeft >= i_vRight)
			return *i_vRight;
		else
		if	constexpr(not i_vLeft >=  i_vRight or i_vLeft <= not i_vRight)
			return Always{};
		else
		if	constexpr(ProtoClause<decltype(i_vLeft)>)
			return Any<decltype(i_vLeft), decltype(i_vRight)>{};
		else
			return (... * (t_tpLeftClause{} or i_vRight));
	}
	
	template<ProtoClause... t_tpLeftClause>
	auto consteval
	(	operator +
	)	(	All<t_tpLeftClause...>
				i_vLeft
		,	ProtoAtomicClause auto
				i_vRight
		)
	->	ProtoConjunction auto
	{	if	constexpr(i_vRight >= i_vLeft)
			return +i_vLeft;
		else
		if	constexpr(i_vLeft >= i_vRight)
			return +i_vRight;
		else
		if	constexpr(not i_vLeft >=  i_vRight or i_vLeft <= not i_vRight)
			return Always{};
		else
			return (... and (t_tpLeftClause{} + i_vRight));
	}
	
	template<ProtoClause... t_tpRightClause>
	auto consteval
	(	operator or
	)	(	ProtoAtomicClause auto
				i_vLeft
		,	Any<t_tpRightClause...>
				i_vRight
		)
	->	ProtoDisjunction auto
	{	
		if	constexpr(not i_vLeft > i_vRight)
			return Always{};
		else
		if	constexpr(i_vLeft > i_vRight)
			return (i_vLeft or ... or t_tpRightClause{});
		else
		if	constexpr
			(	(	...
				or	(	t_tpRightClause{} > i_vLeft
					or t_tpRightClause{} > not i_vLeft
					)
				)
			)
			return (... or (i_vLeft or t_tpRightClause{}));
		else
			return Any<decltype(i_vLeft), t_tpRightClause...>{};
	}
	
	template<ProtoClause... t_tpRightClause>
	auto consteval
	(	operator +
	)	(	ProtoAtomicClause auto
				i_vLeft
		,	Any<t_tpRightClause...>
		)
	->	ProtoConjunction auto
	{	return (i_vLeft + ... + t_tpRightClause{});	}
	
	template<ProtoClause... t_tpLeftClause>
	auto consteval
	(	operator or
	)	(	Any<t_tpLeftClause...>
				i_vLeft
		,	ProtoAtomicClause auto
				i_vRight
		)
	->	ProtoDisjunction auto
	{	if	constexpr(i_vRight > i_vLeft)
			return *i_vLeft;
		else
			return (t_tpLeftClause{} or ... or i_vRight);
	}
	
	template<ProtoClause... t_tpLeftClause>
	auto consteval
	(	operator +
	)	(	Any<t_tpLeftClause...>
				i_vLeft
		,	ProtoAtomicClause auto
				i_vRight
		)
	->	ProtoConjunction auto
	{	if	constexpr(i_vRight >= i_vLeft)
			return +i_vLeft;
		else
		if	constexpr(i_vLeft >= i_vRight)
			return +i_vRight;
		else
		if	constexpr(not i_vLeft >= i_vRight or i_vLeft <= not i_vRight)
			return Always{};
		else
		if	constexpr(ProtoConjunction<Any<t_tpLeftClause...>>)
			return Any<t_tpLeftClause..., decltype(i_vLeft)>{};
		else
			return (... + (t_tpLeftClause{} or i_vRight));
	}
	
	template<ProtoClause... t_tpLeftClause, ProtoClause... t_tpRightClause>
	auto consteval
	(	operator or
	)	(	All<t_tpLeftClause...>
				i_vLeft
		,	All<t_tpRightClause...>
				i_vRight
		)
	->	ProtoDisjunction auto
	{	if	constexpr(i_vRight >= i_vLeft)
			return *i_vLeft;
		else
		if	constexpr(i_vLeft >= i_vRight)
			return *i_vRight;
		else
		if	constexpr(i_vLeft >= not i_vRight or not i_vLeft <= i_vRight)
			return Always{};
		else
		if	constexpr
			(	ProtoClause<decltype(i_vLeft)>
			and	ProtoClause<decltype(i_vRight)>
			)
			return Any<decltype(i_vLeft), decltype(i_vRight)>{};
		else
			return (... * (i_vLeft or t_tpRightClause{}));
	}
	
	template<ProtoClause... t_tpLeftClause, ProtoClause... t_tpRightClause>
	auto consteval
	(	operator +
	)	(	All<t_tpLeftClause...>
				i_vLeft
		,	All<t_tpRightClause...>
				i_vRight
		)
	->	ProtoConjunction auto
	{	if	constexpr(i_vRight >= i_vLeft)
			return +i_vLeft;
		else
		if	constexpr(i_vLeft >= i_vRight)
			return +i_vRight;
		else
		if	constexpr(i_vLeft >= not i_vRight or not i_vLeft <= i_vRight)
			return Always{};
		else
			return (... and (i_vLeft + t_tpRightClause{}));
	}
	
	template<ProtoClause... t_tpLeftClause, ProtoClause... t_tpRightClause>
	auto consteval
	(	operator or
	)	(	Any<t_tpLeftClause...>
				i_vLeft
		,	Any<t_tpRightClause...>
		)
	->	ProtoDisjunction auto
	{	return (i_vLeft or ...  or t_tpRightClause{});	}
	
	template<ProtoClause... t_tpLeftClause, ProtoClause... t_tpRightClause>
	auto consteval
	(	operator +
	)	(	Any<t_tpLeftClause...>
				i_vLeft
		,	Any<t_tpRightClause...>
		)
	->	ProtoConjunction auto
	{	return (i_vLeft + ... + t_tpRightClause{});	}
	
	template<ProtoAtomicClause... t_tpLeftClause, ProtoAtomicClause... t_tpRightClause>
	auto consteval
	(	operator >=
	)	(	All<t_tpLeftClause...>
				i_vLeft
		,	All<t_tpRightClause...>
		)
	->	bool
	{	return (... and (i_vLeft > t_tpRightClause{}));	}
	
	template<ProtoAtomicClause... t_tpLeftClause, ProtoAtomicClause... t_tpRightClause>
	auto consteval
	(	operator<=>
	)	(	All<t_tpLeftClause...>
				i_vLeft
		,	All<t_tpRightClause...>
				i_vRight
		)
	->	std::partial_ordering
	{
		if	constexpr(i_vLeft >= i_vRight and i_vRight >= i_vLeft)
			return std::partial_ordering::equivalent;
		else
		if constexpr(i_vLeft >= i_vRight)
			return std::partial_ordering::greater;
		else
		if	constexpr(i_vRight >= i_vLeft)
			return std::partial_ordering::less;
		else
			return std::partial_ordering::unordered;
	}
	
	template<ProtoAtomicClause... t_tpLeftClause, ProtoAtomicClause... t_tpRightClause>
	auto consteval
	(	operator<=>
	)	(	All<t_tpLeftClause...>
				i_vLeft
		,	Any<t_tpRightClause...>
		)
	->	std::partial_ordering
	{	bool const bLeftGreaterOneRight = (... or (i_vLeft > t_tpRightClause{}));
		if (bLeftGreaterOneRight)
			return std::partial_ordering::greater;
		else
			return std::partial_ordering::unordered;
	}
	
	template<ProtoAtomicClause... t_tpLeftClause, ProtoAtomicClause... t_tpRightClause>
	auto consteval
	(	operator >=
	)	(	Any<t_tpLeftClause...>
		,	Any<t_tpRightClause...>
				i_vRight
		)
	->	bool
	{	return (... and (t_tpLeftClause{} > i_vRight));	}
	
	template<ProtoAtomicClause... t_tpLeftClause, ProtoAtomicClause... t_tpRightClause>
	auto consteval
	(	operator<=>
	)	(	Any<t_tpLeftClause...>
				i_vLeft
		,	Any<t_tpRightClause...>
				i_vRight
		)
	->	std::partial_ordering
	{
		if	constexpr(i_vLeft >= i_vRight and i_vRight >= i_vLeft)
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
	
	template<ProtoAtomicClause... t_tpLeftClause, ProtoClause... t_tpRightClause>
	auto consteval
	(	operator<=>
	)	(	All<t_tpLeftClause...>
				i_vLeft
		,	All<t_tpRightClause...>
				i_vRight
		)
	->	std::partial_ordering
	requires
		(... or not ProtoAtomicClause<t_tpRightClause>)
	{	bool const bLeftGreaterAllRight = (... and (i_vLeft >= t_tpRightClause{}));
		bool const bRightGreaterAllLeft = (... and (i_vRight >= t_tpLeftClause{}));
		if (bLeftGreaterAllRight and bRightGreaterAllLeft)
			return std::partial_ordering::equivalent;
		if (bLeftGreaterAllRight)
			return std::partial_ordering::greater;
		if (bRightGreaterAllLeft)
			return std::partial_ordering::less;
		else
			return std::partial_ordering::unordered;
	}
	
	template<ProtoAtomicClause... t_tpLeftClause, ProtoClause... t_tpRightClause>
	auto consteval
	(	operator<=>
	)	(	All<t_tpLeftClause...>
				i_vLeft
		,	Any<t_tpRightClause...>
				i_vRight
		)
	->	std::partial_ordering
	requires
		(... or not ProtoAtomicClause<t_tpRightClause>)
	{	bool const bLeftGreaterOneRight = (... or (i_vLeft >= t_tpRightClause{}));
		bool const bRightGreaterAllLeft = (... and (i_vRight >= t_tpLeftClause{}));
		if (bLeftGreaterOneRight and bRightGreaterAllLeft)
			return std::partial_ordering::equivalent;
		if (bLeftGreaterOneRight)
			return std::partial_ordering::greater;
		if (bRightGreaterAllLeft)
			return std::partial_ordering::less;
		else
			return std::partial_ordering::unordered;
	}
	
	template<ProtoAtomicClause... t_tpLeftClause, ProtoClause... t_tpRightClause>
	auto consteval
	(	operator<=>
	)	(	Any<t_tpLeftClause...>
				i_vLeft
		,	All<t_tpRightClause...>
				i_vRight
		)
	->	std::partial_ordering
	requires
		(... or not ProtoAtomicClause<t_tpRightClause>)
	{	bool const bAllLeftGreaterRight = (... and (t_tpLeftClause{} >= i_vRight));
		bool const bOneRightGreaterLeft = (... or (t_tpRightClause{} >= i_vLeft));
		
		if (bAllLeftGreaterRight and  bOneRightGreaterLeft)
			return std::partial_ordering::equivalent;
		if (bAllLeftGreaterRight)
			return std::partial_ordering::greater;
		if (bOneRightGreaterLeft)
			return std::partial_ordering::less;
		else
			return std::partial_ordering::unordered;
		
	}
	
	template<ProtoAtomicClause... t_tpLeftClause, ProtoClause... t_tpRightClause>
	auto consteval
	(	operator<=>
	)	(	Any<t_tpLeftClause...>
				i_vLeft
		,	Any<t_tpRightClause...>
				i_vRight
		)
	->	std::partial_ordering
	requires
		(... or not ProtoAtomicClause<t_tpRightClause>)
	{	bool const bAllLeftGreaterRight = (... and (t_tpLeftClause{} >= i_vRight));
		bool const bAllRightGreateLeft = (... and (t_tpRightClause{} >= i_vLeft));

		if (bAllLeftGreaterRight and bAllRightGreateLeft)
			return std::partial_ordering::equivalent;
		if (bAllLeftGreaterRight)
			return std::partial_ordering::greater;
		if (bAllRightGreateLeft)
			return std::partial_ordering::less;
		else
			return std::partial_ordering::unordered;
	}
	
	
	template<ProtoClause... t_tpLeftClause, ProtoClause... t_tpRightClause>
	auto consteval
	(	operator<=>
	)	(	All<t_tpLeftClause...>
				i_vLeft
		,	All<t_tpRightClause...>
				i_vRight
		)
	->	std::partial_ordering
	requires
		(... or not ProtoAtomicClause<t_tpLeftClause>)
	and	(... or not ProtoAtomicClause<t_tpRightClause>)
	{
		bool const bLeftGreaterAllRight = (... and (i_vLeft >= t_tpRightClause{}));
		bool const bRightGreaterAllLeft = (... and (i_vRight >= t_tpLeftClause{}));
		if (bLeftGreaterAllRight and bRightGreaterAllLeft)
			return std::partial_ordering::equivalent;
		if (bLeftGreaterAllRight)
			return std::partial_ordering::greater;
		if (bRightGreaterAllLeft)
			return std::partial_ordering::less;
		else
			return std::partial_ordering::unordered;
	}
	
	template<ProtoClause... t_tpLeftClause, ProtoClause... t_tpRightClause>
	auto consteval
	(	operator<=>
	)	(	All<t_tpLeftClause...>
		,	Any<t_tpRightClause...>
				i_vRight
		)
	->	std::partial_ordering
	requires
		(... or not ProtoAtomicClause<t_tpLeftClause>)
	and	(... or not ProtoAtomicClause<t_tpRightClause>)
	{
		bool const bAllLeftLesserRight = (... and (t_tpLeftClause{} <= i_vRight));
		bool const bRightGreaterAllLeft = (... and (i_vRight >= t_tpLeftClause{}));
		if (bAllLeftLesserRight and bRightGreaterAllLeft)
			return std::partial_ordering::equivalent;
		if (bAllLeftLesserRight)
			return std::partial_ordering::greater;
		if (bRightGreaterAllLeft)
			return std::partial_ordering::less;
		else
			return std::partial_ordering::unordered;
	}
	
	template<ProtoClause... t_tpLeftClause, ProtoClause... t_tpRightClause>
	auto consteval
	(	operator<=>
	)	(	Any<t_tpLeftClause...>
				i_vLeft
		,	Any<t_tpRightClause...>
				i_vRight
		)
	->	std::partial_ordering
	requires
		(... or not ProtoAtomicClause<t_tpLeftClause>)
	and	(... or not ProtoAtomicClause<t_tpRightClause>)
	{
		bool const bAllLeftGreaterRight = (... and (t_tpLeftClause{} >= i_vRight));
		bool const bAllRightGreateLeft = (... and (t_tpRightClause{} >= i_vLeft));

		if (bAllLeftGreaterRight and bAllRightGreateLeft)
			return std::partial_ordering::equivalent;
		if (bAllLeftGreaterRight)
			return std::partial_ordering::greater;
		if (bAllRightGreateLeft)
			return std::partial_ordering::less;
		else
			return std::partial_ordering::unordered;
	}
	
// 	
// 	template<ProtoClause... t_tpLeftClause, ProtoClause... t_tpRightClause>
// 	auto consteval
// 	(	operator<=>
// 	)	(	All<t_tpLeftClause...>
// 				i_vLeft
// 		,	All<t_tpRightClause...>
// 				i_vRight
// 		)
// 	->	std::partial_ordering
// 	{	bool const bLeftGreaterAllRight = (... and (i_vLeft >= t_tpRightClause{}));
// 		bool const bRightGreaterAllLeft = (... and (i_vRight >= t_tpLeftClause{}));
// 		if (bLeftGreaterAllRight and bRightGreaterAllLeft)
// 			return std::partial_ordering::equivalent;
// 		if (bLeftGreaterAllRight)
// 			return std::partial_ordering::greater;
// 		if (bRightGreaterAllLeft)
// 			return std::partial_ordering::less;
// 		else
// 			return std::partial_ordering::unordered;
// 	}
// 	
// 	template<ProtoClause... t_tpLeftClause, ProtoClause... t_tpRightClause>
// 	auto consteval
// 	(	operator<=>
// 	)	(	All<t_tpLeftClause...>
// 				i_vLeft
// 		,	Any<t_tpRightClause...>
// 		)
// 	->	std::partial_ordering
// 	{	bool const bLeftGreaterOneRight = (... or (i_vLeft >= t_tpRightClause{}));
// 		bool const bLeftLesserAllRight = (... and (i_vLeft <= t_tpRightClause{}));
// 		if (bLeftGreaterOneRight and bLeftLesserAllRight)
// 			return std::partial_ordering::equivalent;
// 		if (bLeftGreaterOneRight)
// 			return std::partial_ordering::greater;
// 		if (bLeftLesserAllRight)
// 			return std::partial_ordering::less;
// 		else
// 			return std::partial_ordering::unordered;
// 	}
// 	
// 	template<ProtoClause... t_tpLeftClause, ProtoClause... t_tpRightClause>
// 	auto consteval
// 	(	operator<=>
// 	)	(	Any<t_tpLeftClause...>
// 				i_vLeft
// 		,	Any<t_tpRightClause...>
// 				i_vRight
// 		)
// 	->	std::partial_ordering
// 	{	bool const bLeftLesserAllRight = (... and (i_vLeft <= t_tpRightClause{}));
// 		bool const bRightLesserAllLeft = (... and (i_vRight <= t_tpLeftClause{}));
// 		if (bLeftLesserAllRight and bRightLesserAllLeft)
// 			return std::partial_ordering::equivalent;
// 		if (bLeftLesserAllRight)
// 			return std::partial_ordering::less;
// 		if (bRightLesserAllLeft)
// 			return std::partial_ordering::greater;
// 		else
// 			return std::partial_ordering::unordered;
// 	}
	
	
	auto consteval
	(	operator==
	)	(	ProtoStatement auto
				i_vLeft
		,	ProtoStatement auto
				i_vRight
		)
	->	bool
	{	return std::is_eq(i_vLeft <=> i_vRight);	}
	

	
// 	static auto constexpr
// 	(	operator and
// 	)	(	Always
// 		,	Always
// 		)
// 	->	Always
// 	{	return {};	}
// 	
// 	static auto constexpr
// 	(	operator and
// 	)	(	Always
// 		,	Never
// 		)
// 	->	Never
// 	{	return {};	}
// 	
// 	template<ProtoAtomic t_tRightAtomic>
// 	static auto constexpr
// 	(	operator and
// 	)	(	Always
// 		,	Atomic<t_tRightAtomic>
// 		)
// 	->	Atomic<t_tRightAtomic>
// 	{	return {};	}
// 	
// 	template<ProtoAtomic t_tRightAtomic>
// 	static auto constexpr
// 	(	operator and
// 	)	(	Always
// 		,	Not<t_tRightAtomic>
// 		)
// 	->	Not<t_tRightAtomic>
// 	{	return {};	}
// 	
// 	template<ProtoClause... t_tpRightClause>
// 	static auto constexpr
// 	(	operator and
// 	)	(	Always
// 		,	All<t_tpRightClause...>
// 		)
// 	->	All<t_tpRightClause...>
// 	{	return {};	}
// 	
// 	template<ProtoClause... t_tpRightClause>
// 	static auto constexpr
// 	(	operator and
// 	)	(	Always
// 		,	Any<t_tpRightClause...>
// 		)
// 	->	Any<t_tpRightClause...>
// 	{	return {};	}
// 	
// 	template<ProtoAtomic t_tRight>
// 	static auto constexpr
// 	(	operator and
// 	)	(	Always
// 		,	t_tRight const
// 			&
// 		)
// 	->	Atomic<t_tRight>
// 	{	return {};	}
// 	
// 	static auto constexpr
// 	(	operator or
// 	)	(	Always
// 		,	Always
// 		)
// 	->	Always
// 	{	return {};	}
// 	
// 	static auto constexpr
// 	(	operator or
// 	)	(	Always
// 		,	Never
// 		)
// 	->	Always
// 	{	return {};	}
// 	
// 	template<ProtoAtomic t_tRightAtomic>
// 	static auto constexpr
// 	(	operator or
// 	)	(	Always
// 		,	Atomic<t_tRightAtomic>
// 		)
// 	->	Always
// 	{	return {};	}
// 	
// 	template<ProtoAtomic t_tRightAtomic>
// 	static auto constexpr
// 	(	operator or
// 	)	(	Always
// 		,	Not<t_tRightAtomic>
// 		)
// 	->	Always
// 	{	return {};	}
// 	
// 	template<ProtoClause... t_tpRightClause>
// 	static auto constexpr
// 	(	operator or
// 	)	(	Always
// 		,	All<t_tpRightClause...>
// 		)
// 	->	Always
// 	{	return {};	}
// 	
// 	template<ProtoClause... t_tpRightClause>
// 	static auto constexpr
// 	(	operator or
// 	)	(	Always
// 		,	Any<t_tpRightClause...>
// 		)
// 	->	Always
// 	{	return {};	}
// 	
// 	template<ProtoAtomic t_tRight>
// 	static auto constexpr
// 	(	operator or
// 	)	(	Always
// 		,	t_tRight const
// 			&
// 		)
// 	->	Always
// 	{	return {};	}
// 	
// 	static auto constexpr
// 	(	operator and
// 	)	(	Never
// 		,	Always
// 		)
// 	->	Never
// 	{	return {};	}
// 	
// 	static auto constexpr
// 	(	operator and
// 	)	(	Never
// 		,	Never
// 		)
// 	->	Never
// 	{	return {};	}
// 	
// 	template<ProtoAtomic t_tRightAtomic>
// 	static auto constexpr
// 	(	operator and
// 	)	(	Never
// 		,	Atomic<t_tRightAtomic>
// 		)
// 	->	Never
// 	{	return {};	}
// 	
// 	template<ProtoAtomic t_tRightAtomic>
// 	static auto constexpr
// 	(	operator and
// 	)	(	Never
// 		,	Not<t_tRightAtomic>
// 		)
// 	->	Never
// 	{	return {};	}
// 	
// 	template<ProtoClause... t_tpRightClause>
// 	static auto constexpr
// 	(	operator and
// 	)	(	Never
// 		,	All<t_tpRightClause...>
// 		)
// 	->	Never
// 	{	return {};	}
// 	
// 	template<ProtoClause... t_tpRightClause>
// 	static auto constexpr
// 	(	operator and
// 	)	(	Never
// 		,	Any<t_tpRightClause...>
// 		)
// 	->	Never
// 	{	return {};	}
// 	
// 	template<ProtoAtomic t_tRight>
// 	static auto constexpr
// 	(	operator and
// 	)	(	Never
// 		,	t_tRight const
// 			&
// 		)
// 	->	Never
// 	{	return {};	}
// 	
// 	static auto constexpr
// 	(	operator or
// 	)	(	Never
// 		,	Always
// 		)
// 	->	Always
// 	{	return {};	}
// 	
// 	static auto constexpr
// 	(	operator or
// 	)	(	Never
// 		,	Never
// 		)
// 	->	Never
// 	{	return {};	}
// 	
// 	template<ProtoAtomic t_tAtomic>
// 	static auto constexpr
// 	(	operator or
// 	)	(	Never
// 		,	Atomic<t_tAtomic>
// 		)
// 	->	Atomic<t_tAtomic>
// 	{	return {};	}
// 	
// 	template<ProtoAtomic t_tAtomic>
// 	static auto constexpr
// 	(	operator or
// 	)	(	Never
// 		,	Not<t_tAtomic>
// 		)
// 	->	Not<t_tAtomic>
// 	{	return {};	}
// 	
// 	template<ProtoClause... t_tpRightClause>
// 	static auto constexpr
// 	(	operator or
// 	)	(	Never
// 		,	All<t_tpRightClause...>
// 		)
// 	->	All<t_tpRightClause...>
// 	{	return {};	}
// 	
// 	template<ProtoClause... t_tpRightClause>
// 	static auto constexpr
// 	(	operator or
// 	)	(	Never
// 		,	Any<t_tpRightClause...>
// 		)
// 	->	Any<t_tpRightClause...>
// 	{	return {};	}
// 	
// 	template<ProtoAtomic t_tRight>
// 	static auto constexpr
// 	(	operator or
// 	)	(	Never
// 		,	t_tRight const
// 			&
// 		)
// 	->	Atomic<t_tRight>
// 	{	return {};	}
// 	
// 	template<ProtoAtomic t_tLeftAtomic>
// 	static auto constexpr
// 	(	operator and
// 	)	(	Atomic<t_tLeftAtomic>
// 		,	Always
// 		)
// 	->	Atomic<t_tLeftAtomic>
// 	{	return {};	}
// 	
// 	template<ProtoAtomic t_tLeftAtomic>
// 	static auto constexpr
// 	(	operator and
// 	)	(	Atomic<t_tLeftAtomic>
// 		,	Never
// 		)
// 	->	Never
// 	{	return {};	}
// 	
// 	template<ProtoAtomic t_tLeftAtomic, ProtoAtomic t_tRightAtomic>
// 	static auto constexpr
// 	(	operator and
// 	)	(	Atomic<t_tLeftAtomic>
// 		,	Atomic<t_tRightAtomic>
// 		)
// 	{	if constexpr(std::is_same_v<t_tLeftAtomic, t_tRightAtomic>)
// 			return Atomic<t_tLeftAtomic>{};
// 		else
// 			return All<Atomic<t_tLeftAtomic>, Atomic<t_tRightAtomic>>{};
// 	}
// 	
// 	template<ProtoAtomic t_tLeftAtomic, ProtoAtomic t_tRightAtomic>
// 	static auto constexpr
// 	(	operator and
// 	)	(	Atomic<t_tLeftAtomic>
// 		,	Not<t_tRightAtomic>
// 		)
// 	{	if constexpr(std::is_same_v<t_tLeftAtomic, t_tRightAtomic>)
// 			return Never{};
// 		else
// 			return All<Atomic<t_tLeftAtomic>, Not<t_tRightAtomic>>{};
// 	}
// 	
// 	template<ProtoAtomic t_tLeftAtomic, ProtoClause... t_tpRightClause>
// 	static auto constexpr
// 	(	operator and
// 	)	(	Atomic<t_tLeftAtomic>
// 		,	All<t_tpRightClause...>
// 		)
// 	{	if constexpr(All<t_tpRightClause...>::Subsumes(Atomic<t_tLeftAtomic>{}))
// 			return All<t_tpRightClause...>{};
// 		else
// 			return All<Atomic<t_tLeftAtomic>, t_tpRightClause...>{};
// 	}
// 	
// 	template<ProtoAtomic t_tLeftAtomic, ProtoClause... t_tpRightClause>
// 	static auto constexpr
// 	(	operator and
// 	)	(	Atomic<t_tLeftAtomic>
// 		,	Any<t_tpRightClause...>
// 		)
// 	{	if constexpr(Atomic<t_tLeftAtomic>::Subsumes(Any<t_tpRightClause...>{}))
// 			return Atomic<t_tLeftAtomic>{};
// 		else
// 			return (... or (Atomic<t_tLeftAtomic>{} and t_tpRightClause{}));
// 	}
// 	
// 	template<ProtoAtomic t_tLeftAtomic, ProtoAtomic t_tRight>
// 	static auto constexpr
// 	(	operator and
// 	)	(	Atomic<t_tLeftAtomic>
// 		,	t_tRight const
// 			&
// 		)
// 	{	if constexpr(std::is_same_v<t_tLeftAtomic, t_tRight>)
// 			return Atomic<t_tLeftAtomic>{};
// 		else
// 			return All<Atomic<t_tLeftAtomic>, Atomic<t_tRight>>{};
// 	}
// 	
// 	template<ProtoAtomic t_tLeftAtomic>
// 	static auto constexpr
// 	(	operator or
// 	)	(	Atomic<t_tLeftAtomic>
// 		,	Always
// 		)
// 	->	Always
// 	{	return {};	}
// 	
// 	template<ProtoAtomic t_tLeftAtomic>
// 	static auto constexpr
// 	(	operator or
// 	)	(	Atomic<t_tLeftAtomic>
// 		,	Never
// 		)
// 	->	Atomic<t_tLeftAtomic>
// 	{	return {};	}
// 	
// 	template<ProtoAtomic t_tLeftAtomic, ProtoAtomic t_tRightAtomic>
// 	static auto constexpr
// 	(	operator or
// 	)	(	Atomic<t_tLeftAtomic>
// 		,	Atomic<t_tRightAtomic>
// 		)
// 	{	if constexpr(std::is_same_v<t_tLeftAtomic, t_tRightAtomic>)
// 			return Atomic<t_tLeftAtomic>{};
// 		else
// 			return Any<Atomic<t_tLeftAtomic>, Atomic<t_tRightAtomic>>{};
// 	}
// 	
// 	template<ProtoAtomic t_tLeftAtomic, ProtoAtomic t_tRightAtomic>
// 	static auto constexpr
// 	(	operator or
// 	)	(	Atomic<t_tLeftAtomic>
// 		,	Not<t_tRightAtomic>
// 		)
// 	{	if constexpr(std::is_same_v<t_tLeftAtomic, t_tRightAtomic>)
// 			return Always{};
// 		else
// 			return Any<Atomic<t_tLeftAtomic>, Not<t_tRightAtomic>>{};
// 	}
// 	
// 	template<ProtoAtomic t_tLeftAtomic, ProtoClause... t_tpRightClause>
// 	static auto constexpr
// 	(	operator or
// 	)	(	Atomic<t_tLeftAtomic>
// 		,	All<t_tpRightClause...>
// 		)
// 	{	if constexpr(All<t_tpRightClause...>::Subsumes(Atomic<t_tLeftAtomic>{}))
// 			return Atomic<t_tLeftAtomic>{};
// 		else
// 			return (... and (Atomic<t_tLeftAtomic>{} or t_tpRightClause{}));
// 	}
// 	
// 	template<ProtoAtomic t_tLeftAtomic, ProtoClause... t_tpRightClause>
// 	static auto constexpr
// 	(	operator or
// 	)	(	Atomic<t_tLeftAtomic>
// 		,	Any<t_tpRightClause...>
// 		)
// 	{	if constexpr(Atomic<t_tLeftAtomic>::Subsumes(Any<t_tpRightClause...>{}))
// 			return Any<t_tpRightClause...>{};
// 		else
// 			return Any<Atomic<t_tLeftAtomic>, t_tpRightClause...>{};
// 	}
// 	
// 	template<ProtoAtomic t_tLeftAtomic, ProtoAtomic t_tRight>
// 	static auto constexpr
// 	(	operator or
// 	)	(	Atomic<t_tLeftAtomic>
// 		,	t_tRight const
// 			&
// 		)
// 	
// 	{	if constexpr(std::is_same_v<t_tLeftAtomic, t_tRight>)
// 			return Atomic<t_tLeftAtomic>{};
// 		else
// 			return Any<Atomic<t_tLeftAtomic>, Atomic<t_tRight>>{};
// 	}
// 	
// 	
// 	template<typename t_tLeft, typename t_tRight>
// 	auto constexpr
// 	(	operator and
// 	)	(	t_tLeft const
// 			&	i_rLeft
// 		,	t_tRight const
// 			&	i_rRight
// 		)
// 	->	decltype(auto)
// 	{	if constexpr
// 			(	std::is_same_v<t_tLeft, t_tRight>
// 			or	std::is_same_v<t_tLeft, Never>
// 			or	std::is_same_v<Always, t_tRight>
// 			)
// 			return i_rLeft;
// 		else if constexpr
// 			(	std::is_same_v<t_tLeft, Always>
// 			or	std::is_same_v<Never, t_tRight>
// 			)
// 			return i_rRight;
// 		else if constexpr(not ProtoStatement<t_tLeft>)
// 			return Any<t_tLeft>{} and i_rRight;
// 		else if constexpr(not ProtoStatement<t_tRight>)
// 			return i_rLeft and Any<t_tRight>{};
// 		else
// 		{	ProtoStatement auto constexpr vLeft = t_tLeft{};
// 			ProtoStatement auto constexpr vRight = t_tRight{};
// 		
// 			if constexpr(vLeft.Subsumes(vRight))
// 				return vLeft;
// 			else if constexpr(vRight.Subsumes(vLeft))
// 				return vRight;
// 			else if constexpr
// 				(	vLeft.Subsumes(not vRight)
// 				or	vRight.Subsumes(not vLeft)
// 				)
// 				return Never{};
// 			else
// 				return vLeft.And(vRight);
// 		}
// 	}
// 	
// 	template<typename t_tLeft, typename t_tRight>
// 	auto constexpr
// 	(	operator or
// 	)	(	t_tLeft const
// 			&	i_rLeft
// 		,	t_tRight const
// 			&	i_rRight
// 		)
// 	->	decltype(auto)
// 	{	if constexpr
// 			(	std::is_same_v<t_tLeft, t_tRight>
// 			or	std::is_same_v<t_tLeft, Always>
// 			or	std::is_same_v<Never, t_tRight>
// 			)
// 			return i_rLeft;
// 		else if constexpr
// 			(	std::is_same_v<t_tLeft, Never>
// 			or	std::is_same_v<Always, t_tRight>
// 			)
// 			return i_rRight;
// 		else if constexpr(ProtoAtomic<t_tLeft>)
// 			return All<t_tLeft>{} or i_rRight;
// 		else if constexpr(ProtoAtomic<t_tRight>)
// 			return i_rLeft or All<t_tRight>{};
// 		else
// 		{	ProtoStatement auto constexpr vLeft = t_tLeft{};
// 			ProtoStatement auto constexpr vRight = t_tRight{};
// 		
// 			if constexpr(vLeft.Subsumes(vRight))
// 				return vRight;
// 			else if constexpr(vRight.Subsumes(vLeft))
// 				return vLeft;
// 			else if constexpr
// 				(	(not vLeft).Subsumes(vRight)
// 				or	(not vRight).Subsumes(vLeft)
// 				)
// 				return Always{};
// 			else
// 				return vLeft.Or(vRight);
// 		}
// 	}
	
	template<ProtoStatement auto t_vStatement>
	struct
		StatementBase
	{
		friend auto constexpr
		(	operator +
		)	(	StatementBase const
				&
			)
		->	ProtoConjunction auto
		{	return + t_vStatement;	}
		
		friend auto constexpr
		(	operator *
		)	(	StatementBase const
				&
			)
		->	ProtoDisjunction auto
		{	return * t_vStatement;	}
		
		friend auto consteval
		(	operator <=>
		)	(	StatementBase const
				&
			,	ProtoStatement auto
					i_vRight
			)
		->	std::partial_ordering
		{	return t_vStatement <=> i_vRight;	}
		
		template<ProtoStatement auto t_vRightStatement>
		friend auto consteval
		(	operator <=>
		)	(	StatementBase const
				&
			,	StatementBase<t_vRightStatement> const
				&
			)
		->	std::partial_ordering
		{	return t_vStatement <=> t_vRightStatement;	}
		
		friend auto consteval
		(	operator ==
		)	(	StatementBase const
				&
			,	ProtoStatement auto
					i_vRight
			)
		->	bool
		{	return t_vStatement == i_vRight;	}
		
		template<ProtoStatement auto t_vRightStatement>
		friend auto consteval
		(	operator ==
		)	(	StatementBase const
				&
			,	StatementBase<t_vRightStatement> const
				&
			)
		->	bool
		{	return t_vStatement == t_vRightStatement;	}
		
		friend auto consteval
		(	operator not
		)	(	StatementBase const
				&
			)
		{	return not t_vStatement;	}
			
		friend auto consteval
		(	operator and
		)	(	StatementBase const
				&
			,	ProtoStatement auto
					i_vRight
			)
		->	ProtoConjunction auto
		{	return t_vStatement and i_vRight;	}
		
		friend auto consteval
		(	operator *
		)	(	StatementBase const
				&
			,	ProtoStatement auto
					i_vRight
			)
		->	ProtoDisjunction auto
		{	return t_vStatement * i_vRight;	}
		
		friend auto consteval
		(	operator and
		)	(	ProtoStatement auto
					i_vLeft
			,	StatementBase const
				&
			)
		->	ProtoConjunction auto
		{	return i_vLeft and t_vStatement;	}
		
		friend auto consteval
		(	operator *
		)	(	ProtoStatement auto
					i_vLeft
			,	StatementBase const
				&
			)
		->	ProtoDisjunction auto
		{	return i_vLeft * t_vStatement;	}
		
		template<ProtoStatement auto t_vRightStatement>
		friend auto consteval
		(	operator and
		)	(	StatementBase const
				&
			,	StatementBase<t_vRightStatement> const
				&
			)
		->	ProtoConjunction auto
		{	return t_vStatement and t_vRightStatement;	}
		
		template<ProtoStatement auto t_vRightStatement>
		friend auto consteval
		(	operator *
		)	(	StatementBase const
				&
			,	StatementBase<t_vRightStatement> const
				&
			)
		->	ProtoDisjunction auto
		{	return t_vStatement * t_vRightStatement;	}
		
		friend auto consteval
		(	operator or
		)	(	StatementBase const
				&
			,	ProtoStatement auto
					i_vRight
			)
		->	ProtoDisjunction auto
		{	return t_vStatement or i_vRight;	}
		
		friend auto consteval
		(	operator +
		)	(	StatementBase const
				&
			,	ProtoStatement auto
					i_vRight
			)
		->	ProtoConjunction auto
		{	return t_vStatement + i_vRight;	}
		
		friend auto consteval
		(	operator or
		)	(	ProtoStatement auto
					i_vLeft
			,	StatementBase const
				&
			)
		->	ProtoDisjunction auto
		{	return i_vLeft or t_vStatement;	}
		
		friend auto consteval
		(	operator +
		)	(	ProtoStatement auto
					i_vLeft
			,	StatementBase const
				&
			)
		->	ProtoConjunction auto
		{	return i_vLeft + t_vStatement;	}
		
		template<ProtoStatement auto t_vRightStatement>
		friend auto consteval
		(	operator or
		)	(	StatementBase const
				&
			,	StatementBase<t_vRightStatement> const
				&
			)
		->	ProtoDisjunction auto
		{	return t_vStatement or t_vRightStatement;	}
		
		template<ProtoStatement auto t_vRightStatement>
		friend auto consteval
		(	operator +
		)	(	StatementBase const
				&
			,	StatementBase<t_vRightStatement> const
				&
			)
		->	ProtoConjunction auto
		{	return t_vStatement + t_vRightStatement;	}
	};
	
	template<ProtoAtomic t_tAtomic>
	using
		AtomicBase
	=	StatementBase
		<	Atomic
			<	t_tAtomic
			>{}
		>
	;
	
	
	class
		Test final
	{	static Always constexpr inline Always {};
		static Never constexpr inline Never {};
		
		template<auto t_vPredicate>
		static bool constexpr
			IsAtomic
		=	ProtoAtomic<decltype(t_vPredicate)>;
		
		template<auto t_vPredicate>
		static bool constexpr
			IsStatement
		=	ProtoStatement<decltype(t_vPredicate)>;
		
		template<auto t_vPredicate>
		static bool constexpr
			IsConjunction
		=	ProtoConjunction<decltype(t_vPredicate)>;
		
		template<auto t_vPredicate>
		static bool constexpr
			IsDisjunction
		=	ProtoDisjunction<decltype(t_vPredicate)>;
		
		template<auto t_vPredicate>
		static bool constexpr
			IsClause
		=	ProtoClause<decltype(t_vPredicate)>;
		
		template<auto t_vPredicate>
		static bool constexpr
			IsAtomicClause
		=	ProtoAtomicClause<decltype(t_vPredicate)>;
		
		template<ProtoAtomic auto t_vAtomic>
		static Atomic<decltype(t_vAtomic)> constexpr Atomic{};
		
		template<ProtoAtomic auto t_vAtomic>
		static Not<decltype(t_vAtomic)> constexpr Not{};
		
		template<auto... t_vpClause>
		static All<decltype(* t_vpClause)...> constexpr All{};
		
		template<auto... t_vpClause>
		static Any<decltype(+ t_vpClause)...> constexpr Any{};

		static struct P_ : AtomicBase<P_> {} constexpr inline P{};
		static struct Q_ : AtomicBase<Q_> {} constexpr inline Q{};
		static struct R_ : AtomicBase<R_> {} constexpr inline R{};
		static struct S_ : AtomicBase<S_> {} constexpr inline S{};
		
		static_assert( IsAtomic<P>);
		static_assert(!IsStatement<P>);
		static_assert(!IsConjunction<P>);
		static_assert(!IsDisjunction<P>);
		static_assert(!IsClause<P>);
		static_assert(!IsAtomicClause<P>);
		
		static_assert(!IsAtomic<Atomic<P>>);
		static_assert( IsStatement<Atomic<P>>);
		static_assert( IsConjunction<Atomic<P>>);
		static_assert( IsDisjunction<Atomic<P>>);
		static_assert( IsClause<Atomic<P>>);
		static_assert( IsAtomicClause<Atomic<P>>);
		
		static_assert(!IsAtomic<not P>);
		static_assert( IsStatement<not P>);
		static_assert( IsConjunction<not P>);
		static_assert( IsDisjunction<not P>);
		static_assert( IsClause<not P>);
		static_assert( IsAtomicClause<not P>);
		
		static_assert(!IsAtomic<All<P, Q>>);
		static_assert( IsStatement<All<P, Q>>);
		static_assert( IsConjunction<All<P, Q>>);
		static_assert( IsDisjunction<All<P, Q>>);
		static_assert( IsClause<All<P, Q>>);
		static_assert(!IsAtomicClause<All<P, Q>>);
		
		static_assert(!IsAtomic<Any<P, Q>>);
		static_assert( IsStatement<Any<P, Q>>);
		static_assert( IsConjunction<Any<P, Q>>);
		static_assert( IsDisjunction<Any<P, Q>>);
		static_assert( IsClause<Any<P, Q>>);
		static_assert(!IsAtomicClause<Any<P, Q>>);
		
		static_assert(!IsAtomic<All<P, Any<Q, R>>>);
		static_assert( IsStatement<All<P, Any<Q, R>>>);
		static_assert( IsConjunction<All<P, Any<Q, R>>>);
		static_assert(!IsDisjunction<All<P, Any<Q, R>>>);
		static_assert(!IsClause<All<P, Any<Q, R>>>);
		static_assert(!IsAtomicClause<All<P, Any<Q, R>>>);
		
		static_assert(!IsAtomic<Any<P, All<Q, R>>>);
		static_assert( IsStatement<Any<P, All<Q, R>>>);
		static_assert(!IsConjunction<Any<P, All<Q, R>>>);
		static_assert( IsDisjunction<Any<P, All<Q, R>>>);
		static_assert(!IsClause<Any<P, All<Q, R>>>);
		static_assert(!IsAtomicClause<Any<P, All<Q, R>>>);
		
		static_assert(!IsAtomic<All<Any<Q, P>, Any<R, S>>>);
		static_assert( IsStatement<All<Any<Q, P>, Any<R, S>>>);
		static_assert( IsConjunction<All<Any<Q, P>, Any<R, S>>>);
		static_assert(!IsDisjunction<All<Any<Q, P>, Any<R, S>>>);
		static_assert(!IsClause<All<Any<Q, P>, Any<R, S>>>);
		static_assert(!IsAtomicClause<All<Any<Q, P>, Any<R, S>>>);
		
		static_assert(!IsAtomic<Any<All<Q, P>, All<R, S>>>);
		static_assert( IsStatement<Any<All<Q, P>, All<R, S>>>);
		static_assert(!IsConjunction<Any<All<Q, P>, All<R, S>>>);
		static_assert( IsDisjunction<Any<All<Q, P>, All<R, S>>>);
		static_assert(!IsClause<Any<All<Q, P>, All<R, S>>>);
		static_assert(!IsAtomicClause<Any<All<Q, P>, All<R, S>>>);
		
		static auto constexpr
			Unordered
		=	std::partial_ordering::unordered
		;
		/// Ordering
		static_assert(Always == Always);
		static_assert(Always < Never);
		static_assert(Always < P);
		static_assert(Always < All<P, Q>);
		static_assert(Always < All<P, Any<Q, R>>);
		static_assert(Always < Any<P, All<Q, R>>);
		
		static_assert(Never > Always);
		static_assert(Never == Never);
		static_assert(Never > P);
		static_assert(Never > All<P, Q>);
		static_assert(Never > All<P, Any<Q, R>>);
		static_assert(Never > Any<P, Q>);
		static_assert(Never > Any<P, All<Q, R>>);
		
		static_assert(P > Always);
		static_assert(P < Never);
		static_assert(P == P);
		static_assert(P <=> R == Unordered);
		static_assert(P <=> All<Q, R> == Unordered);
		static_assert(P <=> All<Q, Any<R, S>> == Unordered);
		static_assert(P <=> Any<Q, R> == Unordered);
		static_assert(P <=> Any<Q, All<R, S>> == Unordered);
		
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
		static_assert(All<P, Q> <=> All<P, Any<R, S>> == Unordered);
		static_assert(All<P, Q> <=> All<Any<R, S>, P> == Unordered);
		static_assert(All<P, Q> <=> All<R, Any<P, S>> == Unordered);
		static_assert(All<P, Q> <=> All<Any<P, S>, R> == Unordered);
		static_assert(All<P, Q> <=> All<R, Any<P, Q>> == Unordered);
		static_assert(All<P, Q> <=> All<Any<P, Q>, R> == Unordered);
		static_assert(All<P, Q> <=> Any<R, S> == Unordered);
		static_assert(All<P, Q> <=> Any<R, All<P, S>> == Unordered);
		static_assert(All<P, Q> <=> Any<All<P, S>, R> == Unordered);
		
		static_assert(Any<P, Q> > Always);
		static_assert(Any<P, Q> < Never);
		static_assert(Any<P, Q> <=> R == Unordered);
		static_assert(Any<P, Q> <=> All<R, S> == Unordered);
		static_assert(Any<P, Q> <=> All<R, Any<P, S>> == Unordered);
		static_assert(Any<P, Q> <=> All<Any<P, S>, R> == Unordered);
		static_assert(Any<P, Q> == Any<P, Q>);
		static_assert(Any<P, Q> == Any<Q, P>);
		static_assert(Any<P, Q> <=> Any<P, R> == Unordered);
		static_assert(Any<P, Q> <=> Any<R, P> == Unordered);
		static_assert(Any<P, Q> <=> Any<R, Q> == Unordered);
		static_assert(Any<P, Q> <=> Any<Q, R> == Unordered);
		static_assert(Any<P, Q> <=> Any<R, S> == Unordered);
		static_assert(Any<P, Q> <=> Any<P, All<R, S>> == Unordered);
		static_assert(Any<P, Q> <=> Any<All<R, S>, P> == Unordered);
		static_assert(Any<P, Q> <=> Any<R, All<P, S>> == Unordered);
		static_assert(Any<P, Q> <=> Any<All<P, S>, R> == Unordered);
		
		static_assert(P < All<P, Q>);
		static_assert(P < All<Q, P>);
		static_assert(P < All<P, Any<Q, R>>);
		static_assert(P < All<Any<Q, R>, P>);
		static_assert(P > All<Any<P, Q>, Any<P, R>>);
		static_assert(P > Any<P, Q>);
		static_assert(P > Any<Q, P>);
		static_assert(P > Any<P, All<Q, R>>);
		static_assert(P > Any<All<Q, R>, P>);
		static_assert(P < Any<All<P, Q>, All<P, R>>);
		
		static_assert(All<P, Q> > P);
		static_assert(All<P, Q> > Q);
		static_assert(All<P, Q> < All<P, Q, R>);
		static_assert(All<P, Q> < All<P, R, Q>);
		static_assert(All<P, Q> < All<Q, P, R>);
		static_assert(All<P, Q> < All<Q, R, P>);
		static_assert(All<P, Q> < All<R, P, Q>);
		static_assert(All<P, Q> < All<R, Q, P>);
		static_assert(All<P, Q> > All<P, Any<Q, R>>);
		static_assert(All<P, Q> > All<Any<Q, R>, P>);
		static_assert(All<P, Q> > All<Any<P, R>, Any<Q, S>>);
		static_assert(All<P, Q> > All<Any<Q, S>, Any<P, R>>);
		static_assert(All<P, Q> > Any<P, Q>);
		static_assert(All<P, Q> > Any<Q, P>);
		static_assert(All<P, Q> > Any<P, Q, R>);
		static_assert(All<P, Q> > Any<P, R, Q>);
		static_assert(All<P, Q> > Any<Q, P, R>);
		static_assert(All<P, Q> > Any<Q, R, P>);
		static_assert(All<P, Q> > Any<R, P, Q>);
		static_assert(All<P, Q> > Any<R, Q, P>);
		static_assert(All<P, Q> > Any<P, All<R, S>>);
		static_assert(All<P, Q> > Any<All<R, S>, P>);
		static_assert(All<P, Q> > Any<All<P, Q>, All<R, S>>);
		static_assert(All<P, Q> > Any<All<R, S>, All<P, Q>>);
		static_assert(All<P, Q> < Any<All<P, Q, R>, All<P, Q, S>>);
		static_assert(All<P, Q> < Any<All<P, Q, S>, All<P, Q, R>>);
		
		static_assert(All<P, Q, R> > P);
		static_assert(All<P, Q, R> > Q);
		static_assert(All<P, Q, R> > R);
		static_assert(All<P, Q, R> > All<P, Q>);
		static_assert(All<P, Q, R> > All<P, R>);
		static_assert(All<P, Q, R> > All<Q, P>);
		static_assert(All<P, Q, R> > All<Q, R>);
		static_assert(All<P, Q, R> > All<R, P>);
		static_assert(All<P, Q, R> > All<R, Q>);
		static_assert(All<P, Q, R> > All<P, Any<Q, R>>);
		static_assert(All<P, Q, R> > All<Any<Q, R>, P>);
		static_assert(All<P, Q, R> > All<P, Q, Any<R, S>>);
		static_assert(All<P, Q, R> > All<P, Any<R, S>, Q>);
		static_assert(All<P, Q, R> > All<Any<R, S>, P, Q>);
		static_assert(All<P, Q, R> > All<Any<P, S>, Any<Q, S>, Any<R, S>>);
		
		static_assert(All<P, Any<Q, R>> > P);
		static_assert(All<P, Any<Q, R>> <=> Q == Unordered);
		static_assert(All<P, Any<Q, R>> <=> R == Unordered);
		static_assert(All<P, Any<Q, R>> < All<P, Q>);
		static_assert(All<P, Any<Q, R>> < All<P, R>);
		static_assert(All<P, Any<Q, R>> == All<P, Any<Q, R>>);
		static_assert(All<P, Any<Q, R>> == All<P, Any<R, Q>>);
		static_assert(All<P, Any<Q, R>> == All<Any<Q, R>, P>);
		static_assert(All<P, Any<Q, R>> == All<Any<R, Q>, P>);
		static_assert(All<P, Any<Q, R>> <=> All<P, Any<Q, S>> == Unordered);
		static_assert(All<P, Any<Q, R>> <=> All<P, Any<S, Q>> == Unordered);
		static_assert(All<P, Any<Q, R>> <=> All<Any<Q, S>, P> == Unordered);
		static_assert(All<P, Any<Q, R>> <=> All<Any<S, Q>, P> == Unordered);
		static_assert(All<P, Any<Q, R>> > All<Any<P, R>, Any<Q, R>>);
		static_assert(All<P, Any<Q, R>> > All<Any<Q, R>, Any<P, R>>);
		
		static_assert(All<Any<P, Q>, Any<P, R>> < P);
		static_assert(All<Any<P, Q>, Any<P, R>> <=> Q == Unordered);
		static_assert(All<Any<P, Q>, Any<P, R>> <=> R == Unordered);
		static_assert(All<Any<P, Q>, Any<P, R>> < All<P, R>);
		static_assert(All<Any<P, Q>, Any<P, R>> < All<P, Q>);
		static_assert(All<Any<P, Q>, Any<P, R>> < All<Q, R>);
		static_assert(All<Any<P, Q>, Any<P, R>> < All<P, Q, R>);
		static_assert(All<Any<P, Q>, Any<P, R>> < All<P, Any<Q, R>>);
		static_assert(All<Any<P, Q>, Any<P, R>> < All<Q, Any<P, R>>);
		static_assert(All<Any<P, Q>, Any<P, R>> == All<Any<P, Q>, Any<P, R>>);
		static_assert(All<Any<P, Q>, Any<P, R>> == All<Any<P, Q>, Any<R, P>>);
		static_assert(All<Any<P, Q>, Any<P, R>> == All<Any<Q, P>, Any<P, R>>);
		static_assert(All<Any<P, Q>, Any<P, R>> == All<Any<Q, P>, Any<R, P>>);
		static_assert(All<Any<P, Q>, Any<P, R>> == All<Any<P, R>, Any<P, Q>>);
		static_assert(All<Any<P, Q>, Any<P, R>> == All<Any<P, R>, Any<Q, P>>);
		static_assert(All<Any<P, Q>, Any<P, R>> == All<Any<R, P>, Any<P, Q>>);
		static_assert(All<Any<P, Q>, Any<P, R>> == All<Any<R, P>, Any<Q, P>>);
		static_assert(All<Any<P, Q>, Any<P, R>> > All<Any<P, Q>, Any<P, R, S>>);
		static_assert(All<Any<P, Q>, Any<P, R>> > All<Any<P, Q, S>, Any<P, R>>);
		
		
		static auto constexpr vLeft = All<Any<P, Q>, Any<P, R>>;
		static_assert(Any<P, Q> < Any<P, All<Q, R>>);
		static_assert(Any<P, R> < Any<P, All<Q, R>>);	static_assert(Any<P, Q> < All<Q,R>);
		static_assert(Any<P, Q> < P);
		static_assert(Any<P, R> < All<Q, R>);
		static_assert(Any<P, R> < P);
		static_assert(All<Any<P, Q>, Any<P, R>> == Any<P, All<Q, R>>);
		// TODO
		static_assert(All<P, Any<Q, R>> >= P);
		static_assert(Any<R, Q> < All<P, Any<Q, R>>);
		static_assert(All<P, Any<Q, R>> > Any<R, Q>);
		//static_assert()
		
		static_assert(All<Any<P, Q>, Any<P, R>> == Any<P, All<Q, R>>);
		static_assert(Any<P, All<Q, R>> == All<Any<P, Q>, Any<P, R>>);
		static_assert(All<Any<P, Q>, Any<P, R>> == Any<All<P, R>, All<Q, R>>);
		static_assert(Any<All<P, R>, All<Q, R>> == All<Any<P, Q>, Any<P, R>>);
		
		static_assert(Any<P, Q> < P);
		static_assert(Any<P, Q> < Q);
		static_assert(Any<P, Q> > Any<P, Q, R>);
		static_assert(Any<P, Q> > Any<P, R, Q>);
		static_assert(Any<P, Q> > Any<Q, P, R>);
		static_assert(Any<P, Q> > Any<Q, R, P>);
		static_assert(Any<P, Q> > Any<R, P, Q>);
		static_assert(Any<P, Q> > Any<R, Q, P>);
		static_assert(Any<P, Q> < Any<P, All<Q, R>>);
		static_assert(Any<P, Q> < Any<All<Q, R>, P>);
		static_assert(Any<P, Q> < Any<All<P, R>, All<Q, S>>);
		static_assert(Any<P, Q> < Any<All<Q, S>, All<P, R>>);
		
		static_assert(Any<P, Q> < All<P, Q>);
		static_assert(Any<P, Q> < All<Q, P>);
		static_assert(Any<P, Q> < All<P, Q, R>);
		static_assert(Any<P, Q> < All<P, R, Q>);
		static_assert(Any<P, Q> < All<Q, P, R>);
		static_assert(Any<P, Q> < All<Q, R, P>);
		static_assert(Any<P, Q> < All<R, P, Q>);
		static_assert(Any<P, Q> < All<R, Q, P>);
		static_assert(Any<P, Q> < All<P, Any<R, S>>);
		static_assert(Any<P, Q> < All<Any<R, S>, P>);
		static_assert(Any<P, Q> < All<Any<P, Q>, Any<R, S>>);
		static_assert(Any<P, Q> < All<Any<R, S>, Any<P, Q>>);
		static_assert(Any<P, Q> > All<Any<P, Q, R>, Any<P, Q, S>>);
		static_assert(Any<P, Q> > All<Any<P, Q, S>, Any<P, Q, R>>);
		
		static_assert(Any<P, Q, R> < P);
		static_assert(Any<P, Q, R> < Q);
		static_assert(Any<P, Q, R> < R);
		static_assert(Any<P, Q, R> < Any<P, Q>);
		static_assert(Any<P, Q, R> < Any<P, R>);
		static_assert(Any<P, Q, R> < Any<Q, P>);
		static_assert(Any<P, Q, R> < Any<Q, R>);
		static_assert(Any<P, Q, R> < Any<R, P>);
		static_assert(Any<P, Q, R> < Any<R, Q>);
		static_assert(Any<P, Q, R> < Any<P, All<Q, R>>);
		static_assert(Any<P, Q, R> < Any<All<Q, R>, P>);
		static_assert(Any<P, Q, R> < Any<P, Q, All<R, S>>);
		static_assert(Any<P, Q, R> < Any<P, All<R, S>, Q>);
		static_assert(Any<P, Q, R> < Any<All<R, S>, P, Q>);
		static_assert(Any<P, Q, R> < Any<All<P, S>, All<Q, S>, All<R, S>>);

		static_assert(Any<P, All<Q, R>> < P);
		static_assert(Any<P, All<Q, R>> <=> Q == Unordered);
		static_assert(Any<P, All<Q, R>> <=> R == Unordered);
		static_assert(Any<P, All<Q, R>> > Any<P, Q>);
		static_assert(Any<P, All<Q, R>> > Any<P, R>);
		static_assert(Any<P, All<Q, R>> == Any<P, All<Q, R>>);
		static_assert(Any<P, All<Q, R>> == Any<P, All<R, Q>>);
		static_assert(Any<P, All<Q, R>> == Any<All<Q, R>, P>);
		static_assert(Any<P, All<Q, R>> == Any<All<R, Q>, P>);
		static_assert(Any<P, All<Q, R>> <=> Any<P, All<Q, S>> == Unordered);
		static_assert(Any<P, All<Q, R>> <=> Any<P, All<S, Q>> == Unordered);
		static_assert(Any<P, All<Q, R>> <=> Any<All<Q, S>, P> == Unordered);
		static_assert(Any<P, All<Q, R>> <=> Any<All<S, Q>, P> == Unordered);
		static_assert(Any<P, All<Q, R>> < Any<All<P, R>, All<Q, R>>);
		static_assert(Any<P, All<Q, R>> < Any<All<Q, R>, All<P, R>>);
		
		static_assert(Any<All<P, Q>, All<P, R>> > P);
		static_assert(Any<All<P, Q>, All<P, R>> <=> Q == Unordered);
		static_assert(Any<All<P, Q>, All<P, R>> <=> R == Unordered);
		static_assert(Any<All<P, Q>, All<P, R>> > Any<P, R>);
		static_assert(Any<All<P, Q>, All<P, R>> > Any<P, Q>);
		static_assert(Any<All<P, Q>, All<P, R>> > Any<Q, R>);
		static_assert(Any<All<P, Q>, All<P, R>> > Any<P, Q, R>);
		static_assert(Any<All<P, Q>, All<P, R>> > Any<P, All<Q, R>>);
		static_assert(Any<All<P, Q>, All<P, R>> > Any<Q, All<P, R>>);
		static_assert(Any<All<P, Q>, All<P, R>> == Any<All<P, Q>, All<P, R>>);
		static_assert(Any<All<P, Q>, All<P, R>> == Any<All<P, Q>, All<R, P>>);
		static_assert(Any<All<P, Q>, All<P, R>> == Any<All<Q, P>, All<P, R>>);
		static_assert(Any<All<P, Q>, All<P, R>> == Any<All<Q, P>, All<R, P>>);
		static_assert(Any<All<P, Q>, All<P, R>> == Any<All<P, R>, All<P, Q>>);
		static_assert(Any<All<P, Q>, All<P, R>> == Any<All<P, R>, All<Q, P>>);
		static_assert(Any<All<P, Q>, All<P, R>> == Any<All<R, P>, All<P, Q>>);
		static_assert(Any<All<P, Q>, All<P, R>> == Any<All<R, P>, All<Q, P>>);
		static_assert(Any<All<P, Q>, All<P, R>> < Any<All<P, Q>, All<P, R, S>>);
		static_assert(Any<All<P, Q>, All<P, R>> < Any<All<P, Q, S>, All<P, R>>);
		
		template<ProtoStatement auto t_vExpected, ProtoStatement auto t_vStatement>
		static bool constexpr
			ExpectType
		=	std::is_same_v<decltype(t_vExpected), decltype(t_vStatement)>
		;
		
		static_assert( ExpectType<Always,  (Always)>);
		static_assert( ExpectType<Always, +(Always)>);
		static_assert( ExpectType<Always, *(Always)>);
		static_assert( ExpectType<Always,  (not Never)>);
		static_assert( ExpectType<Always, +(not Never)>);
		static_assert( ExpectType<Always, *(not Never)>);
		
		static_assert( ExpectType<Never,  (Never)>);
		static_assert( ExpectType<Never, +(Never)>);
		static_assert( ExpectType<Never, *(Never)>);
		static_assert( ExpectType<Never,  (not Always)>);
		static_assert( ExpectType<Never, +(not Always)>);
		static_assert( ExpectType<Never, *(not Always)>);
		
		static_assert( ExpectType<Atomic<P>, +(P)>);
		static_assert( ExpectType<Atomic<P>, *(P)>);
		static_assert( ExpectType<Atomic<P>,  (not not P)>);
		static_assert( ExpectType<Atomic<P>, +(not not P)>);
		static_assert( ExpectType<Atomic<P>, *(not not P)>);
		
		static_assert( ExpectType<Not<P>,  (not P)>);
		static_assert( ExpectType<Not<P>, +(not P)>);
		static_assert( ExpectType<Not<P>, *(not P)>);
		static_assert( ExpectType<Not<P>,  (not not not P)>);
		static_assert( ExpectType<Not<P>, +(not not not P)>);
		static_assert( ExpectType<Not<P>, *(not not not P)>);
		
		static_assert( ExpectType<All<P, Q>,  (P and Q)>);
		static_assert( ExpectType<All<P, Q>, +(P and Q)>);
		static_assert( ExpectType<All<P, Q>, *(P and Q)>);
		static_assert( ExpectType<All<P, Q>,  (P * Q)>);
		static_assert( ExpectType<All<P, Q>, +(P * Q)>);
		static_assert( ExpectType<All<P, Q>, *(P * Q)>);
		
		static_assert( ExpectType<All<P, Q>,  (not (not P or not Q))>);
		static_assert( ExpectType<All<P, Q>, +(not (not P or not Q))>);
		static_assert( ExpectType<All<P, Q>, *(not (not P or not Q))>);
		static_assert( ExpectType<All<P, Q>,  (not (not P + not Q))>);
		static_assert( ExpectType<All<P, Q>, +(not (not P + not Q))>);
		static_assert( ExpectType<All<P, Q>, *(not (not P + not Q))>);
		
		static_assert( ExpectType<All<P, Any<Q, R>>,  (P and (Q or R))>);
		static_assert( ExpectType<All<P, Any<Q, R>>, +(P and (Q or R))>);
		static_assert(!ExpectType<All<P, Any<Q, R>>, *(P and (Q or R))>);
		static_assert( ExpectType<All<P, Any<Q, R>>,  (P and (Q + R))>);
		static_assert( ExpectType<All<P, Any<Q, R>>, +(P and (Q + R))>);
		static_assert(!ExpectType<All<P, Any<Q, R>>, *(P and (Q + R))>);
		static_assert(!ExpectType<All<P, Any<Q, R>>,  (P * (Q and R))>);
		static_assert( ExpectType<All<P, Any<Q, R>>, +(P * (Q + R))>);
		static_assert(!ExpectType<All<P, Any<Q, R>>, *(P * (Q and R))>);
		static_assert(!ExpectType<All<P, Any<Q, R>>,  (P * (Q + R))>);
		static_assert( ExpectType<All<P, Any<Q, R>>, +(P * (Q + R))>);
		static_assert(!ExpectType<All<P, Any<Q, R>>, *(P * (Q + R))>);
				
		static_assert( ExpectType<All<Any<P, Q>, R>,  ((P or Q) and R)>);
		static_assert( ExpectType<All<Any<P, Q>, R>, +((P or Q) and R)>);
		static_assert(!ExpectType<All<Any<P, Q>, R>, *((P or Q) and R)>);
		static_assert( ExpectType<All<Any<P, Q>, R>,  ((P + Q) and R)>);
		static_assert( ExpectType<All<Any<P, Q>, R>, +((P + Q) and R)>);
		static_assert(!ExpectType<All<Any<P, Q>, R>, *((P + Q) and R)>);
		static_assert(!ExpectType<All<Any<P, Q>, R>,  ((P or Q) * R)>);
 		static_assert( ExpectType<All<Any<P, Q>, R>, +((P or Q) * R)>);
		static_assert(!ExpectType<All<Any<P, Q>, R>, *((P or Q) * R)>);
		static_assert(!ExpectType<All<Any<P, Q>, R>,  ((P + Q) * R)>);
		static_assert( ExpectType<All<Any<P, Q>, R>, +((P + Q) * R)>);
		static_assert(!ExpectType<All<Any<P, Q>, R>, *((P + Q) * R)>);
				
		static_assert( ExpectType<All<Any<P, Q>, Any<R, S>>,  ((P or Q) and (R or S))>);	static_assert( ExpectType<All<Any<P, Q>, Any<R, S>>, +((P or Q) and (R or S))>);
// TODO static_assert(!ExpectType<All<Any<P, Q>, Any<R, S>>, *((P or Q) and (R or S))>);
		static_assert( ExpectType<All<Any<P, Q>, Any<R, S>>,  ((P + Q) and (R or S))>);
		static_assert( ExpectType<All<Any<P, Q>, Any<R, S>>, +((P + Q) and (R or S))>);
// TODO static_assert(!ExpectType<All<Any<P, Q>, Any<R, S>>, *((P + Q) and (R or S))>);
// TODO static_assert(!ExpectType<All<Any<P, Q>, Any<R, S>>,  ((P or Q) * (R or S))>);
// TODO static_assert( ExpectType<All<Any<P, Q>, Any<R, S>>, +((P or Q) * (R or S))>);
// TODO static_assert(!ExpectType<All<Any<P, Q>, Any<R, S>>, *((P or Q) * (R or S))>);
// TODO static_assert(!ExpectType<All<Any<P, Q>, Any<R, S>>,  ((P + Q) * (R or S))>);
// TODO static_assert( ExpectType<All<Any<P, Q>, Any<R, S>>, +((P + Q) * (R or S))>);
// TODO static_assert(!ExpectType<All<Any<P, Q>, Any<R, S>>, *((P + Q) * (R or S))>);
		
		static_assert( ExpectType<Any<P, Q>,  (P or Q)>);
		static_assert( ExpectType<Any<P, Q>, +(P or Q)>);
		static_assert( ExpectType<Any<P, Q>, *(P or Q)>);
		static_assert( ExpectType<Any<P, Q>,  (P + Q)>);
		static_assert( ExpectType<Any<P, Q>, +(P + Q)>);
		static_assert( ExpectType<Any<P, Q>, *(P + Q)>);		
		static_assert( ExpectType<Any<P, Q>,  (not (not P and not Q))>);
		static_assert( ExpectType<Any<P, Q>, +(not (not P and not Q))>);
		static_assert( ExpectType<Any<P, Q>, *(not (not P and not Q))>);
		static_assert( ExpectType<Any<P, Q>,  (not (not P * not Q))>);
		static_assert( ExpectType<Any<P, Q>, +(not (not P * not Q))>);
		static_assert( ExpectType<Any<P, Q>, *(not (not P * not Q))>);
		
		static_assert( ExpectType<Any<P, All<Q, R>>,  (P or (Q and R))>);
		static_assert(!ExpectType<Any<P, All<Q, R>>, +(P or (Q and R))>);
		static_assert( ExpectType<Any<P, All<Q, R>>, *(P or (Q and R))>);
		static_assert( ExpectType<Any<P, All<Q, R>>,  (P or (Q * R))>);
		static_assert(!ExpectType<Any<P, All<Q, R>>, +(P or (Q * R))>);
		static_assert( ExpectType<Any<P, All<Q, R>>, *(P or (Q * R))>);
		static_assert(!ExpectType<Any<P, All<Q, R>>,  (P + (Q and R))>);
		static_assert(!ExpectType<Any<P, All<Q, R>>, +(P + (Q and R))>);
		static_assert( ExpectType<Any<P, All<Q, R>>, *(P + (Q and R))>);
		static_assert(!ExpectType<Any<P, All<Q, R>>,  (P + (Q * R))>);
		static_assert(!ExpectType<Any<P, All<Q, R>>, +(P + (Q * R))>);
		static_assert( ExpectType<Any<P, All<Q, R>>, *(P + (Q * R))>);
				
		static_assert( ExpectType<Any<All<P, Q>, R>,  ((P and Q) or R)>);
		static_assert(!ExpectType<Any<All<P, Q>, R>, +((P and Q) or R)>);
		static_assert( ExpectType<Any<All<P, Q>, R>, *((P and Q) or R)>);
		static_assert( ExpectType<Any<All<P, Q>, R>,  ((P * Q) or R)>);
		static_assert(!ExpectType<Any<All<P, Q>, R>, +((P * Q) or R)>);
		static_assert( ExpectType<Any<All<P, Q>, R>, *((P * Q) or R)>);
		static_assert(!ExpectType<Any<All<P, Q>, R>,  ((P and Q) + R)>);
		static_assert(!ExpectType<Any<All<P, Q>, R>, +((P and Q) + R)>);
		static_assert( ExpectType<Any<All<P, Q>, R>, *((P and Q) + R)>);
		static_assert(!ExpectType<Any<All<P, Q>, R>,  ((P * Q) + R)>);
		static_assert(!ExpectType<Any<All<P, Q>, R>, +((P * Q) + R)>);
		static_assert( ExpectType<Any<All<P, Q>, R>, *((P * Q) + R)>);
				
		static_assert( ExpectType<Any<All<P, Q>, All<R, S>>,  ((P and Q) or (R and S))>);
// TODO static_assert(!ExpectType<Any<All<P, Q>, All<R, S>>, +((P and Q) or (R and S))>);
		static_assert( ExpectType<Any<All<P, Q>, All<R, S>>, *((P and Q) or (R and S))>);
		static_assert( ExpectType<Any<All<P, Q>, All<R, S>>,  ((P * Q) or (R and S))>);
// TODO static_assert( ExpectType<Any<All<P, Q>, All<R, S>>, +((P * Q) or (R and S))>);
		static_assert( ExpectType<Any<All<P, Q>, All<R, S>>, *((P * Q) or (R and S))>);
// TODO static_assert(!ExpectType<Any<All<P, Q>, All<R, S>>,  ((P and Q) + (R and S))>);
// TODO static_assert(!ExpectType<Any<All<P, Q>, All<R, S>>, +((P and Q) + (R and S))>);
// TODO static_assert( ExpectType<Any<All<P, Q>, All<R, S>>, *((P and Q) + (R and S))>);
// TODO static_assert(!ExpectType<Any<All<P, Q>, All<R, S>>,  ((P * Q) + (R and S))>);
// TODO static_assert(!ExpectType<Any<All<P, Q>, All<R, S>>, +((P * Q) + (R and S))>);
// TODO static_assert( ExpectType<Any<All<P, Q>, All<R, S>>, *((P * Q) + (R and S))>);
		
		
		
		static_assert( ExpectType<Any<P, Q>, P or Q>);
		static_assert( ExpectType<Any<P, Q>, +P or Q>);
		static_assert( ExpectType<Any<P, Q>, *P or Q>);
		static_assert( ExpectType<Any<P, Q>, P + Q>);
		static_assert( ExpectType<Any<P, Q>, +P + Q>);
		static_assert( ExpectType<Any<P, Q>, *P + Q>);
		static_assert( ExpectType<Any<not P, Q>, not (P and not Q)>);
		static_assert( ExpectType<Any<not P, Q>, +not (P and not Q)>);
		static_assert( ExpectType<Any<not P, Q>, *not (P and not Q)>);
		static_assert( ExpectType<Any<not P, Q>, not (P * not Q)>);
		static_assert( ExpectType<Any<not P, Q>, +not (P * not Q)>);
		static_assert( ExpectType<Any<not P, Q>, *not (P * not Q)>);
		
		
		/// Always
		static_assert(Always == Always);
		static_assert(Always == not not Always, "Double negation law violated.");
		static_assert(Always < Never);
		static_assert(Always == not Never);
		static_assert(Always < P);
		static_assert(Always < (P and Q));
		static_assert(Always < (P and (Q or R)));
// 		static_assert(Always < ((P or Q) and R));
		static_assert(Always < (P or Q));
		
		static_assert((Always and Always) == Always);
		static_assert((Always and Never ) == Never);
		static_assert((Always and P) == P, "Identity law violated.");
		static_assert((Always or Always) == Always);
		static_assert((Always or Never ) == Always);
		static_assert((Always or P) == Always, "Domination law violated.");
		
		/// Never
		static_assert(Never == not Always);
		static_assert(Never == not not Never, "Double negation law violated.");
		static_assert((Never and Always) == Never);
		static_assert((Never and Never ) == Never);
		static_assert((Never and P) == Never, "Domination law violated.");
 		static_assert((Never or Always) == Always);
		static_assert((Never or Never ) == Never);
		static_assert((Never or P) == P, "Identity law violated.");
		
		/// Atomic
		static_assert(P != not P);
		static_assert(P == not not P, "Double negation law violated.");
		static_assert((P and Never) == Never, "Domination law violated.");
// 		static_assert((P and (not P or Q)) == (Q and P));
		static_assert((P and Always) == P, "Identity law violated.");
		static_assert((P and P) == P, "Idemptotent law violated");
		static_assert((P and Q) == (Q and P), "Commutative law violated.");
		static_assert((P and not P) == Never);
		static_assert(((P and Q) and not P) == Never);
		static_assert((P and (not P and Q)) == Never);
		static_assert((P or (not P or Q)) == Always);
// 		static_assert((P or (not P and Q)) == (Q or P));
		static_assert((P or Never) == P, "Identity law violated.");
		static_assert((P or Always) == Always, "Domination law violated.");
		static_assert((P or P) == P, "Idemptotent law violated");
		static_assert((P or Q) == (Q or P), "Commutative law violated.");
		
		static_assert((not P or (P or Q)) == Always);
// 		static_assert((not P or (P and Q)) == (Q or not P));
// 		static_assert((not P and (P or Q)) == (Q and not P));
		static_assert((not P and (P and Q)) == Never);
		static_assert(((not P and Q) and P) == Never);
		
		/// Conjunction
// 		static_assert(((P and Q) or not P) == (Q or not P));
		static_assert((P and Q) != not (P and Q));
		static_assert((P and Q) != not (Q and P));
// 		static_assert(((not P and Q) or P) == (Q or P));		
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
		static_assert((P or not P) == Always);
		static_assert(((P or Q) or not P) == Always);
// 		static_assert(((P or Q) and not P) == (Q and not P));
		static_assert(((not P or Q) or P) == Always);
// 		static_assert(((not P or Q) and P) == (Q and P));
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
	};
}


