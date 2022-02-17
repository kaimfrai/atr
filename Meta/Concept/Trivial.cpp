export module Meta.Concept.Trivial;

export import Meta.Concept.Regular;
import Std;

export namespace
	Meta::Trait
{
	struct
		TriviallyDestructible final
	:	LiteralBase
	{
		using LiteralBase::operator();

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
				<	t_tEntity
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
		using LiteralBase::operator();

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
		{
			if	constexpr
				(	sizeof...(t_tpArgument)
				==	0uz
				)
				return
					Polarity
				==	(	::std::default_initializable
						<	t_tEntity
						>
					and	::std::is_trivially_constructible_v
						<	t_tEntity
						>
					)
				;
			else
				return
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
		using LiteralBase::operator();

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
		using LiteralBase::operator();

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
		using LiteralBase::operator();

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
		using LiteralBase::operator();

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
		>
	concept
		TriviallyDefaultInitializable
	=	Literal
		<	t_tProto
		,	Trait::StaticConstraint
			<	Trait::TriviallyConstructible_From
				{	true
				}
			>
		>
	and	TriviallyDestructible<t_tProto>
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
}

export namespace
	Meta
{
	///	Types that are trivially destructible.
	///	Orders below ProtoScalar, ProtoReference.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoTriviallyDestructible
	=		Proto::TriviallyDestructible<t_tProto>
		and	Proto::Value<t_tProto>
	or	Proto::Scalar_Ref<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are trivially default intializable.
	///	Orders below ProtoScalar.
	///	Orders above ProtoTriviallyDestructible, ProtoDefaultInitializable.
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

	///	Types that are trivially move constructible as a member.
	///	Orders below ProtoScalar, ProtoReference.
	///	Orders above ProtoTriviallyDestructible, ProtoMoveConstructible.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoTriviallyMoveConstructible
	=		Proto::TriviallyMoveConstructible<t_tProto>
		and	Proto::Value<t_tProto>
	or	Proto::Scalar_Ref<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are trivially move constructible as a member.
	///	Orders below ProtoScalar, ProtoLValueReference.
	///	Orders above ProtoTriviallyMoveConstructible, ProtoCopyConstructible.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoTriviallyCopyConstructible
	=		Proto::TriviallyCopyConstructible<t_tProto>
		and	Proto::Value<t_tProto>
	or	Proto::Scalar_LRef<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are trivially movable as a member.
	///	Orders below ProtoScalar.
	///	Orders above ProtoTriviallyMoveConstructible, ProtoMovable.
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

	///	Types that are trivially copyable as a member.
	///	Orders below ProtoScalar.
	///	Orders above ProtoTriviallyMovable, ProtoTriviallyCopyConstructible, ProtoCopyable.
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

	///	Types that are trivial as a member.
	///	Orders below ProtoScalar.
	///	Orders above ProtoTriviallyCopyable, ProtoTriviallyDefaultInitializable, ProtoSemiregular.
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

	///	Types that are trivial and regular as a member.
	///	Orders below ProtoScalar.
	///	Orders above ProtoRegular, ProtoTrivial.
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
}
