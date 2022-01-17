export module Meta.Type;

export import Std;

export import Meta.Integer;
export import Meta.Literals;

export namespace
	Meta
{
	enum class
		EQualifier
	:	UInt<5>
	{	None = 0x0
	,	Const = 0x1
	,	Volatile = Const << 0x1
	,	LRef = Volatile << 0x1
	,	RRef = LRef << 0x1
	,	Noexcept = RRef << 0x1
	};
}

namespace
	Meta::Token
{
	static auto constexpr
	(	operator |
	)	(	EQualifier
				i_eLeft
		,	EQualifier
				i_eRight
		)
	->	EQualifier
	{	return
		static_cast<EQualifier>
		(	static_cast<UInt<5>>(i_eLeft)
		bitor
			static_cast<UInt<5>>(i_eRight)
		);
	}

	using enum Meta::EQualifier;
}

export namespace
	Meta::Token
{
	template
		<	USize
			=	0uz
		>
	struct
		Extent final
	{};

	template
		<	typename
		>
	struct
		Type
	;

	template
		<	typename
				t_tEntity
		>
	struct
		Sized
	{
		static USize constexpr
			ByteSize
		=	sizeof(t_tEntity)
		;

		template
			<	USize
					t_nIndex
			>
		auto constexpr
		(	operator[]
		)	(	Extent<t_nIndex>
			)	const
		->	Type<t_tEntity[t_nIndex]>
		{	return {};	}

		auto constexpr
		(	operator[]
		)	(	Extent<0uz>
			)
		->	Type<t_tEntity[]>
		{	return {};	}

		template
			<	typename
				...	t_tpArgument
			>
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	t_tpArgument
				&&
				...	i_rpArgument
			)
		requires
			::std::is_constructible_v
			<	t_tEntity
			,	t_tpArgument
				...
			>
		{	return
			t_tEntity
			{	::std::forward<t_tpArgument>
				(	i_rpArgument
				)
				...
			};
		}

	};

	template
		<	typename
				t_tArgument
		>
	struct
		Parameter
	{};

	template
		<	typename
				t_tEntity
		>
	struct
		Return
	{
		template
			<	typename
				...	t_tpArgument
			>
		auto constexpr
		(	operator()
		)	(	Parameter<t_tpArgument>
				...
			)
		->	Type
			<	t_tEntity
				(	t_tpArgument
					...
				)
			>
		;
	};

	template
		<	typename
				t_tEntity
		>
	struct
		Composition
	:	Sized<t_tEntity>
	,	Return<::std::remove_volatile_t<t_tEntity>>
	,	Parameter<::std::remove_volatile_t<t_tEntity>>
	{};

	template<>
	struct
		Composition<void>
	:	Return<void>
	{};

	template<>
	struct
		Composition<void const>
	:	Return<void const>
	{};

	template<>
	struct
		Composition<void volatile>
	:	Return<void>
	{};

	template<>
	struct
		Composition<void const volatile>
	:	Return<void const>
	{};

	template
		<	typename
				t_tEntity
		>
	struct
		Composition<t_tEntity&>
	:	Return<t_tEntity&>
	,	Parameter<t_tEntity&>
	{};
	template
		<	typename
				t_tEntity
		>
	struct
		Composition<t_tEntity&&>
	:	Return<t_tEntity&&>
	,	Parameter<t_tEntity&&>
	{};

	template
		<	typename
				t_tEntity
		,	USize
				t_nExtent
		>
	struct
		Composition<t_tEntity[t_nExtent]>
	:	Sized<t_tEntity[t_nExtent]>
	{};
	template
		<	typename
				t_tEntity
		>
	struct
		Composition<t_tEntity[]>
	:	Parameter<t_tEntity[]>
	{};

	template
		<	EQualifier
				t_eQualifier
		=	None
		>
	struct
		Function
	{
		static auto constexpr
		(	FunctionQualifier
		)	(	EQualifier
					i_eQualifier
			)
		->	bool
		{	return
				(	static_cast<UInt<5>>(t_eQualifier)
				bitand
					static_cast<UInt<5>>(i_eQualifier)
				)
			==	static_cast<UInt<5>>(i_eQualifier)
			;
		}
	};

	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument...)
		>
	:	Function<>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument..., ...)
		>
	:	Function<>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument...) const
		>
	:	Function<Const>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument...) volatile
		>
	:	Function<Volatile>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument...) const volatile
		>
	:	Function<Const | Volatile>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument..., ...) const
		>
	:	Function<Const>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument..., ...) volatile
		>
	:	Function<Volatile>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument..., ...) const volatile
		>
	:	Function<Const | Volatile>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument...) &
		>
	:	Function<LRef>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument...) const &
		>
	:	Function<Const | LRef>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument...) volatile &
		>
	:	Function<Volatile | LRef>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument...) const volatile &
		>
	:	Function<Const | Volatile | LRef>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument..., ...) &
		>
	:	Function<LRef>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument..., ...) const &
		>
	:	Function<Const | LRef>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument..., ...) volatile &
		>
	:	Function<Volatile | LRef>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument..., ...) const volatile &
		>
	:	Function<Const | Volatile | LRef>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument...) &&
		>
	:	Function<RRef>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument...) const &&
		>
	:	Function<Const | RRef>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument...) volatile &&
		>
	:	Function<Volatile | RRef>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument...) const volatile &&
		>
	:	Function<Const | Volatile | RRef>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument..., ...) &&
		>
	:	Function<RRef>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument..., ...) const &&
		>
	:	Function<Const | RRef>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument..., ...) volatile &&
		>
	:	Function<Volatile | RRef>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument..., ...) const volatile &&
		>
	:	Function<Const | Volatile | RRef>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument...) noexcept
		>
	:	Function<Noexcept>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument..., ...) noexcept
		>
	:	Function<Noexcept>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument...) const noexcept
		>
	:	Function<Const | Noexcept>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument...) volatile noexcept
		>
	:	Function<Volatile | Noexcept>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument...) const volatile noexcept
		>
	:	Function<Const | Volatile | Noexcept>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument..., ...) const noexcept
		>
	:	Function<Const | Noexcept>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument..., ...) volatile noexcept
		>
	:	Function<Volatile | Noexcept>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument..., ...) const volatile noexcept
		>
	:	Function<Const | Volatile | Noexcept>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument...) & noexcept
		>
	:	Function<LRef | Noexcept>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument...) const & noexcept
		>
	:	Function<Const | LRef | Noexcept>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument...) volatile & noexcept
		>
	:	Function<Volatile | LRef | Noexcept>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument...) const volatile & noexcept
		>
	:	Function<Const | Volatile | LRef | Noexcept>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument..., ...) & noexcept
		>
	:	Function<LRef | Noexcept>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument..., ...) const & noexcept
		>
	:	Function<Const | LRef | Noexcept>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument..., ...) volatile & noexcept
		>
	:	Function<Volatile | LRef | Noexcept>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument..., ...) const volatile & noexcept
		>
	:	Function<Const | Volatile | LRef | Noexcept>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument...) && noexcept
		>
	:	Function<RRef | Noexcept>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument...) const && noexcept
		>
	:	Function<Const | RRef | Noexcept>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument...) volatile && noexcept
		>
	:	Function<Volatile | RRef | Noexcept>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument...) const volatile && noexcept
		>
	:	Function<Const | Volatile | RRef | Noexcept>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument..., ...) && noexcept
		>
	:	Function<RRef | Noexcept>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument..., ...) const && noexcept
		>
	:	Function<Const | RRef | Noexcept>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument..., ...) volatile && noexcept
		>
	:	Function<Volatile | RRef | Noexcept>
	{};
	template
		<	typename
				t_tReturn
		,	typename
			...	t_tpArgument
		>
	struct
		Composition
		<	t_tReturn(t_tpArgument..., ...) const volatile && noexcept
		>
	:	Function<Const | Volatile | RRef | Noexcept>
	{};

	struct
		EraseType final
	{};

	template
		<	typename
				t_tEntity
		>
	struct
		Type
	:	Composition<t_tEntity>
	{
		using Entity = t_tEntity;

		static EraseType constexpr
			Erase
		{};

		constexpr
		(	operator
			EraseType const*
		)	()	const
		{	return &Erase;	}
	};
}

export namespace
	Meta
{
	template
		<	typename
				t_tEntity
		>
	using
		TypeToken
	=	Token::Type<t_tEntity>
	;

	using
		EraseTypeToken
	=	Token::EraseType const*
	;

	template
		<	typename
				t_tEntity
		>
	auto constexpr inline
		Type
	=	TypeToken<t_tEntity>
		{}
	;
}

export namespace
	Meta::Literals
{
	template
		<	char
			...	t_npDigit
		>
	auto constexpr
	(	operator""_Extent
	)	()
	->	Token::Extent
		<	EvaluateNumericLiteral
			<	t_npDigit
				...
			>()
		>
	{	return {};	}
}
