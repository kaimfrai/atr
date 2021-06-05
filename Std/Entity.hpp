#pragma once

#include <type_traits>
#include <compare>
#include <utility>

namespace
	Meta
{	
	struct Valid_T{};
	
	template<typename...>
	using ValidTypes_T = Valid_T;
	template<typename...>
	auto constexpr ValidTypes_V = Valid_T{};
	
	template
		<	std::size_t
				t_nIndex
		>
	struct
		Index
	{
		constexpr
		(	operator
			std::make_index_sequence
			<	t_nIndex
			>
		)	()	const
		{	return {};	}
	};
	

	
	
	
	namespace
		Trait
	{	template<typename... t_tpElement>
		struct [[nodiscard]]Type;
		
		template<auto... t_vpElement>
		struct [[nodiscard]]Value;
		template<auto&... t_rpEntity>
		struct [[nodiscard]]Global;
		
		template<typename t_tTrait>
		struct
			AtomicConstraint
		{
			template<typename t_tRightTrait>
			auto consteval friend
			(	operator==
			)	(	AtomicConstraint const
					&
				,	AtomicConstraint<t_tRightTrait> const
					&
				)
			->	bool
			{	return	std::is_same_v<t_tTrait, t_tRightTrait>;	}
		};
		template<typename t_tTrait>
		(	AtomicConstraint
		)	(AtomicConstraint<t_tTrait> const&)
		->	AtomicConstraint<t_tTrait>;
		
		template<AtomicConstraint... t_vpAtomic>
		struct
			DisjunctiveClause
		{	constexpr
			(	DisjunctiveClause
			)	()
			=	default;
			
			explicit constexpr
			(	DisjunctiveClause
			)	(	decltype(t_vpAtomic) const
					&...
				)
			{}
			
			template<typename t_tTrait>
			auto constexpr friend
				operator and
				(	DisjunctiveClause const
					&	i_rLeftClause
				,	AtomicConstraint<t_tTrait> const
					&	i_rRightAtomic
				)
			{	if constexpr
					((	...
					or	(	AtomicConstraint<t_tTrait>{}
						==	t_vpAtomic
						)
					))
					return
						i_rLeftClause
					;
				else
					return
						DisjunctiveClause
						{	t_vpAtomic
							...
						,	i_rRightAtomic
						}
					;
			}
			
			template<AtomicConstraint... t_vpRightAtomic>
			auto constexpr friend
				operator and
				(	DisjunctiveClause const
					&	i_rLeftClause
				,	DisjunctiveClause<t_vpRightAtomic...> const
					&
				)
			{	return
				(	i_rLeftClause
				and	...
				and	t_vpRightAtomic
				);
			}
		};
		template<AtomicConstraint... t_vpAtomic>
		(	DisjunctiveClause
		)	(DisjunctiveClause<t_vpAtomic...> const&)
		->	DisjunctiveClause<t_vpAtomic...>;
		template<typename... t_tpAtomic>
		(	DisjunctiveClause
		)	(t_tpAtomic const&...)
		->	DisjunctiveClause<t_tpAtomic{}...>;
		
		
		template<AtomicConstraint... t_vpAtomic>
		struct
			ConjunctiveClause
		{	constexpr
			(	ConjunctiveClause
			)	()
			=	default;
			
			explicit constexpr
			(	ConjunctiveClause
			)	(	decltype(t_vpAtomic) const
					&...
				)
			{}
			
			template<typename t_tTrait>
			auto constexpr friend
				operator or
				(	ConjunctiveClause const
					&	i_rLeftClause
				,	AtomicConstraint<t_tTrait> const
					&	i_rRightAtomic
				)
			{	if constexpr
					((	...
					or	(	AtomicConstraint<t_tTrait>{}
						==	t_vpAtomic
						)
					))
					return
						i_rLeftClause
					;
				else
					return
						ConjunctiveClause
						{	t_vpAtomic
							...
						,	i_rRightAtomic
						}
					;
			}
			
			template<AtomicConstraint... t_vpRightAtomic>
			auto constexpr friend
				operator or
				(	ConjunctiveClause const
					&	i_rLeftClause
				,	ConjunctiveClause<t_vpRightAtomic...> const
					&
				)
			{	return
				(	i_rLeftClause
				or	...
				or	t_vpRightAtomic
				);
			}
		};
		template<AtomicConstraint... t_vpAtomic>
		(	ConjunctiveClause
		)	(	ConjunctiveClause<t_vpAtomic...> const&)
		->	ConjunctiveClause<t_vpAtomic...>;
		template<typename... t_tpAtomic>
		(	ConjunctiveClause
		)	(	t_tpAtomic const&...)
		->	ConjunctiveClause<t_tpAtomic{}...>;
		
		template<DisjunctiveClause... t_vpClause>
		struct Disjunction
		{	constexpr
			(	Disjunction
			)	()
			=	default;
			
			explicit constexpr
			(	Disjunction
			)	(	decltype(t_vpClause) const
					&...
				)
			{}
		};
		
		template<DisjunctiveClause... t_vpClause>
		(	Disjunction
		)	(	Disjunction<t_vpClause...> const&)
		->	Disjunction<t_vpClause...>;
		
		template<typename ... t_tpClause>
		(	Disjunction
		)	(	t_tpClause const&...)
		->	Disjunction<t_tpClause{}...>;
		
		template<ConjunctiveClause... t_vpClause>
		struct Conjunction
		{	constexpr
			(	Conjunction
			)	()
			=	default;
			
			explicit constexpr
			(	Conjunction
			)	(	decltype(t_vpClause) const
					&...
				)
			{}
			
			template<AtomicConstraint... t_vpRightAtomic>
			auto constexpr friend
			(	operator and
			)	(	Conjunction const
					&	i_rLeftConjunction
				,	ConjunctiveClause<t_vpRightAtomic...> const
					&	i_rRightClause
				)
			{	if constexpr
					((	...
					or	(	ConjunctiveClause<t_vpRightAtomic...>{}
						<=	t_vpClause
						)
					))
					return
						i_rLeftConjunction
					;
				else
					return
						Conjunction
						{	t_vpClause
							...
						,	i_rRightClause
						}
					;
			}
			
			template<typename t_tTrait>
			auto constexpr friend
			(	operator and
			)	(	Conjunction const
					&	i_rLeftConjunction
				,	AtomicConstraint<t_tTrait> const
					&	i_rRightAtomic
				)
			{	return i_rLeftConjunction and ConjunctiveClause{i_rRightAtomic};	}
			
			template<ConjunctiveClause... t_vpRightClause>
			auto constexpr friend
			(	operator and
			)	(	Conjunction const
					&	i_rLeftConjunction
				,	Conjunction const
					&
				)
			{	return
				(	i_rLeftConjunction
				and	...
				and	t_vpRightClause
				);
			}
		};
		
		template<ConjunctiveClause... t_vpClause>
		(	Conjunction
		)	(	Conjunction<t_vpClause...> const&)
		->	Conjunction<t_vpClause...>;
		
		template<typename... t_tpClause>
		(	Conjunction
		)	(	t_tpClause const&...)
		->	Conjunction<t_tpClause{}...>;
	
		///	§13.5.5 1.2: an atomic constraint A subsumes another atomic constraint B if and only if ...
		template
			<	typename
					t_tLeftConstraint
			,	typename
					t_tRightConstraint
			>
		auto consteval
			operator<=
			(	AtomicConstraint<t_tLeftConstraint> const
				&	A[[maybe_unused]]
			,	AtomicConstraint<t_tRightConstraint> const
				&	B[[maybe_unused]]
			)
		->	bool
		{	//	... A and B are identical
			return A == B;
		}
	
		///	§13.5.5 1.1: a disjunctive clause Pi subsumes a conjunctive clause Qj if and only if...
		template
			<	AtomicConstraint
				... Pia
			,	AtomicConstraint
				... Qjb
			>
		auto consteval
			operator<=
			(	DisjunctiveClause<Pia...> const
				&	Pi[[maybe_unused]]
			,	ConjunctiveClause<Qjb...> const
				&	Qj[[maybe_unused]]
			)
		->	bool
		{	//	... there exists an atomic constraint Pia in Pi
			return
			(	...
			or	[Pia = Pia]
				// ... for which there exists an atomic constraint Qjb in Qj such that Pia subsumes Qjb
				{	return (... or (Pia <= Qjb));	}
				()
			);
		}
		
		///	§13.5.5 1: A constraint P subsumes a constraint Q if and only if ...
		template
			<	DisjunctiveClause
				...	Pi
			,	ConjunctiveClause
				...	Qj
			>
		auto consteval
			operator<=
			(	Disjunction<Pi...> const
				&	P[[maybe_unused]]
			,	Conjunction<Qj...> const
				&	Q[[maybe_unused]]
			)
		->	bool
		{	//	... for every disjunctive clause Pi in the disjunctive normal form of P,
			return
			(	...
			and	[Pi = Pi]
				//	Pi subsumes every conjunctive clause Qj in the conjunctive normal form of Q
				{	return (... and (Pi <= Qj));	}
				()
			);
		}
		
		template
			<	DisjunctiveClause
				...	Pi
			,	ConjunctiveClause
				...	Qj
			>
		auto consteval
			operator<=>
			(	Disjunction<Pi...> const
				&	P[[maybe_unused]]
			,	Conjunction<Qj...> const
				&	Q[[maybe_unused]]
			)
		->	std::partial_ordering
		{	if	(P <= Q)
				return std::partial_ordering::less;
			else
				return std::partial_ordering::unordered;
		}
		// todo: conversions
		
		static_assert(
			Disjunction{DisjunctiveClause{AtomicConstraint<void>{}}}
		<=	Conjunction{ConjunctiveClause{AtomicConstraint<void>{}}}
		);
		static_assert(
			Conjunction{ConjunctiveClause{AtomicConstraint<void>{}}}
		>=	Disjunction{DisjunctiveClause{AtomicConstraint<void>{}}}
		);
		
				
		static_assert(
			Disjunction{DisjunctiveClause{AtomicConstraint<void>{}, AtomicConstraint<int>{}}}
		<=	Conjunction{ConjunctiveClause{AtomicConstraint<void>{}}}
		);
		
		static_assert(
			Disjunction{DisjunctiveClause{AtomicConstraint<void>{}}}
		<=	Conjunction{ConjunctiveClause{AtomicConstraint<void>{}, AtomicConstraint<int>{}}}
		);
	}
	
	namespace
		Trait
	{	template
			<	typename
					t_tLeftTrait
			,	typename
					t_tRightTrait
			>
		auto constexpr
			operator<=>
			(	t_tLeftTrait const
				&
			,	t_tRightTrait const
				&
			)
		->	std::partial_ordering
		{	if constexpr
				(	std::is_same_v<t_tLeftTrait, t_tRightTrait>
				)
				return std::partial_ordering::equivalent;
			else if constexpr
				(	std::is_base_of_v<Conjunction<t_tLeftTrait>, t_tRightTrait>
				or	std::is_base_of_v<Disjunction<t_tRightTrait>, t_tLeftTrait>
				)
				return std::partial_ordering::less;
			else if constexpr
				(	std::is_base_of_v<Conjunction<t_tRightTrait>, t_tLeftTrait>
				or	std::is_base_of_v<Disjunction<t_tLeftTrait>, t_tRightTrait>
				)
				return std::partial_ordering::greater;
			else
				return std::partial_ordering::unordered;
		}
		
		template<typename t_tTrait>
		auto consteval
			operator and
			(	t_tTrait const
				&	i_rLeft
			,	t_tTrait const
				&
			)
		->	t_tTrait const
			&
		{	return i_rLeft;	}
		
		template
			<	typename
					t_tLeftTrait
			,	typename
					t_tRightTrait
			>
		auto consteval
			operator and
			(	t_tLeftTrait const
				&	i_rLeft
			,	t_tRightTrait const
				&	i_rRight
			)
		->	auto const&
		{	if constexpr
				(	t_tLeftTrait{}
				>=	t_tRightTrait{}
				)
				return
				(	i_rLeft
				);
			else if constexpr
				(	t_tLeftTrait{}
				<	t_tRightTrait{}
				)
				return
				(	i_rRight
				);
			else
				return
					Meta::Conjunction
					<	t_tLeftTrait
					,	t_tRightTrait
					>
				;
		}
		
		template<typename t_tTrait>
		auto consteval
			operator or
			(	t_tTrait const
				&	i_rLeft
			,	t_tTrait const
				&
			)
		->	t_tTrait const
			&
		{	return i_rLeft;	}
		
		template
			<	typename
					t_tLeftTrait
			,	typename
					t_tRightTrait
			>
		auto consteval
			operator or
			(	t_tLeftTrait const
				&	i_rLeft
			,	t_tRightTrait const
				&	i_rRight
			)
		->	auto const&
		{	if constexpr
				(	t_tLeftTrait{}
				<=	t_tRightTrait{}
				)
				return
				(	i_rLeft
				);
			else if constexpr
				(	t_tLeftTrait{}
				>	t_tRightTrait{}
				)
				return
				(	i_rRight
				);
			else
				return
					Meta::Disjunction
					<	t_tLeftTrait
					,	t_tRightTrait
					>
				;
		}
		
		
		struct [[nodiscard]]Identity;
		
		struct [[nodiscard]]CVQualifiable;
		
		struct [[nodiscard]]Void;
	}
	
	template<typename... t_tpEntity>
	auto consteval
		Entity()
	->	Trait::Type<t_tpEntity...> const&
	;
	template<auto... t_vpEntity>
	auto constexpr
		Entity()
	->	Trait::Value<t_vpEntity...> const&
	;
	template<auto&... t_rpEntity>
	auto constexpr
		Entity()
	->	Trait::Global<t_rpEntity...> const&
 		requires true
	;
	
	struct
		Trait::Identity
	{	auto consteval
			operator()(auto const& i_rEntity) const
		->	decltype(auto)
		{	return	i_rEntity;	}
		
		auto consteval friend
			operator+=(Trait::Identity, auto const& i_rEntity)
		->	auto const&
		{	return	i_rEntity;	}
		
		auto constexpr friend
			operator+=(auto const& i_rEntity, Identity)
		->	auto const&
		{	return	i_rEntity;	}
		
		auto constexpr friend
			operator-=(Identity, auto const& i_rEntity)
		->	auto const&
		{	return	i_rEntity;	}
		
		auto constexpr friend
			operator-=(auto const& i_rEntity, Identity)
		->	auto const&
		{	return	i_rEntity;	}
		
		auto constexpr
			operator+=(Identity) const&
		->	Identity const&
		{	return *this;	}

		auto constexpr
			operator-=(Identity) const&
		->	Identity const&
		{	return *this;	}
		
	}	const constexpr inline
		_
	{};
	
	struct
		Trait::CVQualifiable
	:	Trait::Conjunction<CVQualifiable>
	{
		template<typename... t_tpEntity>
		auto consteval
			operator()(Type<t_tpEntity...> const&) const
		->	auto const&
		{
			return
				Entity
				<	not
					std::is_same_v
					<	std::add_cv_t<t_tpEntity>
					,	std::remove_cv_t<t_tpEntity>
					>
					...
				>()
			;
		}
	}	constexpr inline
		CVQualifiable
	{};
	
	namespace
		Trait
	{	template<auto& t_rConstraint>
		requires (Meta::CVQualifiable <= t_rConstraint)
		struct [[nodiscard]]Const;
	}
	
 	template<auto& t_rConstraint = CVQualifiable>
	requires (Meta::CVQualifiable <= t_rConstraint)
	struct
		Trait::Const
	:	Trait::Constraint<Meta::CVQualifiable>
	{	template<typename... t_tpEntity>
		auto consteval
			operator()
			(	Type<t_tpEntity...> const
				&	i_rEntity
			)	const
		->	auto const&
		{	return
				Entity<std::is_const_v<t_tpEntity>...>()
			and	t_rConstraint(i_rEntity -= *this)
			;
		}
		
		template<typename... t_tpEntity>
		auto consteval friend
			operator+=(Type<t_tpEntity...> const&,	Const const&
			)
		->	auto const&
		{	return	Entity<std::add_const_t<t_tpEntity>...>();	}
		
		template<typename... t_tpEntity>
		auto consteval friend
			operator-=(Type<t_tpEntity...> const&, Const const&)
		->	auto const&
		{	return	Entity<std::remove_const_t<t_tpEntity>...>();	}
	};
	
	template<auto& t_rConstraint = CVQualifiable>
	Trait::Const<t_rConstraint> constexpr inline
		Const
	{};
	
	namespace
		Trait
	{	template<auto& t_rConstraint>
		requires (Meta::CVQualifiable <= t_rConstraint)
		struct [[nodiscard]]Volatile;
	}
	
	
	template<auto& t_rConstraint = CVQualifiable>
	requires (Meta::CVQualifiable <= t_rConstraint)
	struct
		Trait::Volatile
	:	Trait::Conjunction<Trait::Volatile<t_rConstraint>>
	{	template<typename... t_tpEntity>
		auto constexpr
			operator()(Type<t_tpEntity...> const& i_rEntity) const
		{	return
			Entity<std::is_volatile_v<t_tpEntity>...>()
			and	t_rConstraint(i_rEntity -= *this)
			;
		}
		
		template<typename... t_tpEntity>
		auto constexpr friend
			operator+=(Type<t_tpEntity...>, Volatile)
		{	return	Entity<std::add_volatile_t<t_tpEntity>...>();	}
		
		template<typename... t_tpEntity>
		auto constexpr friend
			operator-=(Type<t_tpEntity...>, Volatile)
		{	return	Entity<std::remove_volatile_t<t_tpEntity>...>();	}
	};
	
	template<auto& t_rConstraint = CVQualifiable>
	Trait::Volatile<t_rConstraint> constexpr inline
		Volatile
	{};
	
	
	
	struct
		Trait::Void
	:	Trait::Conjunction<Trait::Void, Trait::CVQualifiable>
	{	template<typename... t_tpEntity>
		auto consteval
			operator()(Type<t_tpEntity...>) const
		->	auto const&
		{	return	Entity<std::is_void_v<t_tpEntity>...>();	}
	}	constexpr inline
		Void
	{};
	static_assert((CVQualifiable <=> Void) == std::partial_ordering::unordered);
	auto constexpr Q = Void and CVQualifiable;
	
	
	
	
	
	
	struct
		Reference_T
	{
		template<typename... t_tpEntity>
		auto constexpr
			operator()(Type<t_tpEntity...>) const
		{	return	Value<std::is_reference_v<t_tpEntity>...>{};	}
		
		auto constexpr friend
			operator+=(Reference_T, Reference_T)
		->	Reference_T
		{	return	{};	}
		
		auto constexpr friend
			operator-=(Reference_T, Reference_T)
		->	Identity_T
		{	return	{};	}
		
		template<typename... t_tpEntity>
		auto constexpr friend
			operator-=(Type<t_tpEntity...>, Reference_T)
		{	return
				Type
				<	typename
					std::conditional_t
					<	std::is_reference_v<t_tpEntity>
					,	std::remove_reference<t_tpEntity>
					,	std::type_identity<t_tpEntity>
					>
				::	type
					...
				>{}
			;
		}
	}
	constexpr inline
		Reference
	{};
	static_assert(not std::is_signed_v<bool>);
	auto constexpr foo = std::conditional_t<std::is_signed_v<bool>, std::make_unsigned<bool>, std::type_identity<bool>>::type{};
	
	template
		<	std::size_t
				t_nBound
			=	0ul
		>
	struct
		ArrayBound_T
	{};
	
	template
		<	std::size_t
				t_nBound
			=	0ul
		>
	auto constexpr inline
	(	ArrayBound
	)=	ArrayBound_T
		<	t_nBound
		>{}
	;
	
	struct
		Pointer_T
	{}	constexpr inline
		Pointer
	{};
	
	struct
		LValueReference_T
	{}	constexpr inline
		LValueReference
	{};
	
	struct
		RValueReference_T
	{}	constexpr inline
		RValueReference
	{};
	
	struct
		ConstVolatile_T
	{}	constexpr inline
		ConstVolatile
	{};
	
	struct
		Const_T
	{}	constexpr inline
		Const
	{};
	
	struct
		Volatile_T
	{}	constexpr inline
		Volatile
	{};
		
	struct
		Signed_T
	{}	constexpr inline
		Signed
	{};
	
	struct
		Unsigned_T
	{}	constexpr inline
		Unsigned
	{};
	
	struct
		Fold_T
	{}	constexpr inline
		Fold
	{};
	
	template
		<	typename
			...	t_tpElement
		>
	struct
		Tuple
	:	Tuple
		<	t_tpElement
		>
		...
	{};
	
	template
		<	typename
				t_tElement
		>
	struct
		Tuple
		<	t_tElement
		>
	{
		t_tElement
			Element
		;
	};
	
	template
		<	auto
			...	t_vpElement
		>
	struct
		[[nodiscard]]
		Value
	;
	
	template
		<	template
				<	auto
					...
				>
			typename
				t_t1ValuePack
		>
	struct
		ValuePack
	;
	
	template
		<	template
				<	typename
					...
				>
			typename
				t_t1TypePack
		>
	struct
		TypePack
	;
	
	template
		<	std::size_t
				t_nIndex
		,	typename
				t_tEntity
		>
	struct
		[[nodiscard]]
		EntityMapItem
	{
		auto constexpr static
			Index
		=	t_nIndex
		;
		using
			EntityType
		=	t_tEntity
		;
		
		auto constexpr
			operator[](Value<t_nIndex>) const
		->	t_tEntity
		{	return {};	}
	};
	
	template
		<	typename
			...	t_tpEntityMapItem
		>
	struct
		[[nodiscard]]
		EntityMap
	:	t_tpEntityMapItem
		...
	{
		using
			t_tpEntityMapItem
		::	operator[]
			...
		;
		
		constexpr
		(	EntityMap)()
		=	default;
		
		constexpr
		(	EntityMap
		)	(	std::index_sequence<t_tpEntityMapItem::Index...>
			,	typename t_tpEntityMapItem::EntityType const&...
			)
		{}
		
		template<std::ptrdiff_t t_nIndex>
		auto constexpr operator[](Value<t_nIndex>) const
		requires (sizeof...(t_tpEntityMapItem) > 0ul)
		{
			if constexpr
				(	t_nIndex
				>=	0l
				)
			{	std::size_t constexpr
					nIndex
				=	t_nIndex
				%	sizeof...(t_tpEntityMapItem)
				;
				return operator[](Value<nIndex>{});
			}
			else
			{
				std::size_t constexpr
					nIndex
				=	(	sizeof...(t_tpEntityMapItem)
					-	(	-t_nIndex
						%	sizeof...(t_tpEntityMapItem)
						)
				)
				%	sizeof...(t_tpEntityMapItem)
				;
				return operator[](Value<nIndex>{});
			}
		}
	};
	
	template
		<	std::size_t
			...	t_npIndex
		,	typename
			...	t_tpEntity
		>
	(	EntityMap
	)	(	std::index_sequence<t_npIndex...>
		,	t_tpEntity const&...
		)
	->	EntityMap
		<	EntityMapItem
			<	t_npIndex
			,	t_tpEntity
			>
			...
		>
	;
	
	template
		<	typename
			...	t_tpEntity
		>
	using
		IndexEntities
	=	decltype(
			EntityMap
			{	std::declval<std::make_index_sequence<sizeof...(t_tpEntity)>>()
			,	std::declval<t_tpEntity>()...
			}
		)
	;
	
	template
		<	typename
				t_tTemplateEntity
		>
	struct
		Template
	{
		auto constexpr static
			InstantiateValue
			(	auto const
				&
				...	i_rpEntity
			)
		{	auto constexpr
				vTemplate
			=	t_tTemplateEntity
				{}
			;
			Type const
				vInstanceType
			=	vTemplate
				(	i_rpEntity
					...
				)
			;
			return
				vInstanceType
				()
			;
		}
		
		template
			<	typename
				...	t_tpEntity
			>
		struct
			Pack
		:	IndexEntities<t_tpEntity...>
		{	
			using IndexEntities<t_tpEntity...>::operator[];
			
			auto constexpr static
			(	PackLength
			)=	sizeof...(t_tpEntity)
			;
			
			auto constexpr static
				EntityPack()
			{	return InstantiateValue(t_tpEntity{}...);	}
			
			template<typename... t_tpOther>
			auto constexpr friend
				operator==(Pack const&, Pack<t_tpOther...> const&)
			{	return Value<std::is_same_v<Pack, Pack<t_tpOther>...>>{};	}
			
			template<typename... t_tpOther>
			auto constexpr friend
				operator!=(Pack const&, Pack<t_tpOther...> const&)
			{	return Value<not std::is_same_v<Pack, Pack<t_tpOther>...>>{};	}
			
			template<typename t_tContained>
			auto constexpr static
				Contains(Pack<t_tContained> const&)
			{	return
					Value
					<(	...
					or	std::is_same_v
						<	t_tContained
						,	t_tpEntity
						>
					)>{}
				;
			}
			
			/// Union with duplicates.
			template<typename... t_tpBackEntity>
			auto constexpr
				operator|=(Pack<t_tpBackEntity...> const&) const
			{	return InstantiateValue(t_tpEntity{}...,	t_tpBackEntity{}...);	}
			
			/// Intersection.
			template<typename... t_tpBackEntity>
			auto constexpr
				operator&=(Pack<t_tpBackEntity...> const&) const
			{	return
				(	EntityPack()
				|=	...
				|=	std::conditional_t
					<	Contains(Pack<t_tpBackEntity>{})
					and	Pack<t_tpBackEntity...>
					::	Contains(Pack<t_tpBackEntity>{})
					,	Pack<t_tpBackEntity>
					,	Pack<t_tpBackEntity>
					>{}
				);
			}
			
			/// Unique Union.
			template<typename... t_tpBackEntity>
			auto constexpr
				operator^=(Pack<t_tpBackEntity...> const&) const
			{	return
				(	EntityPack()
				|=	...
				|=	std::conditional_t
					<	not
						Contains(Pack<t_tpBackEntity>{})
					,	Pack<t_tpBackEntity>
					,	Pack<>
					>{}
				);
			}
		
			template<bool t_bCondition, typename... t_tpElse>
			auto constexpr static
				Conditional(Value<t_bCondition> const&, Pack<t_tpElse...> i_vElse = {})
			{	if constexpr(t_bCondition)
					return InstantiateValue(Pack{});
				else
					return InstantiateValue(i_vElse);
			}
		
			template
				<	bool
					...	t_bpCondition
				>
			auto constexpr
			(	operator[]
			)	(	Value
					<	t_bpCondition
						...
					>	const
					&
				)	const
			{	return
				(	Pack<>
					{}
				|=	...
				|=	Pack<t_tpEntity>
				::	Conditional
					(	Value<t_bpCondition>{}
					)
				);
			}
		};
	};
	
	template
		<	auto
			...	t_vpElement
		>
	struct
		[[nodiscard]]
		Value
	:	Template
		<	ValuePack
			<	Value
			>
		>
	::	Pack
		<	Value
			<	t_vpElement
			>
			...
		>
	{	using Template = Template<ValuePack<Value>>;
		using Pack = Template::Pack<Value<t_vpElement>...>;
		using Pack::PackLength;
		using Pack::Contains;
		using Pack::operator[];
		using Pack::operator|=;
		using Pack::operator^=;
		using Pack::operator&=;
		
		constexpr
		(	operator
			decltype((..., t_vpElement))
		)	()	const
		requires(PackLength == 1ul)
		{
			return (...,t_vpElement);
		}
		
		auto constexpr friend
			operator not(Value)
		{	return Value<not t_vpElement...>{};	}
		
		template<auto... t_vpOther>
		auto constexpr friend
			operator or(Value, Value<t_vpOther...>)
		{	return Value<t_vpElement or t_vpOther...>{};	}
		
		auto constexpr friend
			operator or(Value, Fold_T)
		{	return Value<(t_vpElement or ...)>{};	}
		
		auto constexpr friend
			operator or(Fold_T, Value)
		{	return Value<(... or t_vpElement)>{};	}
		
		template<auto... t_vpOther>
		auto constexpr friend
			operator and(Value, Value<t_vpOther...>)
		{	return Value<t_vpElement and t_vpOther...>{};	}
		
		auto constexpr friend
			operator and(Value, Fold_T)
		{	return Value<(t_vpElement and ...)>{};	}
		
		auto constexpr friend
			operator and(Fold_T, Value)
		{	return Value<(... and t_vpElement)>{};	}
		
		template<auto... t_vpOther>
		auto constexpr friend
			operator==(Value, Value<t_vpOther...>)
		{	return Value<t_vpElement == t_vpOther...>{};	}
	};
	
	template<auto t_vEntity>
	auto constexpr
		Entity()
	->	Value<t_vEntity>
	{	return {};	}
	
	static_assert(Value<1, 2>{}[Value<-1l>{}] == Value<2>{});
	static_assert(Value<1, 2>{}[Value<-2l>{}] == Value<1>{});
	
	template
		<	typename
			...	t_tpElement
		>
	struct
		[[nodiscard]]
		Type
	:	Template
		<	TypePack
			<	Type
			>
		>
	::	Pack
		<	Type
			<	t_tpElement
			>
			...
		>
	{	using Template = Template<TypePack<Type>>;
		using Pack = Template::Pack<Type<t_tpElement>...>;
		using Pack::PackLength;
		using Pack::Contains;
		using Pack::operator[];
		using Pack::operator|=;
		using Pack::operator^=;
		using Pack::operator&=;
		
		auto friend
			Declare(Type)
		noexcept
		->	decltype((..., std::declval<t_tpElement>()))
		requires (PackLength == 1ul)
		{	return std::declval<t_tpElement...>();	}
		
		auto constexpr static
			IsVoid()
		{	return Value<std::is_void_v<t_tpElement>...>{};	}
		auto constexpr static
			IsNullPointer()
		{	return Value<std::is_null_pointer_v<t_tpElement>...>{};	}
		auto constexpr static
			IsBool()
		{	return Value<std::is_same_v<bool, std::remove_cv_t<t_tpElement>>...>{};	}
		auto constexpr static
			IsOrdinaryCharacter()
		{	return Value<std::is_same_v<char, std::remove_cv_t<t_tpElement>>...>{};	}
		auto constexpr static
			IsWideCharacter()
		{	return Value<std::is_same_v<wchar_t, std::remove_cv_t<t_tpElement>>...>{};	}
		auto constexpr static
			IsUTFCharacter()
		{	return
				Value
				<	std::is_same_v<char8_t, std::remove_cv_t<t_tpElement>>
				or	std::is_same_v<char16_t, std::remove_cv_t<t_tpElement>>
				or	std::is_same_v<char32_t, std::remove_cv_t<t_tpElement>>
					...
				>
				{}
			;
		}
		auto constexpr static
			IsSignedInteger()
		{	return
				Value
				<	requires
					{	requires std::is_integral_v<t_tpElement>;
						requires std::is_signed_v<t_tpElement>;
						requires std::is_same_v<t_tpElement
							,	std::make_signed_t
								<	std::make_unsigned_t
									<	t_tpElement
									>
								>
							>
						;
					}
					...
				>{}
			;
		}
		auto constexpr static
			IsUnsignedInteger()
		{	return
				Value
				<	requires
					{	requires std::is_integral_v<t_tpElement>;
						requires std::is_unsigned_v<t_tpElement>;
						requires std::is_same_v<t_tpElement
							,	std::make_unsigned_t
								<	std::make_signed_t
									<	t_tpElement
									>
								>
							>
						;
					}
					...
				>{}
			;
		}
		auto constexpr static
			IsFloatingPoint()
		{	return Value<std::is_floating_point_v<t_tpElement>...>{};	}
		auto constexpr static
			IsBoundedArray()
		{	return Value<std::is_bounded_array_v<t_tpElement>...>{};	}
		auto constexpr static
			IsUnboundedArray()
		{	return Value<std::is_unbounded_array_v<t_tpElement>...>{};	}
		auto constexpr static
			IsEnum()
		{	return Value<std::is_enum_v<t_tpElement>...>{};	}
		auto constexpr static
			IsUnion()
		{	return Value<std::is_union_v<t_tpElement>...>{};	}
		auto constexpr static
			IsClass()
		{	return Value<std::is_class_v<t_tpElement>...>{};	}
		auto constexpr static
			IsFunction()
		{	return Value<std::is_function_v<t_tpElement>...>{};	}
		auto constexpr static
			IsPointer()
		{	return Value<std::is_pointer_v<t_tpElement>...>{};	}
		auto constexpr static
			IsLValueReference()
		{	return Value<std::is_lvalue_reference_v<t_tpElement>...>{};	}
		auto constexpr static
			IsRValueReference()
		{	return Value<std::is_rvalue_reference_v<t_tpElement>...>{};	}
		auto constexpr static
			IsMemberObjectPointer()
		{	return Value<std::is_member_object_pointer_v<t_tpElement>...>{};	}
		auto constexpr static
			IsMemberFunctionPointer()
		{	return Value<std::is_member_function_pointer_v<t_tpElement>...>{};	}
		
		auto constexpr static
			IsConst()
		{	return Value<std::is_const_v<t_tpElement>...>{};	}
		auto constexpr static
			IsVolatile()
		{	return Value<std::is_volatile_v<t_tpElement>...>{};	}
		auto constexpr static
			IsStandardLayout()
		{	return Value<std::is_standard_layout_v<t_tpElement>...>{};	}
		auto constexpr static
			IsUniquelyRepresented()
		{	return Value<std::has_unique_object_representations_v<t_tpElement>...>{};	}
		auto constexpr static
			IsEmpty()
		{	return Value<std::is_empty_v<t_tpElement>...>{};	}
		auto constexpr static
			IsPolymorphic()
		{	return Value<std::is_polymorphic_v<t_tpElement>...>{};	}
		auto constexpr static
			IsAbstract()
		{	return Value<std::is_abstract_v<t_tpElement>...>{};	}
		auto constexpr static
			IsFinal()
		{	return Value<std::is_final_v<t_tpElement>...>{};	}
		auto constexpr static
			IsAggregate()
		{	return Value<std::is_aggregate_v<t_tpElement>...>{};	}
		
		
		template<typename... t_tpArgument>
		auto constexpr static 
			IsConstructible_From(Type<t_tpArgument...>)
		{	return Value<std::is_constructible_v<t_tpElement, t_tpArgument...>...>{};	}
		template<typename... t_tpArgument>
		auto constexpr static
			IsConstructibleNoexcept_From(Type<t_tpArgument...>)
		{	return Value<std::is_nothrow_constructible_v<t_tpElement, t_tpArgument...>...>{};	}		
		template<typename... t_tpArgument>
		auto constexpr static
			IsConstructibleTrivial_From(Type<t_tpArgument...>)
		{	return Value<std::is_trivially_constructible_v<t_tpElement, t_tpArgument...>...>{};	}
		auto constexpr static
			IsDefaultConstructible()
		{	return Value<std::is_default_constructible_v<t_tpElement>...>{};	}
		auto constexpr static
			IsDefaultConstructibleNoexcept()
		{	return Value<std::is_nothrow_default_constructible_v<t_tpElement>...>{};	}
		auto constexpr static
			IsDefaultConstructibleTrivial()
		{	return Value<std::is_trivially_default_constructible_v<t_tpElement>...>{};	}
		auto constexpr static
			IsCopyConstructible()
		{	return Value<std::is_copy_constructible_v<t_tpElement>...>{};	}
		auto constexpr static
			IsCopyConstructibleNoexcept()
		{	return Value<std::is_nothrow_copy_constructible_v<t_tpElement>...>{};	}
		auto constexpr static
			IsCopyConstructibleTrivial()
		{	return Value<std::is_trivially_copy_constructible_v<t_tpElement>...>{};	}
		auto constexpr static
			IsMoveConstructible()
		{	return Value<std::is_move_constructible_v<t_tpElement>...>{};	}
		auto constexpr static
			IsMoveConstructibleNoexcept()
		{	return Value<std::is_nothrow_move_constructible_v<t_tpElement>...>{};	}
		auto constexpr static
			IsMoveConstructibleTrivial()
		{	return Value<std::is_trivially_move_constructible_v<t_tpElement>...>{};	}
		
		template<typename t_tArgument>
		auto constexpr static 
			IsAssignable_From(Type<t_tArgument>)
		{	return Value<std::is_assignable_v<t_tpElement, t_tArgument>...>{};	}
		template<typename t_tArgument>
		auto constexpr static
			IsAssignableNoexcept_From(Type<t_tArgument>)
		{	return Value<std::is_nothrow_assignable_v<t_tpElement, t_tArgument>...>{};	}		
		template<typename t_tArgument>
		auto constexpr static
			IsAssignableTrivial_From(Type<t_tArgument>)
		{	return Value<std::is_trivially_assignable_v<t_tpElement, t_tArgument>...>{};	}
		auto constexpr static
			IsCopyAssignable()
		{	return Value<std::is_copy_assignable_v<t_tpElement>...>{};	}
		auto constexpr static
			IsCopyAssignableNoexcept()
		{	return Value<std::is_nothrow_copy_assignable_v<t_tpElement>...>{};	}
		auto constexpr static
			IsCopyAssignableTrivial()
		{	return Value<std::is_trivially_copy_assignable_v<t_tpElement>...>{};	}
		auto constexpr static
			IsMoveAssignable()
		{	return Value<std::is_move_assignable_v<t_tpElement>...>{};	}
		auto constexpr static
			IsMoveAssignableNoexcept()
		{	return Value<std::is_nothrow_move_assignable_v<t_tpElement>...>{};	}
		auto constexpr static
			IsMoveAssignableTrivial()
		{	return Value<std::is_trivially_move_assignable_v<t_tpElement>...>{};	}
		auto constexpr static
			IsDestructible()
		{	return Value<std::is_destructible_v<t_tpElement>...>{};	}
		auto constexpr static
			IsDestructibleNoexcept()
		{	return Value<std::is_nothrow_destructible_v<t_tpElement>...>{};	}
		auto constexpr static
			IsDestructibleTrivial()
		{	return Value<std::is_trivially_destructible_v<t_tpElement>...>{};	}
		auto constexpr static
			IsDestructorVirtual()
		{	return Value<std::has_virtual_destructor_v<t_tpElement>...>{};	}
		
		auto constexpr static
			ByteSize()
		{	return Value<sizeof(t_tpElement)...>{};	}
		auto constexpr static
			ByteAlignment()
		{	return Value<alignof(t_tpElement)...>{};	}
		auto constexpr static
			ArrayDimension()
		{	return Value<std::rank_v<t_tpElement>...>{};	}
		template<std::size_t t_nDimension = 0ul>
		auto constexpr static
			ArrayBound(Value<t_nDimension> ={})
		{	return Value<std::extent_v<t_tpElement, t_nDimension>...>{};	}
		
		template<typename t_tAs>
		auto constexpr static
			IsSame_As(Type<t_tAs>)
		{	return Value<std::is_same_v<t_tpElement, t_tAs>...>{};	}
		template<typename t_tBase>
		auto constexpr static
			IsDerived_From(Type<t_tBase>)
		{	return Value<std::is_base_of_v<t_tBase, t_tpElement>...>{};	}
		template<typename t_tDestination>
		auto constexpr static
			IsConvertible_To(Type<t_tDestination>)
		{	return Value<std::is_convertible_v<t_tpElement, t_tDestination>...>{};	}
		template<typename t_tDestination>
		auto constexpr static
			IsConvertibleNoexcept_To(Type<t_tDestination>)
		{	return Value<std::is_nothrow_convertible_v<t_tpElement, t_tDestination>...>{};	}
		
		template<typename... t_tpArgument>
		auto constexpr static
			IsInvocable_With(Type<t_tpArgument...>)
		{	return Value<std::is_invocable_v<t_tpElement, t_tpArgument...>...>{};	}
		template<typename... t_tpArgument, typename t_tResult>
		auto constexpr static
			IsInvocable_With_To(Type<t_tpArgument...>, Type<t_tResult>)
		{	return Value<std::is_invocable_r_v<t_tResult, t_tpElement, t_tpArgument...>...>{};	}
		
		template<typename... t_tpArgument>
		auto constexpr static
			IsInvocableNoexcept_With(Type<t_tpArgument...>)
		{	return Value<std::is_nothrow_invocable_v<t_tpElement, t_tpArgument...>...>{};	}
		template<typename... t_tpArgument, typename t_tResult>
		auto constexpr static
			IsInvocableNoexcept_With_To(Type<t_tpArgument...>, Type<t_tResult>)
		{	return Value<std::is_nothrow_invocable_r_v<t_tResult, t_tpElement, t_tpArgument...>...>{};	}
		
		template<typename... t_tpArgument>
		auto constexpr static
			InvokeResultType(Type<t_tpArgument...> = {})
		{	return Type<std::invoke_result_t<t_tpElement, t_tpArgument...>...>{};	}
		
		auto constexpr
			operator+=(Identity_T) const
		{	return Type{};	}
		auto constexpr
			operator-=(Identity_T) const
		{	return Type{};	}
		
		auto constexpr
			operator+=(Const_T) const
		{	return Type<std::add_const_t<t_tpElement>...>{};	}
		auto constexpr
			operator-=(Const_T) const
		{	return Type<std::remove_const_t<t_tpElement>...>{};	}
		
		auto constexpr
			operator+=(Volatile_T) const
		{	return Type<std::add_volatile_t<t_tpElement>...>{};	}
		auto constexpr
			operator-=(Volatile_T) const
		{	return Type<std::remove_volatile_t<t_tpElement>...>{};	}
		
		auto constexpr
			operator+=(ConstVolatile_T) const
		{	return Type<std::add_cv_t<t_tpElement>...>{};	}
		auto constexpr
			operator-=(ConstVolatile_T) const
		{	return Type<std::remove_cv_t<t_tpElement>...>{};	}
		
		auto constexpr
			operator+=(Pointer_T) const
		{	return Type<std::add_pointer_t<t_tpElement>...>{};	}
		auto constexpr
			operator-=(Pointer_T) const
		{	return Type<std::remove_pointer_t<t_tpElement>...>{};	}
		
		auto constexpr
			operator+=(LValueReference_T) const
		{	return Type<std::add_lvalue_reference_t<t_tpElement>...>{};	}
		auto constexpr
			operator+=(RValueReference_T) const
		{	return Type<std::add_rvalue_reference_t<t_tpElement>...>{};	}
		auto constexpr
			operator-=(Reference_T) const
		{	return Type<std::remove_reference_t<t_tpElement>...>{};	}
		
		auto constexpr
			operator*(Identity_T) const
		{	return *this += Pointer;	}
		auto constexpr
			operator*(Pointer_T) const
		{	return (*this += Pointer) += Pointer;	}
		auto constexpr
			operator*(LValueReference_T) const
		{	return (*this += Pointer) += LValueReference;	}
		auto constexpr
			operator*(RValueReference_T) const
		{	return (*this += Pointer) += RValueReference;	}
		auto constexpr
			operator*(Const_T) const
		{	return (*this += Pointer) += Const;	}
		auto constexpr
			operator*(Volatile_T) const
		{	return (*this += Pointer) += Volatile;	}
		auto constexpr
			operator*(ConstVolatile_T) const
		{	return (*this += Pointer) += ConstVolatile;	}
		template<std::size_t t_nExtent>
		auto constexpr
			operator*(ArrayBound_T<t_nExtent>) const
		{	return (*this += Pointer) += ArrayBound<t_nExtent>;	}
		
		auto constexpr
			operator&(Identity_T) const
		{	return *this += LValueReference;	}
		
		auto constexpr
			operator&&(Identity_T) const
		{	return *this += RValueReference;	}
		
		auto constexpr
			operator+=(Signed_T) const
		{	return Type<std::make_signed_t<t_tpElement>...>{};	}
		auto constexpr
			operator+=(Unsigned_T) const
		{	return Type<std::make_unsigned_t<t_tpElement>...>{};	}
		
		template<std::size_t t_nExtent>
		auto constexpr
			operator+=(ArrayBound_T<t_nExtent>) const
		{	return Type<t_tpElement[t_nExtent]...>{};	}
		auto constexpr
			operator+=(ArrayBound_T<>) const
		{	return Type<t_tpElement[]...>{};	}
		auto constexpr
			operator-=(ArrayBound_T<>) const	
		{	return Type<std::remove_extent_t<t_tpElement>...>{};	}
		
		auto constexpr static
			ArrayElementType()
		{	return Type<std::remove_all_extents_t<t_tpElement>...>{};	}
		
		template<std::size_t t_nExtent>
		auto constexpr
			operator[](ArrayBound_T<t_nExtent>) const
		{	return *this += ArrayBound<t_nExtent>;	}
		
		auto constexpr static
			Decay()
		{	return Type<std::decay_t<t_tpElement>...>{};	}
		
		auto constexpr static
			CommonType()
		{	using Common = std::common_type<t_tpElement...>;
			if constexpr(requires{ typename	Common::type;})
				return Type<typename Common::type>{};
			else
				return Type<>{};
		}
		
		auto constexpr static
			UnderlyingType()
		{	return Type<std::underlying_type_t<t_tpElement>...>{};	}
		
		/// default constructor
		constexpr
		(	Type)()
		=	default;
		
		/// copy constructor
		constexpr
		(	Type)(Type const&)
		=	default;
		
		/// move constructor
		constexpr
		(	Type)(Type&&)
		=	default;
		
		/// deduction constructor from template
		template
			<	template
				<	typename
					...
				>
				typename
					t_t1TypePack
			>
		explicit constexpr
		(	Type
		)	(	t_t1TypePack
				<	t_tpElement
					...
				>	const
				&
			)
		{}
		
		/// deduction constructor from function
		explicit constexpr
		(	Type
		)	(	auto
				(*
				...	i_fElement[[maybe_unused]]
				)	()
				->	Type
					<	t_tpElement
					>
			)
		requires
			(	PackLength
			>	0ul
			)
		{}
		
		template<typename... t_tpOther>
		auto constexpr friend
			operator==(Type, Type<t_tpOther...>)
		->	bool
		{	return std::is_same_v<Type,	Type<t_tpOther...>>;	}
		
		template
			<	typename
				...	t_tpArgument
			>
		auto constexpr
		(	operator()
		)	(	t_tpArgument
				&&
				...	i_rpArgument
			)	const
		noexcept
			((	...
			and	std::is_nothrow_constructible_v
				<	t_tpElement
				,	decltype(i_rpArgument)
					...
				>
			))
		requires
			(	...
			and	std::is_constructible_v
				<	t_tpElement
				,	decltype(i_rpArgument)
					...
				>
			)
		{	if constexpr
				(	PackLength
				==	1ul
				)
				return
				(	...
				,	t_tpElement
					{	std::forward
						<	t_tpArgument
						>(	i_rpArgument
						)
						...
					}
				);
			else
				return
					Tuple
					{	t_tpElement
						{	std::forward
							<	t_tpArgument
							>(	i_rpArgument
							)
							...
						}
						...
					}
				;
		}
	};
	
	static_assert(Type<int, bool>{}[Value<1ul>{}] == Type<bool>{});
	
	struct
		TypeCategory
	{	bool const IsVoid = false;
		bool const IsNullPointer = false;
		bool const IsBool = false;
		bool const IsOrdinaryCharacter = false;
		bool const IsWideCharacter = false;
		bool const IsUTFCharacter = false;
		bool const IsSignedInteger = false;
		bool const IsUnsignedInteger = false;
		bool const IsFloatingPoint = false;
		bool const IsBoundedArray = false;
		bool const IsUnboundedArray = false;
		bool const IsEnum = false;
		bool const IsUnion = false;
		bool const IsClass = false;
		bool const IsFunction = false;
		bool const IsPointer = false;
		bool const IsLValueReference = false;
		bool const IsRValueReference = false;
		bool const IsMemberObjectPointer = false;
		bool const IsMemberFunctionPointer = false;
		
		auto constexpr
		(	IsValid
		)	()	const
		->	bool
		{	return
				1
			==	(	IsVoid
				+	IsNullPointer
				+	IsBool
				+	IsOrdinaryCharacter
				+	IsWideCharacter
				+	IsUTFCharacter
				+	IsSignedInteger
				+	IsUnsignedInteger
				+	IsFloatingPoint
				+	IsBoundedArray
				+	IsUnboundedArray
				+	IsEnum
				+	IsUnion
				+	IsClass
				+	IsFunction
				+	IsPointer
				+	IsLValueReference
				+	IsRValueReference
				+	IsMemberObjectPointer
				+	IsMemberFunctionPointer
				)
			;
		}
		
		auto constexpr friend
			operator<=>(TypeCategory const&, TypeCategory const&)
		-> std::strong_ordering
		=	default;
	};
	
	template
		<	typename
				t_tEntity
		>
	auto constexpr
	(	ValidateTypeCategory
	)	(	TypeCategory const
			&	i_rExpectedCategory
		,	Type<t_tEntity>
				i_vType
			= {}
		)
	{	
		auto const
		(	vActualCategory
		)=	TypeCategory
			{	.IsVoid 
				=	i_vType.IsVoid()
			,	.IsNullPointer 
				=	i_vType.IsNullPointer()
			,	.IsBool 
				=	i_vType.IsBool()
			,	.IsOrdinaryCharacter
				=	i_vType.IsOrdinaryCharacter()
			,	.IsWideCharacter
				=	i_vType.IsWideCharacter()
			,	.IsUTFCharacter
				=	i_vType.IsUTFCharacter()
			,	.IsSignedInteger
				=	i_vType.IsSignedInteger()
			,	.IsUnsignedInteger
				=	i_vType.IsUnsignedInteger()
			,	.IsFloatingPoint
				=	i_vType.IsFloatingPoint()
			,	.IsBoundedArray
				=	i_vType.IsBoundedArray()
			,	.IsUnboundedArray
				=	i_vType.IsUnboundedArray()
			,	.IsEnum
				=	i_vType.IsEnum()
			,	.IsUnion
				=	i_vType.IsUnion()
			,	.IsClass
				=	i_vType.IsClass()
			,	.IsFunction
				=	i_vType.IsFunction()
			,	.IsPointer
				=	i_vType.IsPointer()
			,	.IsLValueReference
				=	i_vType.IsLValueReference()
			,	.IsRValueReference
				=	i_vType.IsRValueReference()
			,	.IsMemberObjectPointer
				=	i_vType.IsMemberObjectPointer()
			,	.IsMemberFunctionPointer
				=	i_vType.IsMemberFunctionPointer()
			}
		;
		return
			i_rExpectedCategory
		==	vActualCategory
		and	i_rExpectedCategory
		.	IsValid()
		and	vActualCategory
		.	IsValid()
		;
	}
	
	enum UnscopedEnum{};
	enum class ScopedEnum{};
	class
		Class
	{
	public:
		class
			Final final
		{};
		class
			Polymorphic
		{	virtual ~Polymorphic() = default;
		};
		class
			Abstract
		{	virtual ~Abstract() = 0;
		};
		class
			Empty
		{};
	};
	struct Struct{};
	union
		Union
	{	union
			Final final
		{};
	};
	
	static_assert(ValidateTypeCategory<void>(
		TypeCategory{.IsVoid = true}));
	static_assert(ValidateTypeCategory<decltype(nullptr)>(
		TypeCategory{.IsNullPointer = true}));
	static_assert(ValidateTypeCategory<bool>(
		TypeCategory{.IsBool = true}));
	static_assert(ValidateTypeCategory<char>(
		TypeCategory{.IsOrdinaryCharacter = true}));
	static_assert(ValidateTypeCategory<wchar_t>(
		TypeCategory{.IsWideCharacter = true}));
	static_assert(ValidateTypeCategory<char8_t>(
		TypeCategory{.IsUTFCharacter = true}));
	static_assert(ValidateTypeCategory<char16_t>(
		TypeCategory{.IsUTFCharacter = true}));
	static_assert(ValidateTypeCategory<char32_t>(
		TypeCategory{.IsUTFCharacter = true}));
	static_assert(ValidateTypeCategory<signed char>(
		TypeCategory{.IsSignedInteger = true}));
	static_assert(ValidateTypeCategory<unsigned char>(
		TypeCategory{.IsUnsignedInteger = true}));
	static_assert(ValidateTypeCategory<signed short>(
		TypeCategory{.IsSignedInteger = true}));
	static_assert(ValidateTypeCategory<unsigned short>(
		TypeCategory{.IsUnsignedInteger = true}));
	static_assert(ValidateTypeCategory<signed int>(
		TypeCategory{.IsSignedInteger = true}));
	static_assert(ValidateTypeCategory<unsigned int>(
		TypeCategory{.IsUnsignedInteger = true}));
	static_assert(ValidateTypeCategory<signed long>(
		TypeCategory{.IsSignedInteger = true}));
	static_assert(ValidateTypeCategory<unsigned long>(
		TypeCategory{.IsUnsignedInteger = true}));
	static_assert(ValidateTypeCategory<signed long long>(
		TypeCategory{.IsSignedInteger = true}));
	static_assert(ValidateTypeCategory<unsigned long long>(
		TypeCategory{.IsUnsignedInteger = true}));
	static_assert(ValidateTypeCategory<float>(
		TypeCategory{.IsFloatingPoint = true}));
	static_assert(ValidateTypeCategory<double>(
		TypeCategory{.IsFloatingPoint = true}));
	static_assert(ValidateTypeCategory<long double>(
		TypeCategory{.IsFloatingPoint = true}));
	static_assert(ValidateTypeCategory<Class[]>(
		TypeCategory{.IsUnboundedArray = true}));
	static_assert(ValidateTypeCategory<Class[1]>(
		TypeCategory{.IsBoundedArray = true}));
	static_assert(ValidateTypeCategory<UnscopedEnum>(
		TypeCategory{.IsEnum = true}));
	static_assert(ValidateTypeCategory<ScopedEnum>(
		TypeCategory{.IsEnum = true}));
	static_assert(ValidateTypeCategory<Class>(
		TypeCategory{.IsClass = true}));
	static_assert(ValidateTypeCategory<Struct>(
		TypeCategory{.IsClass = true}));
	static_assert(ValidateTypeCategory<Union>(
		TypeCategory{.IsUnion = true}));
	static_assert(ValidateTypeCategory<void()>(
		TypeCategory{.IsFunction = true}));
	static_assert(ValidateTypeCategory<void*>(
		TypeCategory{.IsPointer = true}));
	static_assert(ValidateTypeCategory<Class&>(
		TypeCategory{.IsLValueReference = true}));
	static_assert(ValidateTypeCategory<Class&&>(
		TypeCategory{.IsRValueReference = true}));
	static_assert(ValidateTypeCategory<void* Class::*>(
		TypeCategory{.IsMemberObjectPointer = true}));
	static_assert(ValidateTypeCategory<void (Class::*)()>(
		TypeCategory{.IsMemberFunctionPointer = true}));
	
	
	/// copy constructor
	template<typename... t_tpElement>
	(	Type)(Type<t_tpElement...> const&)
	->	Type<t_tpElement...>
	;
	
	/// move constructor
	template<typename... t_tpElement>
	(	Type)(Type<t_tpElement...>&&)
	->	Type<t_tpElement...>
	;
	
	/// deduction constructor from template
	template
		<	template
				<	typename
					...
				>
			typename
				t_t1TypePack
		,	typename
			...	t_tpElement
		>
	(	Type
	)	(	t_t1TypePack
			<	t_tpElement
				...
			>	const
			&
		)
	->	Type
		<	t_tpElement
			...
		>
	;
	
	/// deduction constructor from function
	template
		<	typename
			...	t_tpElement
		>
	(	Type
	)	(	auto
			(*
			...	_
			)	()
			->	Type
				<	t_tpElement
				>
		)
	->	Type
		<	t_tpElement
			...
		>
	;
	
	using T = Type<int, unsigned>;
	auto constexpr Tf = T{};
	auto constexpr Q = Tf += Signed;
	
	
	template<typename t_tElement>
	auto constexpr
		Entity()
	->	Type<t_tElement>
	{	return {};	}
	
	template
		<	template
				<	typename
					...
				>
			typename
				t_t1TypePack
		>
	struct
		TypePack
	{
		constexpr
		(	TypePack
		)	()
		=	default
		;
		
		template
			<	typename
				...	t_tpArgument
			>
		constexpr
		(	TypePack
		)	(	Type
				<	t_t1TypePack
					<	t_tpArgument
						...
					>
				>
			)
		{}
		
		template
			<	typename
				...	t_tpArgument
			>
		constexpr
		(	operator
			Type
			<	t_t1TypePack
				<	t_tpArgument
					...
				>
			>
		)	()	const
		{	return {};	}
		
		template
			<	typename
				...	t_tpArgument
			>
		static
		auto constexpr
			Match
			(	t_t1TypePack
				<	t_tpArgument
					...
				>	const
				&	i_rInstance
			)
		->	decltype(i_rInstance)
		{	return
				i_rInstance
			;
		}
		
		template
			<	typename
				...	t_tpArgument
			>
		static
		auto constexpr
			Match
			(	t_t1TypePack
				<	t_tpArgument
					...
				>
				&	i_rInstance
			)
		->	decltype(i_rInstance)
		{	return
				i_rInstance
			;
		}
		
		template
			<	typename
				...	t_tpArgument
			>
		static
		auto constexpr
			Match
			(	t_t1TypePack
				<	t_tpArgument
					...
				>
				&&	i_rInstance
			)
		{	return
				i_rInstance
			;
		}
		
		template
			<	typename
					t_tInstance
			>
		auto constexpr static
		(	IsUnambiguousBaseOf
		)	(	Type
				<	t_tInstance
				>	i_vInstance
			)
		->	bool
		{	return
				requires
				{	Match
					(	Declare
						(	i_vInstance
						)
					);
				}
			;
		}
		
		auto constexpr static
		(	Cast
		)	(	auto
				&&	i_rInstance
			)
		->	decltype(auto)
		{	if constexpr
				(	IsUnambiguousBaseOf
					(	Entity
						<	decltype(i_rInstance)
						>()
					)
				)
				return
					Match
					(	std::forward
						<	decltype(i_rInstance)
						>(	i_rInstance
						)
					)
				;
			else
				return
					t_t1TypePack
					{	i_rInstance
					}
				;
		}
		
		template
			<	typename
					t_tArgument
			>
		auto constexpr
		(	operator()
		)	(	Type
				<	t_tArgument
				>	const
				&
			)	const
		->	Type
			<	t_t1TypePack
				<	t_tArgument
				>
			>
		{	return {};	}
		
		template
			<	typename
				...	t_tpArgument
			>
		auto constexpr
		(	operator()
		)	(	Type
				<	t_tpArgument
				>	const
				&
				...
			)	const
		->	Type
			<	t_t1TypePack
				<	t_tpArgument
					...
				>
			>
		{	return {};	}
		
		template
			<	typename
				...	t_tpArgument
			>
		auto constexpr
		(	operator()
		)	(	Type
				<	t_tpArgument
					...
				>	const
				&
			)	const
		->	Type
			<	t_t1TypePack
				<	t_tpArgument
					...
				>
			>
		{	return {};	}
		
		friend
		auto constexpr
		(	operator==
		)	(	TypePack const
				&
			,	auto const
				&	i_rCompareTo
			)
		->	bool
		{	return
				std::is_same_v
				<	TypePack const
					&
				,	decltype(i_rCompareTo)
				>
			;
		}
	};
	
	template
		<	template
				<	typename
					...
				>
			typename
				t_t1TypePack
		>
	auto constexpr
	(	Entity
	)	()
	->	TypePack
		<	t_t1TypePack
		>
	{	return {};	}
}
