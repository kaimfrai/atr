export module Meta.Predicate.Trivial;

export import Meta.Logic;
export import Meta.Predicate.Regular;

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
			(	Polarity
			==	::std::is_trivially_destructible_v
				<	t_tEntity
				>
			);
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
		explicit constexpr
		(	TriviallyConstructible_From
		)	(	bool
					i_bPolarity
			,	TypeToken<t_tpArgument>
				...
			)
		:	LiteralBase
			{	i_bPolarity
			}
		{}

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
				(	Polarity
				==	(	::std::default_initializable
						<	t_tEntity
						>
					and	::std::is_trivially_constructible_v
						<	t_tEntity
						>
					)
				);
			else
				return
				(	Polarity
				==	::std::is_trivially_constructible_v
					<	t_tEntity
					,	t_tpArgument
						...
					>
				);
		}
	};

	template
		<	typename
			...	t_tpArgument
		>
	(	TriviallyConstructible_From
	)	(	bool
		,	TypeToken<t_tpArgument>
			...
		)
	->	TriviallyConstructible_From
		<	t_tpArgument
			...
		>
	;

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
			(	Polarity
			==	::std::is_trivially_move_constructible_v
				<	::std::remove_all_extents
					<	t_tEntity
					>
				>
			);
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
			(	Polarity
			==	::std::is_trivially_copy_constructible_v
				<	::std::remove_all_extents
					<	t_tEntity
					>
				>
			);
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
			(	Polarity
			==	::std::is_trivially_move_assignable_v
				<	::std::remove_all_extents
					<	t_tEntity
					>
				>
			);
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
			(	Polarity
			==	::std::is_trivially_copy_assignable_v
				<	::std::remove_all_extents
					<	t_tEntity
					>
				>
			);
		}
	};
}

export namespace
	Meta
{
	Term constexpr inline
		IsTriviallyDestructible
	=		Term{Trait::TriviallyDestructible{true}}
		and	IsDestructible
	or	IsScalar
	;

	template
		<	typename
			...	t_tpArgument
		>
	Term constexpr inline
		IsTriviallyConstructible_From
	=	Term{Trait::TriviallyConstructible_From{true, Type<t_tpArgument>...}}
	and	IsTriviallyDestructible
	and	IsConstructible_From<t_tpArgument...>
	;

	template<>
	Term constexpr inline
		IsTriviallyConstructible_From<>
	=		Term{Trait::TriviallyConstructible_From{true}}
		and	IsTriviallyDestructible
		and	IsConstructible_From<>
	or	IsScalar
	;

	Term constexpr inline
		IsTriviallyMoveConstructible
	=		Term{Trait::TriviallyMoveConstructible{true}}
		and	IsTriviallyDestructible
		and	IsMoveConstructible
	or	IsScalar
	;

	Term constexpr inline
		IsTriviallyCopyConstructible
	=		Term{Trait::TriviallyCopyConstructible{true}}
		and	IsTriviallyMoveConstructible
		and	IsCopyConstructible
	or	IsScalar
	;

	Term constexpr inline
		IsTriviallyMovable
	=		Term{Trait::TriviallyMoveAssignable{true}}
		and	IsTriviallyMoveConstructible
		and	IsMovable
	or	IsScalar
	;

	Term constexpr inline
		IsTriviallyCopyable
	=		Term{Trait::CopyAssignable{true}}
		and	IsTriviallyCopyConstructible
		and	IsTriviallyMovable
		and	IsCopyable
	or	IsScalar
	;

	Term constexpr inline
		IsTrivial
	=		IsTriviallyCopyable
		and	IsTriviallyConstructible_From<>
	or	IsScalar
	;

	Term constexpr inline
		IsTrivialRegular
	=		IsEqualityComparable
		and	IsTrivial
	or	IsScalar
	;
}
