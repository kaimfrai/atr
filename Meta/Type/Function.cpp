export module Meta.Type.Function;

export import Meta.Integer;
export import Meta.Type;
export import Meta.SelectByIndex;
export import Std;

export namespace
	Meta::Token
{
	enum class
		EFunctionFlag
	:	UInt<6>
	{	None = 0x0
	,	Const = 0x1
	,	Volatile = Const << 0x1
	,	LRef = Volatile << 0x1
	,	RRef = LRef << 0x1
	,	Noexcept = RRef << 0x1
	,	Variadic = Noexcept << 0x1
	};
}

namespace
	Meta::Token
{
	static auto constexpr
	(	operator |
	)	(	EFunctionFlag
				i_eLeft
		,	EFunctionFlag
				i_eRight
		)
	->	EFunctionFlag
	{	return
		static_cast<EFunctionFlag>
		(	static_cast<UInt<6>>(i_eLeft)
		bitor
			static_cast<UInt<6>>(i_eRight)
		);
	}

	using enum EFunctionFlag;
}

export namespace
	Meta::Token
{
	struct
		FunctionFlag
	{
		EFunctionFlag
			FlagMask
		=	None
		;

		auto constexpr
		(	HasFunctionFlag
		)	(	EFunctionFlag
					i_eFlag
			)	const
		->	bool
		{	return
				(	static_cast<UInt<6>>(FlagMask)
				bitand
					static_cast<UInt<6>>(i_eFlag)
				)
			==	static_cast<UInt<6>>(i_eFlag)
			;
		}

		auto constexpr
		(	IsNoexcept
		)	()	const
		->	bool
		{	return
			HasFunctionFlag
			(	Noexcept
			);
		}
	};

	template
		<	typename
				t_tResult
		>
	struct
		FunctionResult
	{
		static auto constexpr
		(	GetFunctionResult
		)	()
		->	TypeToken<t_tResult>
		{	return {};	}
	};

	template
		<	typename
			...	t_tpParameter
		>
	struct
		FunctionParameter
	{
		template
			<	Meta::USize
					t_nIndex
			>
		static auto constexpr
		(	GetFunctionParameter
		)	(	Meta::IndexToken
				<	t_nIndex
				>
			)
		->	::std::remove_pointer_t
			<	decltype
				(	SelectByIndex
					{	ZeroSequence<t_nIndex>
					}(	static_cast
						<	TypeToken<t_tpParameter>*
						>(	nullptr
						)
						...
					)
				)
			>
		{	return{};	}
	};

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	struct
		Function final
	:	FunctionFlag
	,	FunctionResult
		<	t_tResult
		>
	,	FunctionParameter
		<	t_tpParameter
			...
		>
	{};

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter...)
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return{};	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...)
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Variadic } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) const
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Const } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) volatile
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Volatile } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) const volatile
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Const | Volatile } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) const
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Const | Variadic } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) volatile
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Volatile | Variadic } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) const volatile
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Const | Volatile | Variadic } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) &
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { LRef } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) const &
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Const | LRef } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) volatile &
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Volatile | LRef } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) const volatile &
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Const | Volatile | LRef } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) &
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { LRef | Variadic } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) const &
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Const | LRef | Variadic } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) volatile &
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Volatile | LRef | Variadic } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) const volatile &
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Const | Volatile | LRef | Variadic } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) &&
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { RRef } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) const &&
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Const | RRef } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) volatile &&
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Volatile | RRef } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) const volatile &&
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Const | Volatile | RRef } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) &&
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { RRef | Variadic } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) const &&
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Const | RRef | Variadic } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) volatile &&
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Volatile | RRef | Variadic } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) const volatile &&
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Const | Volatile | RRef | Variadic } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) noexcept
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Noexcept } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) noexcept
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Noexcept | Variadic } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) const noexcept
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Const | Noexcept } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) volatile noexcept
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Volatile | Noexcept } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) const volatile noexcept
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Const | Volatile | Noexcept } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) const noexcept
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Const | Noexcept | Variadic } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) volatile noexcept
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Volatile | Noexcept | Variadic } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) const volatile noexcept
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Const | Volatile | Noexcept | Variadic } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) & noexcept
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { LRef | Noexcept } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) const & noexcept
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Const | LRef | Noexcept } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) volatile & noexcept
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Volatile | LRef | Noexcept } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) const volatile & noexcept
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Const | Volatile | LRef | Noexcept } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) & noexcept
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { LRef | Noexcept | Variadic } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) const & noexcept
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Const | LRef | Noexcept | Variadic } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) volatile & noexcept
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Volatile | LRef | Noexcept | Variadic } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) const volatile & noexcept
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Const | Volatile | LRef | Noexcept | Variadic } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) && noexcept
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { RRef | Noexcept } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) const && noexcept
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Const | RRef | Noexcept } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) volatile && noexcept
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Volatile | RRef | Noexcept } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter...) const volatile && noexcept
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Const | Volatile | RRef | Noexcept } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) && noexcept
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { RRef | Noexcept | Variadic } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) const && noexcept
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Const | RRef | Noexcept | Variadic } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) volatile && noexcept
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Volatile | RRef | Noexcept | Variadic } };	}

	template
		<	typename
				t_tResult
		,	typename
			...	t_tpParameter
		>
	auto constexpr
	(	Decompose
	)	(	TypeToken
			<	t_tResult(t_tpParameter..., ...) const volatile && noexcept
			>
		)
	->	Function<t_tResult, t_tpParameter...>
	{	return { { Const | Volatile | RRef | Noexcept | Variadic } };	}

	template
		<	typename
				t_tEntity
		>
	auto constexpr
	(	IsNoexcept
	)	(	TypeToken<t_tEntity>
				i_vType
		)
	->	bool
	{
		if	constexpr(::std::is_function_v<t_tEntity>)
			return
				Decompose(i_vType)
			.	IsNoexcept()
			;
		else
			return false;
	}
}
