export module Meta.Predicate.TypeTraits;

export import Std;

export import Meta.Type;
export import Meta.Concept.Category;
export import Meta.Logic;
export import Meta.Predicate.Category;

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
		)	(	TypeToken<t_tEntity const>
			)	const
		->	bool
		{	return Polarity;	}
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
		)	(	TypeToken<t_tEntity volatile>
			)	const
		->	bool
		{	return Polarity;	}
	};

	template
		<	ProtoReturnable
				t_tTarget
		>
	struct
		Convertible_To final
	:	LiteralBase
	{
		explicit constexpr
		(	Convertible_To
		)	(	bool
					i_bPolarity
			,	TypeToken<t_tTarget>
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
		{	return
				Polarity
			==	::std::is_convertible_v
				<	t_tEntity
				,	t_tTarget
				>
			;
		}
	};

	template
		<	ProtoReturnable
				t_tTarget
		>
	(	Convertible_To
	)	(	bool
		,	TypeToken<t_tTarget>
		)
	->	Convertible_To
		<	t_tTarget
		>
	;

	template
		<	ProtoArgument
				t_tArgument
		>
	struct
		Assignable_From final
	:	LiteralBase
	{
		explicit constexpr
		(	Assignable_From
		)	(	bool
					i_bPolarity
			,	TypeToken<t_tArgument>
			)
		:	LiteralBase
			{	i_bPolarity
			}
		{}

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
			==	::std::is_assignable_v
				<	t_tEntity
				,	t_tArgument
				>
			;
		}
	};

	template
		<	ProtoArgument
				t_tArgument
		>
	(	Assignable_From
	)	(	bool
		,	TypeToken<t_tArgument>
		)
	->	Assignable_From
		<	t_tArgument
		>
	;

	template
		<	ProtoClass
				t_tBase
		>
	struct
		Derived_From final
	:	LiteralBase
	{
		template
			<	ProtoClass
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return
				Polarity
			==	::std::is_base_of_v
				<	t_tBase
				,	t_tEntity
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
					>	const
				>
			)	const
		->	bool
		{	return Polarity;	}

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
					>	volatile
				>
			)	const
		->	bool
		{	return Polarity;	}

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
					>	const volatile
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
					>	const
				>
			)	const
		->	bool
		{	return Polarity;	}

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
					>	volatile
				>
			)	const
		->	bool
		{	return Polarity;	}

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
					>	const volatile
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
					>	const
				>
			)	const
		->	bool
		{	return Polarity;	}

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
					>	volatile
				>
			)	const
		->	bool
		{	return Polarity;	}

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
					>	const volatile
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

	template
		<	ProtoClass
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
