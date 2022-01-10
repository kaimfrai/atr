export module Meta.Concept.Regular;

export import Meta.Concept.Category;

export namespace
	Meta::Trait
{
	template
		<	ProtoDataMember
				t_tMember
		>
	struct
		Member final
	{
		t_tMember
			Member
			[[no_unique_address]]
		;
	};

	struct
		Destructible final
	:	LiteralBase
	{
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
			==	::std::is_nothrow_destructible_v
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
			==	::std::is_constructible_v
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
		DefaultInitializable final
	:	LiteralBase
	{
		template
			<	ProtoSizedObject
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return
				Polarity
			==	::std::default_initializable
				<	Member<t_tEntity>
				>
			;
		}
	};

	struct
		MoveConstructible final
	:	LiteralBase
	{
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
			==	::std::is_move_constructible_v
				<	Member<t_tEntity>
				>
			;
		}
	};

	struct
		CopyConstructible final
	:	LiteralBase
	{
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
			==	::std::is_copy_constructible_v
				<	Member<t_tEntity>
				>
			;
		}
	};

	struct
		MoveAssignable final
	:	LiteralBase
	{
		template
			<	ProtoSizedObject
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return
				Polarity
			==	::std::is_move_assignable_v
				<	Member<t_tEntity>
				>
			;
		}
	};

	struct
		CopyAssignable final
	:	LiteralBase
	{
		template
			<	ProtoSizedObject
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return
				Polarity
			==	::std::is_copy_assignable_v
				<	Member<t_tEntity>
				>
			;
		}
	};

	struct
		EqualityComparable final
	:	LiteralBase
	{
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
			==	::std::equality_comparable
				<	::std::remove_all_extents_t
					<	t_tEntity
					>
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
		Destructible
	=	Literal
		<	t_tProto
		,	Trait::StaticConstraint
			<	Trait::Destructible
				{	true
				}
			>
		>
	;

	template
		<	typename
				t_tProto
		,	typename
			...	t_tpArgument
		>
	concept
		Constructible_From
	=	Literal
		<	t_tProto
		,	Trait::StaticConstraint
			<	Trait::Constructible_From
				{	true
				,	Type<t_tpArgument>
					...
				}
			>
		>
	and	Destructible<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		DefaultInitializable
	=	Literal
		<	t_tProto
		,	Trait::StaticConstraint
			<	Trait::DefaultInitializable
				{	true
				}
			>
		>
	and	Constructible_From<t_tProto>
	and	SizedObject<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		MoveConstructible
	=	Literal
		<	t_tProto
		,	Trait::StaticConstraint
			<	Trait::MoveConstructible
				{	true
				}
			>
		>
	and	Destructible<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		CopyConstructible
	=	Literal
		<	t_tProto
		,	Trait::StaticConstraint
			<	Trait::CopyConstructible
				{	true
				}
			>
		>
	and	MoveConstructible<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Movable
	=	Literal
		<	t_tProto
		,	Trait::StaticConstraint
			<	Trait::MoveAssignable
				{	true
				}
			>
		>
	and	MoveConstructible<t_tProto>
	and	SizedObject<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Copyable
	=	Literal
		<	t_tProto
		,	Trait::StaticConstraint
			<	Trait::CopyAssignable
				{	true
				}
			>
		>
	and	CopyConstructible<t_tProto>
	and	Movable<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		EqualityComparable
	=	Literal
		<	t_tProto
		,	Trait::StaticConstraint
			<	Trait::EqualityComparable
				{	true
				}
			>
		>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Semiregular
	=	Copyable<t_tProto>
	and	DefaultInitializable<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Regular
	=	EqualityComparable<t_tProto>
	and	Semiregular<t_tProto>
	;
}

export namespace
	Meta
{
	///	Custom types that are destructible.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoDestructibleCustom
	=		Proto::Destructible<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are destructible.
	///	Orders below ProtoScalar, ProtoReference and ProtoDestructibleCustom.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoDestructible
	=		Proto::Destructible<t_tProto>
		and	Proto::SizedObject<t_tProto>
	or	Proto::Scalar_Ref<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Custom types that are default intializable.
	///	Orders above ProtoDestructible.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoDefaultInitializableCustom
	=		Proto::DefaultInitializable<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are default intializable.
	///	Orders below ProtoScalar and ProtoDefaultInitializableCustom.
	///	Orders above ProtoDestructible.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoDefaultInitializable
	=	Proto::DefaultInitializable<t_tProto>
	or	Proto::Scalar<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Custom types that are move constructible as a member.
	///	Orders above ProtoDestructibleCustom.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoMoveConstructibleCustom
	=		Proto::MoveConstructible<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are move constructible as a member.
	///	Orders below ProtoScalar, ProtoReference and ProtoMoveConstructibleCustom.
	///	Orders above ProtoDestructible.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoMoveConstructible
	=		Proto::MoveConstructible<t_tProto>
		and	Proto::SizedObject<t_tProto>
	or	Proto::Scalar_Ref<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Custom types that are copy constructible as a member.
	///	Orders above ProtoMoveConstructibleCustom.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoCopyConstructibleCustom
	=		Proto::CopyConstructible<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are move constructible as a member.
	///	Orders below ProtoScalar and ProtoLValueReference and ProtoCopyConstructibleFrom.
	///	Orders above ProtoMoveConstructible.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoCopyConstructible
	=		Proto::CopyConstructible<t_tProto>
		and	Proto::SizedObject<t_tProto>
	or	Proto::Scalar_LRef<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Custom types that are movable as a member.
	///	Orders above ProtoMoveConstructibleCustom.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoMovableCustom
	=		Proto::Movable<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are movable as a member.
	///	Orders below ProtoScalar and ProtoMovableCustom.
	///	Orders above ProtoMoveConstructible.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoMovable
	=	Proto::Movable<t_tProto>
	or	Proto::Scalar<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Custom types that are copyable as a member.
	///	Orders above ProtoMovableCustom and ProtoCopyConstructibleCustom.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoCopyableCustom
	=		Proto::Copyable<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are copyable as a member.
	///	Orders below ProtoScalar and ProtoCopyableCustom.
	///	Orders above ProtoMovable and ProtoCopyConstructible.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoCopyable
	=	Proto::Copyable<t_tProto>
	or	Proto::Scalar<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Custom types that are semiregular as a member
	///	Orders above ProtoCopyableCustom and ProtoDefaultInitializableCustom.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoSemiregularCustom
	=		Proto::Semiregular<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are semiregular as a member.
	///	Orders below ProtoScalar and ProtoSemiregularCustom.
	///	Orders above ProtoCopyable and ProtoDefaultInitializable.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoSemiregular
	=	Proto::Semiregular<t_tProto>
	or	Proto::Scalar<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Custom types that are semiregular as a member.
	///	Orders above ProtoSemiregularCustom.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoRegularCustom
	=		Proto::Regular<t_tProto>
		and	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are regular as a member.
	///	Orders below ProtoScalar and ProtoRegularCustom.
	///	Orders above ProtoSemiregular.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoRegular
	=	Proto::Regular<t_tProto>
	or	Proto::Scalar<t_tProto>
	or	Proto::None<t_tProto>
	;
}
