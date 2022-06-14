export module Meta.Predicate:Trivial;

export import :Regular;

export import Meta.Logic;

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
		auto constexpr
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
		auto constexpr
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
		auto constexpr
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
		auto constexpr
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
		auto constexpr
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
		auto constexpr
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

export namespace
	Meta
{
	extern decltype
	(		Literal<Trait::TriviallyDestructible>
		and	IsDestructible
	or	IsScalar
	)	IsTriviallyDestructible
	;

	template
		<	typename
			...	t_tpArgument
		>
	extern decltype
	(	Literal<Trait::TriviallyConstructible_From<t_tpArgument...>>
	and	IsTriviallyDestructible
	and	IsConstructible_From<t_tpArgument...>
	)	IsTriviallyConstructible_From
	;

	template<>
	extern decltype
	(		Literal<Trait::TriviallyConstructible_From<>>
		and	IsTriviallyDestructible
		and	IsConstructible_From<>
	or	IsScalar
	)	IsTriviallyConstructible_From<>
	;

	extern decltype
	(		Literal<Trait::TriviallyMoveConstructible>
		and	IsTriviallyDestructible
		and	IsMoveConstructible
	or	IsScalar
	)	IsTriviallyMoveConstructible
	;

	extern decltype
	(		Literal<Trait::TriviallyCopyConstructible>
		and	IsTriviallyMoveConstructible
		and	IsCopyConstructible
	or	IsScalar
	)	IsTriviallyCopyConstructible
	;

	extern decltype
	(		Literal<Trait::TriviallyMoveAssignable>
		and	IsTriviallyMoveConstructible
		and	IsMovable
	or	IsScalar
	)	IsTriviallyMovable
	;

	extern decltype
	(		Literal<Trait::CopyAssignable>
		and	IsTriviallyCopyConstructible
		and	IsTriviallyMovable
		and	IsCopyable
	or	IsScalar
	)	IsTriviallyCopyable
	;

	extern decltype
	(		IsTriviallyCopyable
		and	IsTriviallyConstructible_From<>
	or	IsScalar
	)	IsTrivial
	;

	extern decltype
	(		IsEqualityComparable
		and	IsTrivial
	or	IsScalar
	)	IsTrivialRegular
	;
}
