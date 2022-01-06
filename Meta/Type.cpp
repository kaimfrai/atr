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
		Equal
	{
		friend auto constexpr
		(	operator==
		)	(	Equal
			,	Equal
			)
		->	bool
		{	return true;	}

		template
			<	typename
					t_tRightEntity
			>
		friend auto constexpr
		(	operator==
		)	(	Equal
			,	Equal<t_tRightEntity>
			)
		->	bool
		{	return false;	}
	};

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
	};

	template
		<	typename
				t_tArgument
		>
	struct
		Argument
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
		)	(	Argument<t_tpArgument>
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
	,	Argument<::std::remove_volatile_t<t_tEntity>>
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
	,	Argument<t_tEntity&>
	{};
	template
		<	typename
				t_tEntity
		>
	struct
		Composition<t_tEntity&&>
	:	Return<t_tEntity&&>
	,	Argument<t_tEntity&&>
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
	{};

	template
		<	EQualifier
				t_eQualifier
		=	EQualifier::None
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
	:	Function
		<	EQualifier::Const
		>
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
	:	Function
		<	EQualifier::Volatile
		>
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
	:	Function
		<	EQualifier::Const
		|	EQualifier::Volatile
		>
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
	:	Function
		<	EQualifier::Const
		>
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
	:	Function
		<	EQualifier::Volatile
		>
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
	:	Function
		<	EQualifier::Const
		|	EQualifier::Volatile
		>
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
	:	Function
		<	EQualifier::LRef
		>
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
	:	Function
		<	EQualifier::Const
		|	EQualifier::LRef
		>
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
	:	Function
		<	EQualifier::Volatile
		|	EQualifier::LRef
		>
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
	:	Function
		<	EQualifier::Const
		|	EQualifier::Volatile
		|	EQualifier::LRef
		>
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
	:	Function
		<	EQualifier::LRef
		>
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
	:	Function
		<	EQualifier::Const
		|	EQualifier::LRef
		>
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
	:	Function
		<	EQualifier::Volatile
		|	EQualifier::LRef
		>
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
	:	Function
		<	EQualifier::Const
		|	EQualifier::Volatile
		|	EQualifier::LRef
		>
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
	:	Function
		<	EQualifier::RRef
		>
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
	:	Function
		<	EQualifier::Const
		|	EQualifier::RRef
		>
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
	:	Function
		<	EQualifier::Volatile
		|	EQualifier::RRef
		>
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
	:	Function
		<	EQualifier::Const
		|	EQualifier::Volatile
		|	EQualifier::RRef
		>
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
	:	Function
		<	EQualifier::RRef
		>
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
	:	Function
		<	EQualifier::Const
		|	EQualifier::RRef
		>
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
	:	Function
		<	EQualifier::Volatile
		|	EQualifier::RRef
		>
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
	:	Function
		<	EQualifier::Const
		|	EQualifier::Volatile
		|	EQualifier::RRef
		>
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
	:	Function
		<	EQualifier::Noexcept
		>
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
	:	Function
		<	EQualifier::Noexcept
		>
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
	:	Function
		<	EQualifier::Const
		|	EQualifier::Noexcept
		>
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
	:	Function
		<	EQualifier::Volatile
		|	EQualifier::Noexcept
		>
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
	:	Function
		<	EQualifier::Const
		|	EQualifier::Volatile
		|	EQualifier::Noexcept
		>
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
	:	Function
		<	EQualifier::Const
		|	EQualifier::Noexcept
		>
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
	:	Function
		<	EQualifier::Volatile
		|	EQualifier::Noexcept
		>
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
	:	Function
		<	EQualifier::Const
		|	EQualifier::Volatile
		|	EQualifier::Noexcept
		>
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
	:	Function
		<	EQualifier::LRef
		|	EQualifier::Noexcept
		>
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
	:	Function
		<	EQualifier::Const
		|	EQualifier::LRef
		|	EQualifier::Noexcept
		>
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
	:	Function
		<	EQualifier::Volatile
		|	EQualifier::LRef
		|	EQualifier::Noexcept
		>
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
	:	Function
		<	EQualifier::Const
		|	EQualifier::Volatile
		|	EQualifier::LRef
		|	EQualifier::Noexcept
		>
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
	:	Function
		<	EQualifier::LRef
		|	EQualifier::Noexcept
		>
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
	:	Function
		<	EQualifier::Const
		|	EQualifier::LRef
		|	EQualifier::Noexcept
		>
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
	:	Function
		<	EQualifier::Volatile
		|	EQualifier::LRef
		|	EQualifier::Noexcept
		>
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
	:	Function
		<	EQualifier::Const
		|	EQualifier::Volatile
		|	EQualifier::LRef
		|	EQualifier::Noexcept
		>
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
	:	Function
		<	EQualifier::RRef
		|	EQualifier::Noexcept
		>
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
	:	Function
		<	EQualifier::Const
		|	EQualifier::RRef
		|	EQualifier::Noexcept
		>
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
	:	Function
		<	EQualifier::Volatile
		|	EQualifier::RRef
		|	EQualifier::Noexcept
		>
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
	:	Function
		<	EQualifier::Const
		|	EQualifier::Volatile
		|	EQualifier::RRef
		|	EQualifier::Noexcept
		>
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
	:	Function
		<	EQualifier::RRef
		|	EQualifier::Noexcept
		>
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
	:	Function
		<	EQualifier::Const
		|	EQualifier::RRef
		|	EQualifier::Noexcept
		>
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
	:	Function
		<	EQualifier::Volatile
		|	EQualifier::RRef
		|	EQualifier::Noexcept
		>
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
	:	Function
		<	EQualifier::Const
		|	EQualifier::Volatile
		|	EQualifier::RRef
		|	EQualifier::Noexcept
		>
	{};

	template
		<	typename
				t_tEntity
		>
	struct
		Type final
	:	Equal<t_tEntity>
	,	Composition<t_tEntity>
	{};
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
