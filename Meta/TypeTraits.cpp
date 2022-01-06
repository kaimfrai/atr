export module Meta.TypeTraits;

export import Std;

export import Meta.Type;
export import Meta.Transform;
export import Meta.Concepts;
export import Meta.Logic;
export import Meta.Constraint;
export import Meta.Predicate;

export namespace
	Meta::Trait
{
	struct
		Const final
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
		{	return Polarity == std::is_const_v<t_tEntity>;	}
	};

	struct
		Volatile final
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
		{	return Polarity == std::is_volatile_v<t_tEntity>;	}
	};

	struct
		Empty final
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
		{	return Polarity == std::is_empty_v<t_tEntity>;	}
	};

	template
		<	ProtoBase
				t_tBase
		>
	struct
		Derived_From final
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
		{	return Polarity == std::is_base_of_v<t_tBase, t_tEntity>;	}
	};

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
		{	return Polarity == std::is_nothrow_destructible_v<t_tEntity>;	}
	};

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
		{	return Polarity == std::is_trivially_destructible_v<t_tEntity>;	}
	};

	template
		<	ProtoConstraint<IsPassable>
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
		<	ProtoConstraint<IsPassable>
			...	t_tpArgument
		>
	struct
		NoexceptConstructible_From final
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
				Polarity
			==	::std::is_nothrow_constructible_v
				<	t_tEntity
				,	t_tpArgument
					...
				>
			;
		}
	};

	template
		<	ProtoConstraint<IsPassable>
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

	struct
		DefaultInitializable final
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
				Polarity
			==	::std::default_initializable
				<	t_tEntity
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
				t_t1Pack
		>
	struct
		TypePack_Of final
	:	LiteralBase
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
					i_vToken
			)	const
		->	bool
		{
			if	constexpr
				(	not	ProtoCustom<t_tEntity>
				)
				return not Polarity;
			else
			if	constexpr
				(	auto constexpr
					vMutableToken
				=	RemoveCV(i_vToken)
				;	i_vToken == vMutableToken
				)
				return not Polarity;
			else
				return operator()(vMutableToken);
		}

		template
			<	typename
				...	t_tpArgument
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_t1Pack
					<	t_tpArgument
						...
					>
				>
			)	const
		->	bool
		{	return Polarity;	}
	};

	template
		<	template
				<	auto
					...
				>
			typename
				t_t1Pack
		>
	struct
		ValuePack_Of final
	:	LiteralBase
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
					i_vToken
			)	const
		->	bool
		{
			if	constexpr
				(	not	ProtoCustom<t_tEntity>
				)
				return not Polarity;
			else
			if	constexpr
				(	auto constexpr
					vMutableToken
				=	RemoveCV(i_vToken)
				;	i_vToken == vMutableToken
				)
				return not Polarity;
			else
				return operator()(vMutableToken);
		}

		template
			<	auto
				...	t_vpArgument
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_t1Pack
					<	t_vpArgument
						...
					>
				>
			)	const
		->	bool
		{	return Polarity;	}
	};

	template
		<	template
				<	auto
				,	typename
				>
			typename
				t_t1Pair
		>
	struct
		ValueTypePair_Of final
	:	LiteralBase
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
					i_vToken
			)	const
		->	bool
		{
			if	constexpr
				(	not	ProtoCustom<t_tEntity>
				)
				return not Polarity;
			else
			if	constexpr
				(	auto constexpr
					vMutableToken
				=	RemoveCV(i_vToken)
				;	i_vToken == vMutableToken
				)
				return not Polarity;
			else
				return operator()(vMutableToken);
		}

		template
			<	auto
					t_vFirst
			,	typename
					t_tSecond
			>
		auto constexpr
		(	operator()
		)	(	TypeToken
				<	t_t1Pair
					<	t_vFirst
					,	t_tSecond
					>
				>
			)	const
		->	bool
		{	return Polarity;	}
	};
}

export namespace
	Meta
{
	Term constexpr inline
		IsConst
	=	Term{Trait::Const{true}}
	and	IsCVQualifiable
	;

	Term constexpr inline
		IsVolatile
	=	Term{Trait::Volatile{true}}
	and	IsCVQualifiable
	;


	Term constexpr inline
		IsEmpty
	=	Term{Trait::Empty{true}}
	and	IsCustom
	;

	Term constexpr inline
		IsDestructible
	=	Term{Trait::Destructible{true}}
	and	(	IsObject
		or	IsReference
		)
	;

	Term constexpr inline
		IsTriviallyDestructible
	=	Term{Trait::TriviallyDestructible{true}}
	and	IsDestructible
	;

	template
		<	ProtoConstraint<IsPassable>
			...	t_tpArgument
		>
	Term constexpr inline
		IsConstructible_From
	=	Term{Trait::Constructible_From<t_tpArgument...>{true}}
	and	IsDestructible
	;

	template
		<	ProtoConstraint<IsPassable>
			...	t_tpArgument
		>
	Term constexpr inline
		IsNoexceptConstructible_From
	=	Term{Trait::NoexceptConstructible_From<t_tpArgument...>{true}}
	and	IsConstructible_From<t_tpArgument...>
	;

	template
		<	ProtoConstraint<IsPassable>
			...	t_tpArgument
		>
	Term constexpr inline
		IsTriviallyConstructible_From
	=	Term{Trait::TriviallyConstructible_From<t_tpArgument...>{true}}
	and	IsTriviallyDestructible
	and	IsNoexceptConstructible_From<t_tpArgument...>
	;

	Term constexpr inline
		IsDefaultInitializable
	=	Term{Trait::DefaultInitializable{true}}
	and	IsConstructible_From<>
	;

	Term constexpr inline
		IsStateless
	=	IsEmpty
	and	IsDefaultInitializable
	and	IsTriviallyConstructible_From<>
	;

	template
		<	ProtoBase
				t_tBase
		>
	Term constexpr inline
		IsDerived_From
	=	Term{Trait::Derived_From<t_tBase>{true}}
	and	IsCustom
	;

	template
		<	template
				<	typename
					...
				>
			typename
				t_t1Pack
		>
	Term constexpr inline
		IsTypePack_Of
	=	Term{Trait::TypePack_Of<t_t1Pack>{true}}
	and	IsCustom
	;

	template
		<	template
				<	auto
					...
				>
			typename
				t_t1Pack
		>
	Term constexpr inline
		IsValuePack_Of
	=	Term{Trait::ValuePack_Of<t_t1Pack>{true}}
	and	IsCustom
	;


	template
		<	template
				<	auto
				,	typename
				>
			typename
				t_t1Pack
		>
	Term constexpr inline
		IsValueTypePair_Of
	=	Term{Trait::ValueTypePair_Of<t_t1Pack>{true}}
	and	IsCustom
	;
}
