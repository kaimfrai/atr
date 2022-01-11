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
		using LiteralBase::operator();

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
		using LiteralBase::operator();

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
		{
			if	constexpr
				(	sizeof...(t_tpArgument)
				==	0uz
				)
				return
					Polarity
				==	::std::default_initializable<t_tEntity>
				;
			else
				return
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
		MoveConstructible final
	:	LiteralBase
	{
		using LiteralBase::operator();

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
		using LiteralBase::operator();

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
		using LiteralBase::operator();

		template
			<	ProtoValue
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
		using LiteralBase::operator();

		template
			<	ProtoValue
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
		using LiteralBase::operator();

		template
			<	ProtoArgument
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
		>
	concept
		DefaultInitializable
	=	Literal
		<	t_tProto
		,	Trait::StaticConstraint
			<	Trait::Constructible_From
				{	true
				}
			>
		>
	and	Destructible<t_tProto>
	and	Value<t_tProto>
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
	and	Value<t_tProto>
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
	///	Types that are destructible.
	///	Orders below ProtoScalar, ProtoReference.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoDestructible
	=		Proto::Destructible<t_tProto>
		and	Proto::Value<t_tProto>
	or	Proto::Scalar_Ref<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are default intializable.
	///	Orders below ProtoScalar.
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

	///	Types that are move constructible as a member.
	///	Orders below ProtoScalar, ProtoReference.
	///	Orders above ProtoDestructible.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoMoveConstructible
	=		Proto::MoveConstructible<t_tProto>
		and	Proto::Value<t_tProto>
	or	Proto::Scalar_Ref<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are move constructible as a member.
	///	Orders below ProtoScalar, ProtoLValueReference.
	///	Orders above ProtoMoveConstructible.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoCopyConstructible
	=		Proto::CopyConstructible<t_tProto>
		and	Proto::Value<t_tProto>
	or	Proto::Scalar_LRef<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are movable as a member.
	///	Orders below ProtoScalar.
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

	///	Types that are copyable as a member.
	///	Orders below ProtoScalar.
	///	Orders above ProtoMovable, ProtoCopyConstructible.
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

	///	Types that are semiregular as a member.
	///	Orders below ProtoScalar.
	///	Orders above ProtoCopyable, ProtoDefaultInitializable.
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

	///	Types that are regular as a member.
	///	Orders below ProtoScalar.
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

	///	Types that can be compared for equality.
	///	Orders below ProtoScalar, ProtoReference, ProtoNonQualifiedFunction, ProtoUnboundedArray.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoEqualityComparable
	=		Proto::EqualityComparable<t_tProto>
		and	Proto::Value<t_tProto>
	or	Proto::Scalar_Ref_NonQ_UArr<t_tProto>
	or	Proto::None<t_tProto>
	;
}
