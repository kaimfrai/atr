export module Meta.Predicate:Regular;

export import :Category;

export import Meta.Logic;

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
			::std::is_nothrow_destructible_v
			<	t_tEntity
			>;
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
				::std::default_initializable
				<	t_tEntity
				>;
			else
				return
				::std::is_constructible_v
				<	t_tEntity
				,	t_tpArgument
					...
				>;
		}
	};

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
			::std::is_move_constructible_v
			<	::std::remove_all_extents_t
				<	t_tEntity
				>
			>;
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
			::std::is_copy_constructible_v
			<	::std::remove_all_extents_t
				<	t_tEntity
				>
			>;
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
			::std::is_move_assignable_v
			<	::std::remove_all_extents_t
				<	t_tEntity
				>
			>;
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
			::std::is_copy_assignable_v
			<	::std::remove_all_extents_t
				<	t_tEntity
				>
			>;
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
			::std::equality_comparable
			<	::std::remove_all_extents_t
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
	(		Literal<Trait::EqualityComparable>
		and	IsCompoundObject
	or	IsScalar
	or	IsReference
	or	IsFreeFunction
	or	IsUnboundedArray
	)	IsEqualityComparable
	;

	extern decltype
	(		Literal<Trait::Destructible>
		and	IsValue
	or	IsScalar
	)	IsDestructible
	;

	template
		<	typename
			...	t_tpArgument
		>
	extern decltype
	(	Literal<Trait::Constructible_From<t_tpArgument...>>
	and	IsDestructible
	)	IsConstructible_From
	;

	template<>
	extern decltype
	(		Literal<Trait::Constructible_From<>>
		and	IsDestructible
	or	IsScalar
	)	IsConstructible_From<>
	;

	extern decltype
	(		Literal<Trait::MoveConstructible>
		and	IsDestructible
	or	IsScalar
	)	IsMoveConstructible
	;

	extern decltype
	(		Literal<Trait::CopyConstructible>
		and	IsMoveConstructible
	or	IsScalar
	)	IsCopyConstructible
	;

	extern decltype
	(		Literal<Trait::MoveAssignable>
		and	IsMoveConstructible
	or	IsScalar
	)	IsMovable
	;

	extern decltype
	(		Literal<Trait::CopyAssignable>
		and	IsMoveConstructible
		and	IsMovable
	or	IsScalar
	)	IsCopyable
	;

	extern decltype
	(		IsCopyable
		and	IsConstructible_From<>
	or	IsScalar
	)	IsSemiregular
	;

	extern decltype
	(		IsEqualityComparable
		and	IsSemiregular
	or	IsScalar
	)	IsRegular
	;
}
