export module Meta.Concept.Trivial;

export import Meta.Concept.Regular;

export namespace
	Meta::Trait
{
	struct
		TriviallyDestructible final
	:	LiteralBase
	{
		template
			<	ProtoDestructible
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return
				Polarity
			==	::std::is_trivially_destructible_v
				<	Member<t_tEntity>
				>
			;
		}
	};

	template
		<	ProtoArgument
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
			<	ProtoDataMember
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return
				Polarity
			==	::std::is_trivially_constructible_v
				<	t_tEntity
				,	t_tpArgument
					...
				>
			;
		}
	};

	template
		<	ProtoArgument
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
			<	ProtoMoveConstructible
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return
				Polarity
			==	::std::is_trivially_move_constructible_v
				<	Member<t_tEntity>
				>
			;
		}
	};

	struct
		TriviallyCopyConstructible final
	:	LiteralBase
	{
		template
			<	ProtoCopyConstructible
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return
				Polarity
			==	::std::is_trivially_copy_constructible_v
				<	Member<t_tEntity>
				>
			;
		}
	};

	struct
		TriviallyMoveAssignable final
	:	LiteralBase
	{
		template
			<	ProtoMovable
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return
				Polarity
			==	::std::is_trivially_move_assignable_v
				<	Member<t_tEntity>
				>
			;
		}
	};

	struct
		TriviallyCopyAssignable final
	:	LiteralBase
	{
		template
			<	ProtoCopyable
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return
				Polarity
			==	::std::is_trivially_copy_assignable_v
				<	Member<t_tEntity>
				>
			;
		}
	};

	struct
		DefaultEqual final
	:	LiteralBase
	{
		template
			<	ProtoRegular
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return
				Polarity
			==	(	t_tEntity{}
				==	t_tEntity{}
				)
			;
		}
	};

	struct
		Empty final
	:	LiteralBase
	{
		template
			<	ProtoCustom
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return
				Polarity
			==	std::is_empty_v
				<	Member<t_tEntity>
				>
			;
		}
	};
}

export namespace
	Meta::Proto
{
	template
		<	typename
				t_tProto
		>
	concept
		TriviallyDestructible
	=	Literal
		<	t_tProto
		,	Trait::StaticConstraint
			<	Trait::TriviallyDestructible
				{	true
				}
			>
		>
	and	Destructible<t_tProto>
	;

	template
		<	typename
				t_tProto
		,	typename
			...	t_tpArgument
		>
	concept
		TriviallyConstructible_From
	=	Literal
		<	t_tProto
		,	Trait::StaticConstraint
			<	Trait::TriviallyConstructible_From
				{	true
				,	Type<t_tpArgument>
					...
				}
			>
		>
	and	Constructible_From<t_tProto, t_tpArgument...>
	and	TriviallyDestructible<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		TriviallyDefaultInitializable
	=	TriviallyConstructible_From<t_tProto>
	and	DefaultInitializable<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		TriviallyMoveConstructible
	=	Literal
		<	t_tProto
		,	Trait::StaticConstraint
			<	Trait::TriviallyMoveConstructible
				{	true
				}
			>
		>
	and	TriviallyDestructible<t_tProto>
	and	MoveConstructible<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		TriviallyCopyConstructible
	=	Literal
		<	t_tProto
		,	Trait::StaticConstraint
			<	Trait::TriviallyCopyConstructible
				{	true
				}
			>
		>
	and	TriviallyMoveConstructible<t_tProto>
	and	CopyConstructible<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		TriviallyMovable
	=	Literal
		<	t_tProto
		,	Trait::StaticConstraint
			<	Trait::TriviallyMoveAssignable
				{	true
				}
			>
		>
	and	TriviallyMoveConstructible<t_tProto>
	and	Movable<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		TriviallyCopyable
	=	Literal
		<	t_tProto
		,	Trait::StaticConstraint
			<	Trait::TriviallyCopyAssignable
				{	true
				}
			>
		>
	and	TriviallyCopyConstructible<t_tProto>
	and	TriviallyMovable<t_tProto>
	and	Copyable<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		DefaultEqual
	=	Literal
		<	t_tProto
		,	Trait::StaticConstraint
			<	Trait::DefaultEqual
				{	true
				}
			>
		>
	and	Regular<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Trivial
	=	TriviallyCopyable<t_tProto>
	and	TriviallyDefaultInitializable<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		TrivialRegular
	=	EqualityComparable<t_tProto>
	and	Trivial<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Empty
	=	Literal
		<	t_tProto
		,	Trait::StaticConstraint
			<	Trait::Empty
				{	true
				}
			>
		>
	and	Custom<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Stateless
	=	Empty<t_tProto>
	and	DefaultEqual<t_tProto>
	and	Trivial<t_tProto>
	;
}

export namespace
	Meta
{
	///	Custom types that are trivially destructible.
	///	Orders above ProtoDestructibleCustom.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoTriviallyDestructibleCustom
	=		Proto::TriviallyDestructible<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are trivially destructible.
	///	Orders below ProtoScalar, ProtoReference and ProtoTriviallyDestructibleCustom.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoTriviallyDestructible
	=		Proto::TriviallyDestructible<t_tProto>
		and	Proto::SizedObject<t_tProto>
	or	Proto::Scalar_Ref<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Custom types that are trivially default intializable.
	///	Orders above ProtoTriviallyDestructible and ProtoDefaultInitializableCustom.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoTriviallyDefaultInitializableCustom
	=		Proto::TriviallyDefaultInitializable<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are trivially default intializable.
	///	Orders below ProtoScalar and ProtoTriviallyDefaultInitializableCustom.
	///	Orders above ProtoTriviallyDestructible and ProtoDefaultInitializable.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoTriviallyDefaultInitializable
	=	Proto::TriviallyDefaultInitializable<t_tProto>
	or	Proto::Scalar<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Custom types that are trivially move constructible as a member.
	///	Orders above ProtoTriviallyDestructibleCustom and ProtoMoveConstructibleCustom.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoTriviallyMoveConstructibleCustom
	=		Proto::TriviallyMoveConstructible<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are trivially move constructible as a member.
	///	Orders below ProtoScalar, ProtoReference and ProtoTriviallyMoveConstructibleCustom.
	///	Orders above ProtoTriviallyDestructible and ProtoMoveConstructible.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoTriviallyMoveConstructible
	=		Proto::TriviallyMoveConstructible<t_tProto>
		and	Proto::SizedObject<t_tProto>
	or	Proto::Scalar_Ref<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Custom types that are trivially copy constructible as a member.
	///	Orders above ProtoTriviallyMoveConstructibleCustom and ProtoCopyConstructibleCustom.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoTriviallyCopyConstructibleCustom
	=		Proto::TriviallyCopyConstructible<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are trivially move constructible as a member.
	///	Orders below ProtoScalar and ProtoLValueReference and ProtoTriviallyCopyConstructibleFrom.
	///	Orders above ProtoTriviallyMoveConstructible and ProtoCopyConstructible.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoTriviallyCopyConstructible
	=		Proto::TriviallyCopyConstructible<t_tProto>
		and	Proto::SizedObject<t_tProto>
	or	Proto::Scalar_LRef<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Custom types that are trivially movable as a member.
	///	Orders above ProtoTriviallyMoveConstructibleCustom and ProtoMovableCustom.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoTriviallyMovableCustom
	=		Proto::TriviallyMovable<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are trivially movable as a member.
	///	Orders below ProtoScalar and ProtoTriviallyMovableCustom.
	///	Orders above ProtoTriviallyMoveConstructible and ProtoMovable.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoTriviallyMovable
	=	Proto::TriviallyMovable<t_tProto>
	or	Proto::Scalar<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Custom types that are trivially copyable as a member.
	///	Orders above ProtoTriviallyMovableCustom, ProtoTriviallyCopyConstructibleCustom, and ProtoCopyableCustom.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoTriviallyCopyableCustom
	=		Proto::TriviallyCopyable<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are trivially copyable as a member.
	///	Orders below ProtoScalar and ProtoTriviallyCopyableCustom.
	///	Orders above ProtoTriviallyMovable, ProtoTriviallyCopyConstructible, and ProtoCopyable.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoTriviallyCopyable
	=	Proto::TriviallyCopyable<t_tProto>
	or	Proto::Scalar<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Custom types that are trivial as a member
	///	Orders above ProtoTriviallyCopyableCustom, ProtoDefaultInitializableCustom, and ProtoSemiregularCustom.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoTrivialCustom
	=		Proto::Trivial<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are trivial as a member.
	///	Orders below ProtoScalar and ProtoTrivialCustom.
	///	Orders above ProtoTriviallyCopyable, ProtoTriviallyDefaultInitializable and ProtoSemiregular.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoTrivial
	=	Proto::Trivial<t_tProto>
	or	Proto::Scalar<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Custom types that are trivial and regular as a member.
	///	Orders above ProtoSemiregularCustom and ProtoTrivialCustom.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoTrivialRegularCustom
	=		Proto::TrivialRegular<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are trivial and regular as a member.
	///	Orders below ProtoScalar and ProtoTrivialRegularCustom.
	///	Orders above ProtoRegular and ProtoTrivial.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoTrivialRegular
	=	Proto::TrivialRegular<t_tProto>
	or	Proto::Scalar<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Custom types that do not have a value representation.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoEmpty
	=	Proto::Empty<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that do not have a state and can be freely created, copied, moved and compared.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoStateless
	=	Proto::Stateless<t_tProto>
	or	Proto::None<t_tProto>
	;
}
