export module Meta.Predicate.Regular;

export import Meta.Logic;
export import Meta.Predicate.Category;

export namespace
	Meta::Trait
{
	struct
		Destructible final
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
			==	::std::is_nothrow_destructible_v
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
		Constructible_From final
	:	LiteralBase
	{
		explicit constexpr
		(	Constructible_From
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
				==	::std::default_initializable<t_tEntity>
				);
			else
				return
				(	Polarity
				==	::std::is_constructible_v
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
	(	Constructible_From
	)	(	bool
		,	TypeToken<t_tpArgument>
			...
		)
	->	Constructible_From
		<	t_tpArgument
			...
		>
	;

	struct
		MoveConstructible final
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
			==	::std::is_move_constructible_v
				<	::std::remove_all_extents_t
					<	t_tEntity
					>
				>
			);
		}
	};

	struct
		CopyConstructible final
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
			==	::std::is_copy_constructible_v
				<	::std::remove_all_extents_t
					<	t_tEntity
					>
				>
			);
		}
	};

	struct
		MoveAssignable final
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
			==	::std::is_move_assignable_v
				<	::std::remove_all_extents_t
					<	t_tEntity
					>
				>
			);
		}
	};

	struct
		CopyAssignable final
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
			==	::std::is_copy_assignable_v
				<	::std::remove_all_extents_t
					<	t_tEntity
					>
				>
			);
		}
	};

	struct
		EqualityComparable final
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
			==	::std::equality_comparable
				<	::std::remove_all_extents_t
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
		IsEqualityComparable
	=		Term{Trait::EqualityComparable{true}}
		and	IsCompoundObject
	or	IsScalar
	or	IsReference
	or	IsNonQualifiedFunction
	or	IsUnboundedArray
	;

	Term constexpr inline
		IsDestructible
	=		Term{Trait::Destructible{true}}
		and	IsValue
	or	IsScalar
	;

	template
		<	typename
			...	t_tpArgument
		>
	Term constexpr inline
		IsConstructible_From
	=	Term{Trait::Constructible_From{true, Type<t_tpArgument>...}}
	and	IsDestructible
	;

	template<>
	Term constexpr inline
		IsConstructible_From<>
	=		Term{Trait::Constructible_From{true}}
		and	IsDestructible
	or	IsScalar
	;

	Term constexpr inline
		IsMoveConstructible
	=		Term{Trait::MoveConstructible{true}}
		and	IsDestructible
	or	IsScalar
	;

	Term constexpr inline
		IsCopyConstructible
	=		Term{Trait::CopyConstructible{true}}
		and	IsMoveConstructible
	or	IsScalar
	;

	Term constexpr inline
		IsMovable
	=		Term{Trait::MoveAssignable{true}}
		and	IsMoveConstructible
	or	IsScalar
	;

	Term constexpr inline
		IsCopyable
	=		Term{Trait::CopyAssignable{true}}
		and	IsMoveConstructible
		and	IsMovable
	or	IsScalar
	;

	Term constexpr inline
		IsSemiregular
	=		IsCopyable
		and	IsConstructible_From<>
	or	IsScalar
	;

	Term constexpr inline
		IsRegular
	=		IsEqualityComparable
		and	IsSemiregular
	or	IsScalar
	;
}
