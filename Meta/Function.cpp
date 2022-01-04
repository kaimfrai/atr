export module Meta.Function;

export import Meta.Type;

export namespace
	Meta
{
	struct
		NoexceptToken final
	{};

	auto constexpr inline
		Noexcept
	=	NoexceptToken
		{}
	;

	namespace
		Qualifier
	{
		template
			<	bool
					t_bValue
			>
		struct
			Function
		{
			auto constexpr
			(	operator()
			)	()	const
			{	return t_bValue;	}
		};

		template
			<	bool
					t_bValue
			>
		struct
			Const
		{
			auto constexpr
			(	operator()
			)	(	ConstToken
				)	const
			->	bool
			{	return t_bValue;	}
		};

		template
			<	bool
					t_bValue
			>
		struct
			Volatile
		{
			auto constexpr
			(	operator()
			)	(	VolatileToken
				)	const
			->	bool
			{	return t_bValue;	}
		};

		template
			<	bool
					t_bValue
			>
		struct
			LValueReference
		{
			auto constexpr
			(	operator()
			)	(	LValueReferenceToken
				)	const
			->	bool
			{	return t_bValue;	}
		};

		template
			<	bool
					t_bValue
			>
		struct
			RValueReference
		{
			auto constexpr
			(	operator()
			)	(	RValueReferenceToken
				)	const
			->	bool
			{	return t_bValue;	}
		};

		template
			<	bool
					t_bValue
			>
		struct
			Noexcept
		{
			auto constexpr
			(	operator()
			)	(	NoexceptToken
				)	const
			->	bool
			{	return t_bValue;	}
		};
	}

	template<typename>
	struct
		FunctionTypeToken final
	:	Qualifier::Function<false>
	,	Qualifier::Const<false>
	,	Qualifier::Volatile<false>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<false>
	{};

	template
		<	typename
				t_tFunction
		>
	auto constexpr inline
		FunctionType
	=	FunctionTypeToken
		<	t_tFunction
		>{}
	;

	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument...)> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<false>
	,	Qualifier::Volatile<false>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<false>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument..., ...)> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<false>
	,	Qualifier::Volatile<false>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<false>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument...) const> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<true>
	,	Qualifier::Volatile<false>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<false>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument...) volatile> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<false>
	,	Qualifier::Volatile<true>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<false>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument...) const volatile> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<true>
	,	Qualifier::Volatile<true>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<false>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument..., ...) const> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<true>
	,	Qualifier::Volatile<false>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<false>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument..., ...) volatile> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<false>
	,	Qualifier::Volatile<true>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<false>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument..., ...) const volatile> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<true>
	,	Qualifier::Volatile<true>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<false>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument...) &> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<false>
	,	Qualifier::Volatile<false>
	,	Qualifier::LValueReference<true>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<false>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument...) const &> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<true>
	,	Qualifier::Volatile<false>
	,	Qualifier::LValueReference<true>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<false>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument...) volatile &> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<false>
	,	Qualifier::Volatile<true>
	,	Qualifier::LValueReference<true>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<false>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument...) const volatile &> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<true>
	,	Qualifier::Volatile<true>
	,	Qualifier::LValueReference<true>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<false>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument..., ...) &> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<false>
	,	Qualifier::Volatile<false>
	,	Qualifier::LValueReference<true>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<false>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument..., ...) const &> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<true>
	,	Qualifier::Volatile<false>
	,	Qualifier::LValueReference<true>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<false>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument..., ...) volatile &> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<false>
	,	Qualifier::Volatile<true>
	,	Qualifier::LValueReference<true>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<false>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument..., ...) const volatile &> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<true>
	,	Qualifier::Volatile<true>
	,	Qualifier::LValueReference<true>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<false>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument...) &&> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<false>
	,	Qualifier::Volatile<false>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<true>
	,	Qualifier::Noexcept<false>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument...) const &&> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<true>
	,	Qualifier::Volatile<false>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<true>
	,	Qualifier::Noexcept<false>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument...) volatile &&> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<false>
	,	Qualifier::Volatile<true>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<true>
	,	Qualifier::Noexcept<false>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument...) const volatile &&> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<true>
	,	Qualifier::Volatile<true>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<true>
	,	Qualifier::Noexcept<false>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument..., ...) &&> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<false>
	,	Qualifier::Volatile<false>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<true>
	,	Qualifier::Noexcept<false>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument..., ...) const &&> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<true>
	,	Qualifier::Volatile<false>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<true>
	,	Qualifier::Noexcept<false>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument..., ...) volatile &&> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<false>
	,	Qualifier::Volatile<true>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<true>
	,	Qualifier::Noexcept<false>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument..., ...) const volatile &&> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<true>
	,	Qualifier::Volatile<true>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<true>
	,	Qualifier::Noexcept<false>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument...) noexcept> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<false>
	,	Qualifier::Volatile<false>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<true>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument..., ...) noexcept> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<false>
	,	Qualifier::Volatile<false>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<true>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument...) const noexcept> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<true>
	,	Qualifier::Volatile<false>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<true>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument...) volatile noexcept> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<false>
	,	Qualifier::Volatile<true>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<true>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument...) const volatile noexcept> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<true>
	,	Qualifier::Volatile<true>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<true>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument..., ...) const noexcept> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<true>
	,	Qualifier::Volatile<false>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<true>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument..., ...) volatile noexcept> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<false>
	,	Qualifier::Volatile<true>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<true>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument..., ...) const volatile noexcept> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<true>
	,	Qualifier::Volatile<true>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<true>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument...) & noexcept> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<false>
	,	Qualifier::Volatile<false>
	,	Qualifier::LValueReference<true>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<true>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument...) const & noexcept> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<true>
	,	Qualifier::Volatile<false>
	,	Qualifier::LValueReference<true>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<true>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument...) volatile & noexcept> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<false>
	,	Qualifier::Volatile<true>
	,	Qualifier::LValueReference<true>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<true>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument...) const volatile & noexcept> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<true>
	,	Qualifier::Volatile<true>
	,	Qualifier::LValueReference<true>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<true>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument..., ...) & noexcept> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<false>
	,	Qualifier::Volatile<false>
	,	Qualifier::LValueReference<true>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<true>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument..., ...) const & noexcept> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<true>
	,	Qualifier::Volatile<false>
	,	Qualifier::LValueReference<true>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<true>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument..., ...) volatile & noexcept> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<false>
	,	Qualifier::Volatile<true>
	,	Qualifier::LValueReference<true>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<true>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument..., ...) const volatile & noexcept> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<true>
	,	Qualifier::Volatile<true>
	,	Qualifier::LValueReference<true>
	,	Qualifier::RValueReference<false>
	,	Qualifier::Noexcept<true>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument...) && noexcept> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<false>
	,	Qualifier::Volatile<false>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<true>
	,	Qualifier::Noexcept<true>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument...) const && noexcept> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<true>
	,	Qualifier::Volatile<false>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<true>
	,	Qualifier::Noexcept<true>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument...) volatile && noexcept> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<false>
	,	Qualifier::Volatile<true>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<true>
	,	Qualifier::Noexcept<true>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument...) const volatile && noexcept> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<true>
	,	Qualifier::Volatile<true>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<true>
	,	Qualifier::Noexcept<true>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument..., ...) && noexcept> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<false>
	,	Qualifier::Volatile<false>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<true>
	,	Qualifier::Noexcept<true>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument..., ...) const && noexcept> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<true>
	,	Qualifier::Volatile<false>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<true>
	,	Qualifier::Noexcept<true>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument..., ...) volatile && noexcept> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<false>
	,	Qualifier::Volatile<true>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<true>
	,	Qualifier::Noexcept<true>
	{};
	template<typename t_tReturn, typename... t_tpArgument>
	struct FunctionTypeToken<t_tReturn(t_tpArgument..., ...) const volatile && noexcept> final
	:	Qualifier::Function<true>
	,	Qualifier::Const<true>
	,	Qualifier::Volatile<true>
	,	Qualifier::LValueReference<false>
	,	Qualifier::RValueReference<true>
	,	Qualifier::Noexcept<true>
	{};
}
