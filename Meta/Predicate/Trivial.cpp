export module Meta.Predicate.Trivial;

import Meta.Predicate.Regular;
import Meta.Predicate.Category;

import Meta.Logic.LiteralBase;
import Meta.Token.Type;
import Meta.Logic.Conjunction;
import Meta.Logic.Disjunction;
import Meta.Logic.Term;

import std;

export namespace
	Meta::Trait
{
	struct
		TriviallyDestructible final
	:	LiteralBase
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr inline
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return
			::std::is_trivially_destructible_v
			<	t_tEntity
			>;
		}
	};

	template
		<	typename
			...	t_tpArgument
		>
	struct
		TriviallyConstructible_From final
	:	LiteralBase
	{

		template
			<	typename
					t_tEntity
			>
		auto constexpr inline
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{
			if	constexpr
				(	sizeof...(t_tpArgument)
				==	0uz
				)
				return
				(	::std::default_initializable
					<	t_tEntity
					>
				and	::std::is_trivially_constructible_v
					<	t_tEntity
					>
				);
			else
				return
				::std::is_trivially_constructible_v
				<	t_tEntity
				,	t_tpArgument
					...
				>;
		}
	};

	struct
		TriviallyMoveConstructible final
	:	LiteralBase
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr inline
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return
			::std::is_trivially_move_constructible_v
			<	::std::remove_all_extents
				<	t_tEntity
				>
			>;
		}
	};

	struct
		TriviallyCopyConstructible final
	:	LiteralBase
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr inline
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return
			::std::is_trivially_copy_constructible_v
			<	::std::remove_all_extents
				<	t_tEntity
				>
			>;
		}
	};

	struct
		TriviallyMoveAssignable final
	:	LiteralBase
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr inline
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return
			::std::is_trivially_move_assignable_v
			<	::std::remove_all_extents
				<	t_tEntity
				>
			>;
		}
	};

	struct
		TriviallyCopyAssignable final
	:	LiteralBase
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr inline
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return
			::std::is_trivially_copy_assignable_v
			<	::std::remove_all_extents
				<	t_tEntity
				>
			>;
		}
	};
}

using ::Meta::Logic::DeduceTerm;
using ::Meta::Logic::Literal;

export namespace
	Meta
{
	DeduceTerm
	<		Literal<Trait::TriviallyDestructible>
		and	IsDestructible
	or	IsScalar
	>	extern
		IsTriviallyDestructible
	;

	template
		<	typename
			...	t_tpArgument
		>
	DeduceTerm
	<	Literal<Trait::TriviallyConstructible_From<t_tpArgument...>>
	and	IsTriviallyDestructible
	and	IsConstructible_From<t_tpArgument...>
	>	inline
		IsTriviallyConstructible_From
	{};

	template<>
	DeduceTerm
	<		Literal<Trait::TriviallyConstructible_From<>>
		and	IsTriviallyDestructible
		and	IsConstructible_From<>
	or	IsScalar
	>	inline
		IsTriviallyConstructible_From<>
	;

	DeduceTerm
	<		Literal<Trait::TriviallyMoveConstructible>
		and	IsTriviallyDestructible
		and	IsMoveConstructible
	or	IsScalar
	>	extern
		IsTriviallyMoveConstructible
	;

	DeduceTerm
	<		Literal<Trait::TriviallyCopyConstructible>
		and	IsTriviallyMoveConstructible
		and	IsCopyConstructible
	or	IsScalar
	>	extern
		IsTriviallyCopyConstructible
	;

	DeduceTerm
	<		Literal<Trait::TriviallyMoveAssignable>
		and	IsTriviallyMoveConstructible
		and	IsMovable
	or	IsScalar
	>	extern
		IsTriviallyMovable
	;

	DeduceTerm
	<		Literal<Trait::CopyAssignable>
		and	IsTriviallyCopyConstructible
		and	IsTriviallyMovable
		and	IsCopyable
	or	IsScalar
	>	extern
		IsTriviallyCopyable
	;

	DeduceTerm
	<		IsTriviallyCopyable
		and	IsTriviallyConstructible_From<>
	or	IsScalar
	>	extern
		IsTrivial
	;

	DeduceTerm
	<		IsEqualityComparable
		and	IsTrivial
	or	IsScalar
	>	extern
		IsTrivialRegular
	;
}
